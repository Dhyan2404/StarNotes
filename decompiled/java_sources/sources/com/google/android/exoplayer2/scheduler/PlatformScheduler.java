package com.google.android.exoplayer2.scheduler;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

@RequiresApi(21)
/* loaded from: classes5.dex */
public final class PlatformScheduler implements Scheduler {

    /* renamed from: d */
    public static final String f25121d = "PlatformScheduler";

    /* renamed from: e */
    public static final String f25122e = "service_action";

    /* renamed from: f */
    public static final String f25123f = "service_package";

    /* renamed from: g */
    public static final String f25124g = "requirements";

    /* renamed from: h */
    public static final int f25125h;

    /* renamed from: a */
    public final int f25126a;

    /* renamed from: b */
    public final ComponentName f25127b;

    /* renamed from: c */
    public final JobScheduler f25128c;

    /* loaded from: classes5.dex */
    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements == 0) {
                String str = (String) Assertions.checkNotNull(extras.getString(PlatformScheduler.f25122e));
                Util.startForegroundService(this, new Intent(str).setPackage((String) Assertions.checkNotNull(extras.getString(PlatformScheduler.f25123f))));
                return false;
            }
            StringBuilder sb = new StringBuilder(33);
            sb.append("Requirements not met: ");
            sb.append(notMetRequirements);
            Log.m21493w(PlatformScheduler.f25121d, sb.toString());
            jobFinished(jobParameters, true);
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    static {
        f25125h = (Util.SDK_INT >= 26 ? 16 : 0) | 15;
    }

    @RequiresPermission("android.permission.RECEIVE_BOOT_COMPLETED")
    public PlatformScheduler(Context context, int i) {
        Context applicationContext = context.getApplicationContext();
        this.f25126a = i;
        this.f25127b = new ComponentName(applicationContext, (Class<?>) PlatformSchedulerService.class);
        this.f25128c = (JobScheduler) Assertions.checkNotNull((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }

    /* renamed from: a */
    public static JobInfo m19574a(int i, ComponentName componentName, Requirements requirements, String str, String str2) {
        Requirements filterRequirements = requirements.filterRequirements(f25125h);
        if (!filterRequirements.equals(requirements)) {
            int requirements2 = filterRequirements.getRequirements() ^ requirements.getRequirements();
            StringBuilder sb = new StringBuilder(46);
            sb.append("Ignoring unsupported requirements: ");
            sb.append(requirements2);
            Log.m21493w(f25121d, sb.toString());
        }
        JobInfo.Builder builder = new JobInfo.Builder(i, componentName);
        if (requirements.isUnmeteredNetworkRequired()) {
            builder.setRequiredNetworkType(2);
        } else if (requirements.isNetworkRequired()) {
            builder.setRequiredNetworkType(1);
        }
        builder.setRequiresDeviceIdle(requirements.isIdleRequired());
        builder.setRequiresCharging(requirements.isChargingRequired());
        if (Util.SDK_INT >= 26 && requirements.isStorageNotLowRequired()) {
            builder.setRequiresStorageNotLow(true);
        }
        builder.setPersisted(true);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(f25122e, str);
        persistableBundle.putString(f25123f, str2);
        persistableBundle.putInt("requirements", requirements.getRequirements());
        builder.setExtras(persistableBundle);
        return builder.build();
    }

    @Override // com.google.android.exoplayer2.scheduler.Scheduler
    public boolean cancel() {
        this.f25128c.cancel(this.f25126a);
        return true;
    }

    @Override // com.google.android.exoplayer2.scheduler.Scheduler
    public Requirements getSupportedRequirements(Requirements requirements) {
        return requirements.filterRequirements(f25125h);
    }

    @Override // com.google.android.exoplayer2.scheduler.Scheduler
    public boolean schedule(Requirements requirements, String str, String str2) {
        return this.f25128c.schedule(m19574a(this.f25126a, this.f25127b, requirements, str2, str)) == 1;
    }
}
