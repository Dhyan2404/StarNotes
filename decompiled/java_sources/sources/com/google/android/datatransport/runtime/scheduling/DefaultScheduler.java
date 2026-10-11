package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;

/* loaded from: classes4.dex */
public class DefaultScheduler implements Scheduler {

    /* renamed from: f */
    public static final Logger f22042f = Logger.getLogger(TransportRuntime.class.getName());

    /* renamed from: a */
    public final WorkScheduler f22043a;

    /* renamed from: b */
    public final Executor f22044b;

    /* renamed from: c */
    public final BackendRegistry f22045c;

    /* renamed from: d */
    public final EventStore f22046d;

    /* renamed from: e */
    public final SynchronizationGuard f22047e;

    @Inject
    public DefaultScheduler(Executor executor, BackendRegistry backendRegistry, WorkScheduler workScheduler, EventStore eventStore, SynchronizationGuard synchronizationGuard) {
        this.f22044b = executor;
        this.f22045c = backendRegistry;
        this.f22043a = workScheduler;
        this.f22046d = eventStore;
        this.f22047e = synchronizationGuard;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m17460c(TransportContext transportContext, EventInternal eventInternal) {
        this.f22046d.persist(transportContext, eventInternal);
        this.f22043a.schedule(transportContext, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m17461d(final TransportContext transportContext, TransportScheduleCallback transportScheduleCallback, EventInternal eventInternal) {
        try {
            TransportBackend transportBackend = this.f22045c.get(transportContext.getBackendName());
            if (transportBackend == null) {
                String format = String.format("Transport backend '%s' is not registered", transportContext.getBackendName());
                f22042f.warning(format);
                transportScheduleCallback.onSchedule(new IllegalArgumentException(format));
            } else {
                final EventInternal decorate = transportBackend.decorate(eventInternal);
                this.f22047e.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.g0f
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        Object m17460c;
                        m17460c = DefaultScheduler.this.m17460c(transportContext, decorate);
                        return m17460c;
                    }
                });
                transportScheduleCallback.onSchedule(null);
            }
        } catch (Exception e) {
            f22042f.warning("Error scheduling event " + e.getMessage());
            transportScheduleCallback.onSchedule(e);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.Scheduler
    public void schedule(final TransportContext transportContext, final EventInternal eventInternal, final TransportScheduleCallback transportScheduleCallback) {
        this.f22044b.execute(new Runnable() { // from class: com.sunia.HTREnginev2.h0f
            @Override // java.lang.Runnable
            public final void run() {
                DefaultScheduler.this.m17461d(transportContext, transportScheduleCallback, eventInternal);
            }
        });
    }
}
