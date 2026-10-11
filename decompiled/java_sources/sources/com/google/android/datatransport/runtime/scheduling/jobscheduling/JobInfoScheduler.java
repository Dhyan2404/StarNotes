package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

@RequiresApi(api = 21)
/* loaded from: classes4.dex */
public class JobInfoScheduler implements WorkScheduler {

    /* renamed from: d */
    public static final String f22068d = "JobInfoScheduler";

    /* renamed from: e */
    public static final String f22069e = "attemptNumber";

    /* renamed from: f */
    public static final String f22070f = "backendName";

    /* renamed from: g */
    public static final String f22071g = "priority";

    /* renamed from: h */
    public static final String f22072h = "extras";

    /* renamed from: a */
    public final Context f22073a;

    /* renamed from: b */
    public final EventStore f22074b;

    /* renamed from: c */
    public final SchedulerConfig f22075c;

    public JobInfoScheduler(Context context, EventStore eventStore, SchedulerConfig schedulerConfig) {
        this.f22073a = context;
        this.f22074b = eventStore;
        this.f22075c = schedulerConfig;
    }

    @VisibleForTesting
    /* renamed from: a */
    public int m17468a(TransportContext transportContext) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f22073a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(transportContext.getBackendName().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(PriorityMapping.toInt(transportContext.getPriority())).array());
        if (transportContext.getExtras() != null) {
            adler32.update(transportContext.getExtras());
        }
        return (int) adler32.getValue();
    }

    /* renamed from: b */
    public final boolean m17469b(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                return i3 >= i2;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public void schedule(TransportContext transportContext, int i) {
        schedule(transportContext, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public void schedule(TransportContext transportContext, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.f22073a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f22073a.getSystemService("jobscheduler");
        int m17468a = m17468a(transportContext);
        if (!z && m17469b(jobScheduler, m17468a, i)) {
            Logging.m17452d(f22068d, "Upload for context %s is already scheduled. Returning...", transportContext);
            return;
        }
        long nextCallTime = this.f22074b.getNextCallTime(transportContext);
        JobInfo.Builder configureJob = this.f22075c.configureJob(new JobInfo.Builder(m17468a, componentName), transportContext.getPriority(), nextCallTime, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", transportContext.getBackendName());
        persistableBundle.putInt("priority", PriorityMapping.toInt(transportContext.getPriority()));
        if (transportContext.getExtras() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(transportContext.getExtras(), 0));
        }
        configureJob.setExtras(persistableBundle);
        Logging.m17454d(f22068d, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", transportContext, Integer.valueOf(m17468a), Long.valueOf(this.f22075c.getScheduleDelay(transportContext.getPriority(), nextCallTime, i)), Long.valueOf(nextCallTime), Integer.valueOf(i));
        jobScheduler.schedule(configureJob.build());
    }
}
