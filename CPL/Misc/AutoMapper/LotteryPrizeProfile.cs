﻿using AutoMapper;
using CPL.Domain;
using CPL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CPL.Misc.AutoMapper
{
    public class LotteryPrizeProfile : Profile
    {
        public LotteryPrizeProfile()
        {
            CreateMap<LotteryPrize, LotteryPrizeViewModel>();
            CreateMap<LotteryPrizeViewModel, LotteryPrize>();
        }
    }
}
