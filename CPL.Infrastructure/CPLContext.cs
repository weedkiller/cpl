﻿using CPL.Domain;
using CPL.Infrastructure.Repositories;
using CPL.Mapping;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace CPL.Infrastructure
{
    public class CPLContext : DataContext
    {
        public CPLContext(DbContextOptions<CPLContext> options)
            : base(options)
        {
        }

        public DbSet<SysUser> SysUser { get; set; }
        public DbSet<Setting> Setting { get; set; }
        public DbSet<Lang> Lang { get; set; }
        public DbSet<LangDetail> LangDetail { get; set; }
        public DbSet<Template> Template { get; set; }
        public DbSet<Currency> Currency { get; set; }
        public DbSet<LangMsgDetail> LangMsgDetail { get; set; }
        public DbSet<Team> Team { get; set; }
        public DbSet<Notification> Notification { get; set; }
        public DbSet<CoinTransaction> CoinTransaction { get; set; }
        public DbSet<Game> Game { get; set; }
        public DbSet<GameHistory> GameHistory { get; set; }
        public DbSet<Rate> Rate { get; set; }
        public DbSet<PricePrediction> PricePrediction { get; set; }
        public DbSet<PricePredictionHistory> PricePredictionHistory { get; set; }
        public DbSet<Lottery> Lottery { get; set; }
        public DbSet<LotteryHistory> LotteryHistory { get; set; }
        public DbSet<LotteryPrize> LotteryPrize { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new SysUserMap());
            modelBuilder.ApplyConfiguration(new SettingMap());
            modelBuilder.ApplyConfiguration(new LangMap());
            modelBuilder.ApplyConfiguration(new LangDetailMap());
            modelBuilder.ApplyConfiguration(new TemplateMap());
            modelBuilder.ApplyConfiguration(new CurrencyMap());
            modelBuilder.ApplyConfiguration(new LangMsgDetailMap());
            modelBuilder.ApplyConfiguration(new TeamMap());
            modelBuilder.ApplyConfiguration(new NotificationMap());

            modelBuilder.ApplyConfiguration(new CoinTransactionMap());
            modelBuilder.ApplyConfiguration(new GameMap());
            modelBuilder.ApplyConfiguration(new GameHistoryMap());
            modelBuilder.ApplyConfiguration(new RateMap());

            modelBuilder.ApplyConfiguration(new PricePredictionMap());
            modelBuilder.ApplyConfiguration(new PricePredictionHistoryMap());

            modelBuilder.ApplyConfiguration(new LotteryMap());
            modelBuilder.ApplyConfiguration(new LotteryPrizeMap());
            modelBuilder.ApplyConfiguration(new LotteryHistoryMap());

            base.OnModelCreating(modelBuilder);
        }
    }
}
