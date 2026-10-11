package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.Iterator;
import java.util.concurrent.Executor;
import javax.inject.Inject;

/* loaded from: classes4.dex */
public class WorkInitializer {

    /* renamed from: a */
    public final Executor f22102a;

    /* renamed from: b */
    public final EventStore f22103b;

    /* renamed from: c */
    public final WorkScheduler f22104c;

    /* renamed from: d */
    public final SynchronizationGuard f22105d;

    @Inject
    public WorkInitializer(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        this.f22102a = executor;
        this.f22103b = eventStore;
        this.f22104c = workScheduler;
        this.f22105d = synchronizationGuard;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public /* synthetic */ Object m17502c() {
        Iterator<TransportContext> it2 = this.f22103b.loadActiveContexts().iterator();
        while (it2.hasNext()) {
            this.f22104c.schedule(it2.next(), 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ void m17503d() {
        this.f22105d.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.sunia.HTREnginev2.jao
            @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
            public final Object execute() {
                Object m17502c;
                m17502c = WorkInitializer.this.m17502c();
                return m17502c;
            }
        });
    }

    public void ensureContextsScheduled() {
        this.f22102a.execute(new Runnable() { // from class: com.sunia.HTREnginev2.kao
            @Override // java.lang.Runnable
            public final void run() {
                WorkInitializer.this.m17503d();
            }
        });
    }
}
