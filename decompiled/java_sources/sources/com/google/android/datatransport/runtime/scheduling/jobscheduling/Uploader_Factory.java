package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class Uploader_Factory implements Factory<Uploader> {

    /* renamed from: a */
    public final Provider<Context> f22093a;

    /* renamed from: b */
    public final Provider<BackendRegistry> f22094b;

    /* renamed from: c */
    public final Provider<EventStore> f22095c;

    /* renamed from: d */
    public final Provider<WorkScheduler> f22096d;

    /* renamed from: e */
    public final Provider<Executor> f22097e;

    /* renamed from: f */
    public final Provider<SynchronizationGuard> f22098f;

    /* renamed from: g */
    public final Provider<Clock> f22099g;

    /* renamed from: h */
    public final Provider<Clock> f22100h;

    /* renamed from: i */
    public final Provider<ClientHealthMetricsStore> f22101i;

    public Uploader_Factory(Provider<Context> provider, Provider<BackendRegistry> provider2, Provider<EventStore> provider3, Provider<WorkScheduler> provider4, Provider<Executor> provider5, Provider<SynchronizationGuard> provider6, Provider<Clock> provider7, Provider<Clock> provider8, Provider<ClientHealthMetricsStore> provider9) {
        this.f22093a = provider;
        this.f22094b = provider2;
        this.f22095c = provider3;
        this.f22096d = provider4;
        this.f22097e = provider5;
        this.f22098f = provider6;
        this.f22099g = provider7;
        this.f22100h = provider8;
        this.f22101i = provider9;
    }

    public static Uploader_Factory create(Provider<Context> provider, Provider<BackendRegistry> provider2, Provider<EventStore> provider3, Provider<WorkScheduler> provider4, Provider<Executor> provider5, Provider<SynchronizationGuard> provider6, Provider<Clock> provider7, Provider<Clock> provider8, Provider<ClientHealthMetricsStore> provider9) {
        return new Uploader_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public static Uploader newInstance(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, Clock clock, Clock clock2, ClientHealthMetricsStore clientHealthMetricsStore) {
        return new Uploader(context, backendRegistry, eventStore, workScheduler, executor, synchronizationGuard, clock, clock2, clientHealthMetricsStore);
    }

    @Override // javax.inject.Provider
    public Uploader get() {
        return newInstance(this.f22093a.get(), this.f22094b.get(), this.f22095c.get(), this.f22096d.get(), this.f22097e.get(), this.f22098f.get(), this.f22099g.get(), this.f22100h.get(), this.f22101i.get());
    }
}
