package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.BackoffPolicy;
import androidx.work.Clock;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.WorkSpec;
import java.util.Iterator;

@RequiresApi(api = 23)
@SuppressLint({"ClassVerificationFailure"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class r6n {

    /* renamed from: c */
    public static final String f82824c = Logger.tagWithPrefix("SystemJobInfoConverter");

    /* renamed from: d */
    public static final String f82825d = "EXTRA_WORK_SPEC_ID";

    /* renamed from: e */
    public static final String f82826e = "EXTRA_IS_PERIODIC";

    /* renamed from: f */
    public static final String f82827f = "EXTRA_WORK_SPEC_GENERATION";

    /* renamed from: a */
    public final ComponentName f82828a;

    /* renamed from: b */
    public final Clock f82829b;

    /* renamed from: com.sunia.HTREnginev2.r6n$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C14337a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f82830a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            f82830a = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f82830a[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f82830a[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f82830a[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f82830a[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public r6n(@NonNull Context context, Clock clock) {
        this.f82829b = clock;
        this.f82828a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }

    @RequiresApi(24)
    /* renamed from: b */
    public static JobInfo.TriggerContentUri m56924b(Constraints.ContentUriTrigger contentUriTrigger) {
        return new JobInfo.TriggerContentUri(contentUriTrigger.getUri(), contentUriTrigger.getIsTriggeredForDescendants() ? 1 : 0);
    }

    /* renamed from: c */
    public static int m56925c(NetworkType networkType) {
        int i = C14337a.f82830a[networkType.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 4;
        }
        Logger.get().debug(f82824c, "API version too low. Cannot convert network type value " + networkType);
        return 1;
    }

    /* renamed from: d */
    public static void m56926d(@NonNull JobInfo.Builder builder, @NonNull NetworkType networkType) {
        if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetworkType(m56925c(networkType));
        } else {
            builder.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
    }

    /* renamed from: a */
    public JobInfo m56927a(WorkSpec workSpec, int jobId) {
        Constraints constraints = workSpec.constraints;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(f82825d, workSpec.id);
        persistableBundle.putInt(f82827f, workSpec.getGeneration());
        persistableBundle.putBoolean(f82826e, workSpec.isPeriodic());
        JobInfo.Builder extras = new JobInfo.Builder(jobId, this.f82828a).setRequiresCharging(constraints.getRequiresCharging()).setRequiresDeviceIdle(constraints.getRequiresDeviceIdle()).setExtras(persistableBundle);
        m56926d(extras, constraints.getRequiredNetworkType());
        if (!constraints.getRequiresDeviceIdle()) {
            extras.setBackoffCriteria(workSpec.backoffDelayDuration, workSpec.backoffPolicy == BackoffPolicy.LINEAR ? 0 : 1);
        }
        long max = Math.max(workSpec.calculateNextRunTime() - this.f82829b.currentTimeMillis(), 0L);
        if (max > 0) {
            extras.setMinimumLatency(max);
        } else if (!workSpec.expedited) {
            extras.setImportantWhileForeground(true);
        }
        if (constraints.hasContentUriTriggers()) {
            Iterator<Constraints.ContentUriTrigger> it2 = constraints.getContentUriTriggers().iterator();
            while (it2.hasNext()) {
                extras.addTriggerContentUri(m56924b(it2.next()));
            }
            extras.setTriggerContentUpdateDelay(constraints.getContentTriggerUpdateDelayMillis());
            extras.setTriggerContentMaxDelay(constraints.getContentTriggerMaxDelayMillis());
        }
        extras.setPersisted(false);
        int i = Build.VERSION.SDK_INT;
        extras.setRequiresBatteryNotLow(constraints.getRequiresBatteryNotLow());
        extras.setRequiresStorageNotLow(constraints.getRequiresStorageNotLow());
        boolean z = workSpec.runAttemptCount > 0;
        boolean z2 = max > 0;
        if (i >= 31 && workSpec.expedited && !z && !z2) {
            extras.setExpedited(true);
        }
        return extras.build();
    }
}
