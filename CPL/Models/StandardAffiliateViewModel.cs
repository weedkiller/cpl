﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CPL.Models
{
    public class StandardAffiliateViewModel
    {
        public int Id { get; set; }
        public string AffiliateUrl { get; set; }

        public int TotalAffiliateSale { get; set; }
        public int TodayAffiliateSale { get; set; }
        public int YesterdayAffiliateSale { get; set; }

        public int TotalIntroducedUsers { get; set; }
        public int TotalIntroducedUsersToday { get; set; }
        public int TotalIntroducedUsersYesterday { get; set; }

        public bool IsTier2TabVisible { get; set; }
        public bool IsTier3TabVisible { get; set; }

        public string Tab { get; set; }
    }
}
