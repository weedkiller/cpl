﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using CPL.Core.Interfaces;
using CPL.Infrastructure.Interfaces;
using CPL.Misc;
using CPL.Misc.Enums;
using CPL.Misc.Utils;
using CPL.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CPL.Controllers
{
    public class AuthenticationController : Controller
    {
        private readonly ILangService _langService;
        private readonly IMapper _mapper;
        private readonly ISysUserService _sysUserService;
        private readonly ITemplateService _templateService;
        private readonly ISettingService _settingService;
        private readonly IUnitOfWorkAsync _unitOfWork;

        public AuthenticationController(ILangService langService, IMapper mapper, ISettingService settingService,
        ISysUserService sysUserService, IUnitOfWorkAsync unitOfWork, ITemplateService templateService)
        {
            _langService = langService;
            _mapper = mapper;
            _sysUserService = sysUserService;
            _settingService = settingService;
            _templateService = templateService;
            _unitOfWork = unitOfWork;
        }

        public IActionResult Login(string returnUrl)
        {
            EnsureLoggedOut();
            var viewModel = new AccountLoginModel { ReturnUrl = returnUrl };
            viewModel.Langs = _langService.Queryable()
                .Select(x => Mapper.Map<LangViewModel>(x))
                .ToList();

            if (HttpContext.Session.GetInt32("LangId").HasValue)
                viewModel.Lang = viewModel.Langs.FirstOrDefault(x => x.Id == HttpContext.Session.GetInt32("LangId").Value);
            else
                viewModel.Lang = viewModel.Langs.FirstOrDefault(x => x.Id == (int)EnumLang.ENGLISH);

            return View(viewModel);
        }

        [HttpPost]
        public IActionResult Login(AccountLoginModel viewModel)
        {
            if (ModelState.IsValid)
            {
                var user = _sysUserService.Queryable()
                                .FirstOrDefault(x => x.Email == viewModel.Email && x.IsDeleted == false);

                if (user != null && BCrypt.Net.BCrypt.Verify(viewModel.Password, user.Password))
                {
                    if (!string.IsNullOrEmpty(user.ActivateToken))
                        return new JsonResult(new { success = false, message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "EmailInactivatingAccount") });
                    else
                    {
                        HttpContext.Session.SetObjectAsJson("CurrentUser", Mapper.Map<SysUserViewModel>(user));
                        return RedirectToLocal($"{HttpContext.Request.Scheme}://{HttpContext.Request.Host}{Url.Action("Index", "Dashboard")}");
                    }
                }
                return new JsonResult(new { success = false, message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "InvalidEmailPassword") });
            }
            return new JsonResult(new { success = false, message = LangDetailHelper.Get(HttpContext.Session.GetInt32("LangId").Value, "ErrorOccurs") });
        }


        public IActionResult LogOut()
        {
            // Keep language setting
            var langId = (int)EnumLang.ENGLISH;
            if (HttpContext.Session.GetInt32("LangId").HasValue)
                langId = HttpContext.Session.GetInt32("LangId").Value;

            // Clear session
            HttpContext.Session.Clear();

            // Reset language setting
            HttpContext.Session.SetInt32("LangId", langId);

            return RedirectToAction("Index", "Home");
        }

        private IActionResult RedirectToLocal(string returnUrl = "")
        {
            if (!string.IsNullOrWhiteSpace(returnUrl))
                return new JsonResult(new
                {
                    success = true,
                    url = returnUrl
                });

            return new JsonResult(new
            {
                success = true,
                url = $"{HttpContext.Request.Scheme}://{HttpContext.Request.Host}{Url.Action("LogIn", "Authentication")}"
            });
        }

        private void EnsureLoggedOut()
        {
            // If the request is (still) marked as authenticated we send the user to the logout action
            LogOut();
        }
    }
}