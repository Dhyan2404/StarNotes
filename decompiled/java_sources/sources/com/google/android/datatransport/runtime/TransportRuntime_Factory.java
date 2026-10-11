package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class TransportRuntime_Factory implements Factory<TransportRuntime> {

    /* renamed from: a */
    public final Provider<Clock> f21917a;

    /* renamed from: b */
    public final Provider<Clock> f21918b;

    /* renamed from: c */
    public final Provider<Scheduler> f21919c;

    /* renamed from: d */
    public final Provider<Uploader> f21920d;

    /* renamed from: e */
    public final Provider<WorkInitializer> f21921e;

    public TransportRuntime_Factory(Provider<Clock> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Uploader> provider4, Provider<WorkInitializer> provider5) {
        this.f21917a = provider;
        this.f21918b = provider2;
        this.f21919c = provider3;
        this.f21920d = provider4;
        this.f21921e = provider5;
    }

    public static TransportRuntime_Factory create(Provider<Clock> provider, Provider<Clock> provider2, Provider<Scheduler> provider3, Provider<Uploader> provider4, Provider<WorkInitializer> provider5) {
        return new TransportRuntime_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static TransportRuntime newInstance(Clock clock, Clock clock2, Scheduler scheduler, Uploader uploader, WorkInitializer workInitializer) {
        return new TransportRuntime(clock, clock2, scheduler, uploader, workInitializer);
    }

    @Override // javax.inject.Provider
    public TransportRuntime get() {
        return newInstance(this.f21917a.get(), this.f21918b.get(), this.f21919c.get(), this.f21920d.get(), this.f21921e.get());
    }
}
