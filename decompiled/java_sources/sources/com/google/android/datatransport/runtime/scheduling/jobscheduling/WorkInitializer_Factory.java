package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class WorkInitializer_Factory implements Factory<WorkInitializer> {

    /* renamed from: a */
    public final Provider<Executor> f22106a;

    /* renamed from: b */
    public final Provider<EventStore> f22107b;

    /* renamed from: c */
    public final Provider<WorkScheduler> f22108c;

    /* renamed from: d */
    public final Provider<SynchronizationGuard> f22109d;

    public WorkInitializer_Factory(Provider<Executor> provider, Provider<EventStore> provider2, Provider<WorkScheduler> provider3, Provider<SynchronizationGuard> provider4) {
        this.f22106a = provider;
        this.f22107b = provider2;
        this.f22108c = provider3;
        this.f22109d = provider4;
    }

    public static WorkInitializer_Factory create(Provider<Executor> provider, Provider<EventStore> provider2, Provider<WorkScheduler> provider3, Provider<SynchronizationGuard> provider4) {
        return new WorkInitializer_Factory(provider, provider2, provider3, provider4);
    }

    public static WorkInitializer newInstance(Executor executor, EventStore eventStore, WorkScheduler workScheduler, SynchronizationGuard synchronizationGuard) {
        return new WorkInitializer(executor, eventStore, workScheduler, synchronizationGuard);
    }

    @Override // javax.inject.Provider
    public WorkInitializer get() {
        return newInstance(this.f22106a.get(), this.f22107b.get(), this.f22108c.get(), this.f22109d.get());
    }
}
