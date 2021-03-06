﻿using CPL.Core.Interfaces;
using CPL.Misc.Enums;
using CPL.Misc.Utils;
using CPL.Models;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CPL.Misc
{
    public interface IAuthorizePermission
    {
        PermissionStatus IsLoggedIn(ActionExecutingContext context);
        PermissionStatus IsACL(ActionExecutingContext context, EnumEntity? entity, EnumAction? action);
    }

    public class BaseAuthorizePermission : IAuthorizePermission
    {
        public virtual PermissionStatus IsLoggedIn(ActionExecutingContext context)
        {
            if (context.HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser") == null)
                return new PermissionStatus { Code = PermissionStatus.UnLoggedInCode, Text = PermissionStatus.UnLoggedInText, Url = PermissionStatus.UnLoggedInUrl };
            else
                return new PermissionStatus { Code = PermissionStatus.OkCode, Text = PermissionStatus.OkText };
        }

        public virtual PermissionStatus IsACL(ActionExecutingContext context, EnumEntity? entity, EnumAction? action)
        {
            throw new NotImplementedException();
        }
    }

    public class GuestAuthorizePermission : BaseAuthorizePermission, IAuthorizePermission
    {
        public override PermissionStatus IsLoggedIn(ActionExecutingContext context)
        {
            return new PermissionStatus { Code = PermissionStatus.OkCode, Text = PermissionStatus.OkText };
        }

        public override PermissionStatus IsACL(ActionExecutingContext context, EnumEntity? entity, EnumAction? action)
        {
            if (entity.HasValue && (entity.Value == EnumEntity.CoinTransaction || entity.Value == EnumEntity.LotteryHistory || entity.Value == EnumEntity.SysUser || entity.Value == EnumEntity.PricePredictionHistory))
                return new PermissionStatus { Code = PermissionStatus.UnLoggedInCode, Text = PermissionStatus.UnLoggedInText, Url = PermissionStatus.UnLoggedInUrl };
            else
                return new PermissionStatus { Code = PermissionStatus.OkCode, Text = PermissionStatus.OkText };
        }
    }

    public class AdminAuthorizePermission : BaseAuthorizePermission, IAuthorizePermission
    {
        public override PermissionStatus IsACL(ActionExecutingContext context, EnumEntity? entity, EnumAction? action)
        {
            var currentUser = context.HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser");
            if (!currentUser.IsAdmin)
                return new PermissionStatus { Code = PermissionStatus.UnAuthorizedCode, Text = PermissionStatus.UnAuthorizedText, Url = PermissionStatus.UnAuthorizedUrl };

            if (entity.HasValue && entity.Value == EnumEntity.SysUser)
            {
                if (action.HasValue && action.Value == EnumAction.Delete)
                {
                    var sysUserService = (ISysUserService)context.HttpContext.RequestServices.GetService(typeof(ISysUserService));

                    var beingDeletedUser = sysUserService.Queryable().FirstOrDefault(x => x.Id == int.Parse(context.ActionArguments["id"].ToString()));

                    if (beingDeletedUser == null || beingDeletedUser.IsAdmin)
                        return new PermissionStatus { Code = PermissionStatus.UnAuthorizedCode, Text = PermissionStatus.UnAuthorizedText, Url = PermissionStatus.UnAuthorizedUrl };
                }
            }
            return new PermissionStatus { Code = PermissionStatus.OkCode, Text = PermissionStatus.OkText };
        }
    }

    public class UserAuthorizePermission : BaseAuthorizePermission, IAuthorizePermission
    {
        public override PermissionStatus IsACL(ActionExecutingContext context, EnumEntity? entity, EnumAction? action)
        {
            if (entity.HasValue && entity.Value == EnumEntity.CoinTransaction && action == EnumAction.Read)
            {
                var sysUserService = (ISysUserService)context.HttpContext.RequestServices.GetService(typeof(ISysUserService));
                var transactionHistoryService = (ICoinTransactionService)context.HttpContext.RequestServices.GetService(typeof(ICoinTransactionService));

                var currentUser = context.HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser");
                if (context.RouteData.Values["id"] != null)
                {
                    var currentUserTransactionIdList = transactionHistoryService.Queryable().Where(x => x.SysUserId == currentUser.Id).Select(x => x.Id).ToList();
                    var currentTransactionId = context.RouteData.Values["id"].ToString();
                    if (!currentUser.IsAdmin && !currentUserTransactionIdList.Contains(int.Parse(currentTransactionId)))
                        return new PermissionStatus { Code = PermissionStatus.UnAuthorizedCode, Text = PermissionStatus.UnAuthorizedText, Url = PermissionStatus.UnAuthorizedUrl };
                }
                else if (!string.IsNullOrEmpty(context.HttpContext.Request.Query["sysUserId"]))
                {
                    if (!currentUser.IsAdmin && currentUser.Id != int.Parse(context.HttpContext.Request.Query["sysUserId"]))
                        return new PermissionStatus { Code = PermissionStatus.UnAuthorizedCode, Text = PermissionStatus.UnAuthorizedText, Url = PermissionStatus.UnAuthorizedUrl };
                }
                return new PermissionStatus { Code = PermissionStatus.OkCode, Text = PermissionStatus.OkText };
            }
            else if (entity.HasValue && entity.Value == EnumEntity.LotteryHistory && action == EnumAction.Read)
            {
                var sysUserService = (ISysUserService)context.HttpContext.RequestServices.GetService(typeof(ISysUserService));

                var currentUser = context.HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser");
                if (!string.IsNullOrEmpty(context.HttpContext.Request.Query["sysUserId"]) && !currentUser.IsAdmin && currentUser.Id != int.Parse(context.HttpContext.Request.Query["sysUserId"].ToString()))
                    return new PermissionStatus { Code = PermissionStatus.UnAuthorizedCode, Text = PermissionStatus.UnAuthorizedText, Url = PermissionStatus.UnAuthorizedUrl };
            }
            else if (entity.HasValue && entity.Value == EnumEntity.PricePredictionHistory && action == EnumAction.Read)
            {
                var sysUserService = (ISysUserService)context.HttpContext.RequestServices.GetService(typeof(ISysUserService));

                var currentUser = context.HttpContext.Session.GetObjectFromJson<SysUserViewModel>("CurrentUser");
                if (!string.IsNullOrEmpty(context.HttpContext.Request.Query["sysUserId"]) && !currentUser.IsAdmin && currentUser.Id != int.Parse(context.HttpContext.Request.Query["sysUserId"].ToString()))
                    return new PermissionStatus { Code = PermissionStatus.UnAuthorizedCode, Text = PermissionStatus.UnAuthorizedText, Url = PermissionStatus.UnAuthorizedUrl };
            }
            return new PermissionStatus { Code = PermissionStatus.OkCode, Text = PermissionStatus.OkText };
        }
    }
}
