package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.time.Clock;
import com.sunia.HTREnginev2.jxf;
import javax.inject.Provider;

/* loaded from: classes4.dex */
public final class SQLiteEventStore_Factory implements Factory<SQLiteEventStore> {

    /* renamed from: a */
    public final Provider<Clock> f22133a;

    /* renamed from: b */
    public final Provider<Clock> f22134b;

    /* renamed from: c */
    public final Provider<jxf> f22135c;

    /* renamed from: d */
    public final Provider<SchemaManager> f22136d;

    /* renamed from: e */
    public final Provider<String> f22137e;

    public SQLiteEventStore_Factory(Provider<Clock> provider, Provider<Clock> provider2, Provider<jxf> provider3, Provider<SchemaManager> provider4, Provider<String> provider5) {
        this.f22133a = provider;
        this.f22134b = provider2;
        this.f22135c = provider3;
        this.f22136d = provider4;
        this.f22137e = provider5;
    }

    public static SQLiteEventStore_Factory create(Provider<Clock> provider, Provider<Clock> provider2, Provider<jxf> provider3, Provider<SchemaManager> provider4, Provider<String> provider5) {
        return new SQLiteEventStore_Factory(provider, provider2, provider3, provider4, provider5);
    }

    public static SQLiteEventStore newInstance(Clock clock, Clock clock2, Object obj, Object obj2, Provider<String> provider) {
        return new SQLiteEventStore(clock, clock2, (jxf) obj, (SchemaManager) obj2, provider);
    }

    @Override // javax.inject.Provider
    public SQLiteEventStore get() {
        return newInstance(this.f22133a.get(), this.f22134b.get(), this.f22135c.get(), this.f22136d.get(), this.f22137e);
    }
}
