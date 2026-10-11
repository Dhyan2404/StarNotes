package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import com.sunia.HTREnginev2.r6n;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@RequiresApi(23)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class SystemJobService extends JobService implements ExecutionListener {

    /* renamed from: i */
    public static final String f11677i = Logger.tagWithPrefix("SystemJobService");

    /* renamed from: e */
    public WorkManagerImpl f11678e;

    /* renamed from: f */
    public final Map<WorkGenerationalId, JobParameters> f11679f = new HashMap();

    /* renamed from: g */
    public final StartStopTokens f11680g = new StartStopTokens();

    /* renamed from: h */
    public WorkLauncher f11681h;

    @RequiresApi(24)
    /* renamed from: androidx.work.impl.background.systemjob.SystemJobService$a */
    /* loaded from: classes3.dex */
    public static class C1605a {
        @DoNotInline
        /* renamed from: a */
        public static String[] m7076a(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }

        @DoNotInline
        /* renamed from: b */
        public static Uri[] m7077b(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.work.impl.background.systemjob.SystemJobService$b */
    /* loaded from: classes3.dex */
    public static class C1606b {
        @DoNotInline
        /* renamed from: a */
        public static Network m7078a(JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.work.impl.background.systemjob.SystemJobService$c */
    /* loaded from: classes3.dex */
    public static class C1607c {
        @DoNotInline
        /* renamed from: a */
        public static int m7079a(JobParameters jobParameters) {
            return SystemJobService.m7074a(jobParameters.getStopReason());
        }
    }

    /* renamed from: a */
    public static int m7074a(int jobReason) {
        switch (jobReason) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return jobReason;
            default:
                return WorkInfo.STOP_REASON_UNKNOWN;
        }
    }

    @Nullable
    /* renamed from: b */
    public static WorkGenerationalId m7075b(@NonNull JobParameters parameters) {
        try {
            PersistableBundle extras = parameters.getExtras();
            if (extras == null || !extras.containsKey(r6n.f82825d)) {
                return null;
            }
            return new WorkGenerationalId(extras.getString(r6n.f82825d), extras.getInt(r6n.f82827f));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
            this.f11678e = workManagerImpl;
            Processor processor = workManagerImpl.getProcessor();
            this.f11681h = new WorkLauncherImpl(processor, this.f11678e.getWorkTaskExecutor());
            processor.addExecutionListener(this);
        } catch (IllegalStateException e) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
            }
            Logger.get().warning(f11677i, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.f11678e;
        if (workManagerImpl != null) {
            workManagerImpl.getProcessor().removeExecutionListener(this);
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public void onExecuted(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        JobParameters remove;
        Logger.get().debug(f11677i, id.getWorkSpecId() + " executed on JobScheduler");
        synchronized (this.f11679f) {
            remove = this.f11679f.remove(id);
        }
        this.f11680g.remove(id);
        if (remove != null) {
            jobFinished(remove, needsReschedule);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(@NonNull JobParameters params) {
        if (this.f11678e == null) {
            Logger.get().debug(f11677i, "WorkManager is not initialized; requesting retry.");
            jobFinished(params, true);
            return false;
        }
        WorkGenerationalId m7075b = m7075b(params);
        if (m7075b == null) {
            Logger.get().error(f11677i, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.f11679f) {
            if (this.f11679f.containsKey(m7075b)) {
                Logger.get().debug(f11677i, "Job is already being executed by SystemJobService: " + m7075b);
                return false;
            }
            Logger.get().debug(f11677i, "onStartJob for " + m7075b);
            this.f11679f.put(m7075b, params);
            WorkerParameters.RuntimeExtras runtimeExtras = new WorkerParameters.RuntimeExtras();
            if (C1605a.m7077b(params) != null) {
                runtimeExtras.triggeredContentUris = Arrays.asList(C1605a.m7077b(params));
            }
            if (C1605a.m7076a(params) != null) {
                runtimeExtras.triggeredContentAuthorities = Arrays.asList(C1605a.m7076a(params));
            }
            runtimeExtras.network = C1606b.m7078a(params);
            this.f11681h.startWork(this.f11680g.tokenFor(m7075b), runtimeExtras);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@NonNull JobParameters params) {
        if (this.f11678e == null) {
            Logger.get().debug(f11677i, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        WorkGenerationalId m7075b = m7075b(params);
        if (m7075b == null) {
            Logger.get().error(f11677i, "WorkSpec id not found!");
            return false;
        }
        Logger.get().debug(f11677i, "onStopJob for " + m7075b);
        synchronized (this.f11679f) {
            this.f11679f.remove(m7075b);
        }
        StartStopToken remove = this.f11680g.remove(m7075b);
        if (remove != null) {
            this.f11681h.stopWorkWithReason(remove, Build.VERSION.SDK_INT >= 31 ? C1607c.m7079a(params) : WorkInfo.STOP_REASON_UNKNOWN);
        }
        return !this.f11678e.getProcessor().isCancelled(m7075b.getWorkSpecId());
    }
}
