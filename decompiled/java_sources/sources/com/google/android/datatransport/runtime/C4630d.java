package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.AbstractC4635f;
import com.google.android.datatransport.runtime.backends.CreationContextFactory_Factory;
import com.google.android.datatransport.runtime.backends.MetadataBackendRegistry_Factory;
import com.google.android.datatransport.runtime.dagger.internal.DoubleCheck;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule_ConfigFactory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_DbNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_PackageNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_SchemaVersionFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_StoreConfigFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import java.util.concurrent.Executor;
import javax.inject.Provider;

/* renamed from: com.google.android.datatransport.runtime.d */
/* loaded from: classes4.dex */
public final class C4630d extends AbstractC4635f {

    /* renamed from: e */
    public Provider<Executor> f21963e;

    /* renamed from: f */
    public Provider<Context> f21964f;

    /* renamed from: g */
    public Provider f21965g;

    /* renamed from: h */
    public Provider f21966h;

    /* renamed from: i */
    public Provider f21967i;

    /* renamed from: j */
    public Provider<String> f21968j;

    /* renamed from: k */
    public Provider<SQLiteEventStore> f21969k;

    /* renamed from: l */
    public Provider<SchedulerConfig> f21970l;

    /* renamed from: m */
    public Provider<WorkScheduler> f21971m;

    /* renamed from: n */
    public Provider<DefaultScheduler> f21972n;

    /* renamed from: o */
    public Provider<Uploader> f21973o;

    /* renamed from: p */
    public Provider<WorkInitializer> f21974p;

    /* renamed from: q */
    public Provider<TransportRuntime> f21975q;

    /* renamed from: com.google.android.datatransport.runtime.d$b */
    /* loaded from: classes4.dex */
    public static final class b implements AbstractC4635f.a {

        /* renamed from: a */
        public Context f21976a;

        public b() {
        }

        @Override // com.google.android.datatransport.runtime.AbstractC4635f.a
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public b mo17438a(Context context) {
            this.f21976a = (Context) Preconditions.checkNotNull(context);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC4635f.a
        public AbstractC4635f build() {
            Preconditions.checkBuilderRequirement(this.f21976a, Context.class);
            return new C4630d(this.f21976a);
        }
    }

    /* renamed from: w */
    public static AbstractC4635f.a m17434w() {
        return new b();
    }

    /* renamed from: H */
    public final void m17435H(Context context) {
        this.f21963e = DoubleCheck.provider(ExecutionModule_ExecutorFactory.create());
        Factory create = InstanceFactory.create(context);
        this.f21964f = create;
        CreationContextFactory_Factory create2 = CreationContextFactory_Factory.create(create, TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create());
        this.f21965g = create2;
        this.f21966h = DoubleCheck.provider(MetadataBackendRegistry_Factory.create(this.f21964f, create2));
        this.f21967i = SchemaManager_Factory.create(this.f21964f, EventStoreModule_DbNameFactory.create(), EventStoreModule_SchemaVersionFactory.create());
        this.f21968j = DoubleCheck.provider(EventStoreModule_PackageNameFactory.create(this.f21964f));
        this.f21969k = DoubleCheck.provider(SQLiteEventStore_Factory.create(TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create(), EventStoreModule_StoreConfigFactory.create(), this.f21967i, this.f21968j));
        SchedulingConfigModule_ConfigFactory create3 = SchedulingConfigModule_ConfigFactory.create(TimeModule_EventClockFactory.create());
        this.f21970l = create3;
        SchedulingModule_WorkSchedulerFactory create4 = SchedulingModule_WorkSchedulerFactory.create(this.f21964f, this.f21969k, create3, TimeModule_UptimeClockFactory.create());
        this.f21971m = create4;
        Provider<Executor> provider = this.f21963e;
        Provider provider2 = this.f21966h;
        Provider<SQLiteEventStore> provider3 = this.f21969k;
        this.f21972n = DefaultScheduler_Factory.create(provider, provider2, create4, provider3, provider3);
        Provider<Context> provider4 = this.f21964f;
        Provider provider5 = this.f21966h;
        Provider<SQLiteEventStore> provider6 = this.f21969k;
        this.f21973o = Uploader_Factory.create(provider4, provider5, provider6, this.f21971m, this.f21963e, provider6, TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create(), this.f21969k);
        Provider<Executor> provider7 = this.f21963e;
        Provider<SQLiteEventStore> provider8 = this.f21969k;
        this.f21974p = WorkInitializer_Factory.create(provider7, provider8, this.f21971m, provider8);
        this.f21975q = DoubleCheck.provider(TransportRuntime_Factory.create(TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create(), this.f21972n, this.f21973o, this.f21974p));
    }

    @Override // com.google.android.datatransport.runtime.AbstractC4635f
    /* renamed from: f */
    public EventStore mo17436f() {
        return this.f21969k.get();
    }

    @Override // com.google.android.datatransport.runtime.AbstractC4635f
    /* renamed from: j */
    public TransportRuntime mo17437j() {
        return this.f21975q.get();
    }

    public C4630d(Context context) {
        m17435H(context);
    }
}
