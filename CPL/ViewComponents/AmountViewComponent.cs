﻿using AutoMapper;
using CPL.Common.Enums;
using CPL.Core.Interfaces;
using CPL.Misc.Utils;
using CPL.Models;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace CPL.ViewComponents
{
    public class AmountViewComponent : ViewComponent
    {
        private readonly ISysUserService _sysUserService;

        public AmountViewComponent(ISysUserService sysUserService)
        {
            this._sysUserService = sysUserService;
        }

        public IViewComponentResult Invoke(int? sysUserId)
        {
            int userId = sysUserId ?? HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser").Id;
            var user = _sysUserService.Queryable().FirstOrDefault(x => x.Id == userId);
            var viewModel = Mapper.Map<AmountViewModel>(user);
            return View(viewModel);
        }
    }
}
