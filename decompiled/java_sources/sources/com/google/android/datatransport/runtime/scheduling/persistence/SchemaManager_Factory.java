package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class SchemaManager_Factory implements Factory<SchemaManager> {

    /* renamed from: a */
    public final Provider<Context> f22163a;

    /* renamed from: b */
    public final Provider<String> f22164b;

    /* renamed from: c */
    public final Provider<Integer> f22165c;

    public SchemaManager_Factory(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.f22163a = provider;
        this.f22164b = provider2;
        this.f22165c = provider3;
    }

    public static SchemaManager_Factory create(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        return new SchemaManager_Factory(provider, provider2, provider3);
    }

    public static SchemaManager newInstance(Context context, String str, int i) {
        return new SchemaManager(context, str, i);
    }

    @Override // javax.inject.Provider
    public SchemaManager get() {
        return newInstance(this.f22163a.get(), this.f22164b.get(), this.f22165c.get().intValue());
    }
}
