package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.util.PriorityMapping;

/* loaded from: classes4.dex */
public class AlarmManagerScheduler implements WorkScheduler {

    /* renamed from: f */
    public static final String f22058f = "AlarmManagerScheduler";

    /* renamed from: g */
    public static final String f22059g = "attemptNumber";

    /* renamed from: h */
    public static final String f22060h = "backendName";

    /* renamed from: i */
    public static final String f22061i = "priority";

    /* renamed from: j */
    public static final String f22062j = "extras";

    /* renamed from: a */
    public final Context f22063a;

    /* renamed from: b */
    public final EventStore f22064b;

    /* renamed from: c */
    public AlarmManager f22065c;

    /* renamed from: d */
    public final SchedulerConfig f22066d;

    /* renamed from: e */
    public final Clock f22067e;

    public AlarmManagerScheduler(Context context, EventStore eventStore, Clock clock, SchedulerConfig schedulerConfig) {
        this(context, eventStore, (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM), clock, schedulerConfig);
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m17465a(Intent intent) {
        return PendingIntent.getBroadcast(this.f22063a, 0, intent, 603979776) != null;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public void schedule(TransportContext transportContext, int i) {
        schedule(transportContext, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    public void schedule(TransportContext transportContext, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", transportContext.getBackendName());
        builder.appendQueryParameter("priority", String.valueOf(PriorityMapping.toInt(transportContext.getPriority())));
        if (transportContext.getExtras() != null) {
            builder.appendQueryParameter("extras", Base64.encodeToString(transportContext.getExtras(), 0));
        }
        Intent intent = new Intent(this.f22063a, (Class<?>) AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z && m17465a(intent)) {
            Logging.m17452d(f22058f, "Upload for context %s is already scheduled. Returning...", transportContext);
            return;
        }
        long nextCallTime = this.f22064b.getNextCallTime(transportContext);
        long scheduleDelay = this.f22066d.getScheduleDelay(transportContext.getPriority(), nextCallTime, i);
        Logging.m17454d(f22058f, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", transportContext, Long.valueOf(scheduleDelay), Long.valueOf(nextCallTime), Integer.valueOf(i));
        this.f22065c.set(3, this.f22067e.getTime() + scheduleDelay, PendingIntent.getBroadcast(this.f22063a, 0, intent, 67108864));
    }

    @VisibleForTesting
    public AlarmManagerScheduler(Context context, EventStore eventStore, AlarmManager alarmManager, Clock clock, SchedulerConfig schedulerConfig) {
        this.f22063a = context;
        this.f22064b = eventStore;
        this.f22065c = alarmManager;
        this.f22067e = clock;
        this.f22066d = schedulerConfig;
    }
}
