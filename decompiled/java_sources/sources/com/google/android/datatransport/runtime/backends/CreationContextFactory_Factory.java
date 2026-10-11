package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.time.Clock;
import com.sunia.HTREnginev2.ahe;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class CreationContextFactory_Factory implements Factory<ahe> {

    /* renamed from: a */
    public final Provider<Context> f21946a;

    /* renamed from: b */
    public final Provider<Clock> f21947b;

    /* renamed from: c */
    public final Provider<Clock> f21948c;

    public CreationContextFactory_Factory(Provider<Context> provider, Provider<Clock> provider2, Provider<Clock> provider3) {
        this.f21946a = provider;
        this.f21947b = provider2;
        this.f21948c = provider3;
    }

    public static CreationContextFactory_Factory create(Provider<Context> provider, Provider<Clock> provider2, Provider<Clock> provider3) {
        return new CreationContextFactory_Factory(provider, provider2, provider3);
    }

    public static ahe newInstance(Context context, Clock clock, Clock clock2) {
        return new ahe(context, clock, clock2);
    }

    @Override // javax.inject.Provider
    public ahe get() {
        return newInstance(this.f21946a.get(), this.f21947b.get(), this.f21948c.get());
    }
}
