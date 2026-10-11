package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.sunia.HTREnginev2.ahe;
import com.sunia.HTREnginev2.inj;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class MetadataBackendRegistry_Factory implements Factory<inj> {

    /* renamed from: a */
    public final Provider<Context> f21949a;

    /* renamed from: b */
    public final Provider<ahe> f21950b;

    public MetadataBackendRegistry_Factory(Provider<Context> provider, Provider<ahe> provider2) {
        this.f21949a = provider;
        this.f21950b = provider2;
    }

    public static MetadataBackendRegistry_Factory create(Provider<Context> provider, Provider<ahe> provider2) {
        return new MetadataBackendRegistry_Factory(provider, provider2);
    }

    public static inj newInstance(Context context, Object obj) {
        return new inj(context, (ahe) obj);
    }

    @Override // javax.inject.Provider
    public inj get() {
        return newInstance(this.f21949a.get(), this.f21950b.get());
    }
}
