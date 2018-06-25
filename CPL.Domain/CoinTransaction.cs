﻿using CPL.Common.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace CPL.Domain
{
    public class CoinTransaction : Entity
    {
        public int Id { get; set; }
        public int SysUserId { get; set; }
        public string FromWalletAddress { get; set; }
        public string ToWalletAddress { get; set; }
        public decimal CoinAmount { get; set; }
        public DateTime CreatedDate { get; set; }
        public int CurrencyId { get; set; }
        public string Status { get; set; }
        public decimal? TokenAmount { get; set; }
        public float? Rate { get; set; }

        public virtual SysUser SysUser { get; set; }
        public virtual Currency Currency { get; set; }
    }
}
