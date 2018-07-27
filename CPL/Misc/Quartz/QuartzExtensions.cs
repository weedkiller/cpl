﻿using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection.Extensions;
using Quartz;
using Quartz.Impl;
using Quartz.Spi;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Threading.Tasks;

namespace CPL.Misc.Quartz
{
    public static class QuartzExtensions
    {
        public static void UseQuartz(this IServiceCollection services, params Type[] jobs)
        {
            services.AddSingleton<IJobFactory, QuartzJobFactory>();
            services.Add(jobs.Select(jobType => new ServiceDescriptor(jobType, jobType, ServiceLifetime.Singleton)));

            services.AddSingleton(provider =>
            {
                var schedulerFactory = new StdSchedulerFactory();
                var scheduler = schedulerFactory.GetScheduler().Result;

                scheduler.JobFactory = provider.GetService<IJobFactory>();

                scheduler.Start();
                return scheduler;
            });
        }

        public static void StartJob<TJob>(IScheduler scheduler, DateTime dateTime)
        where TJob : IJob
        {
            var jobName = typeof(TJob).FullName;

            var job = JobBuilder.Create<TJob>()
                .WithIdentity(jobName)
                .Build();

            var trigger = TriggerBuilder.Create()
                .WithIdentity($"{jobName}.trigger")
                .StartNow()
                .WithSchedule(BuildCronSchedule(dateTime))
                .Build();

            scheduler.ScheduleJob(job, trigger);
        }

        private static CronScheduleBuilder BuildCronSchedule(DateTime dateTime)
        {
            return CronScheduleBuilder.DailyAtHourAndMinute(dateTime.Hour, dateTime.Minute);
        }
    }
}