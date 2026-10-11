package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.Binds;
import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.sunia.HTREnginev2.jxf;
import javax.inject.Named;
import javax.inject.Singleton;

@Module
/* loaded from: classes4.dex */
public abstract class EventStoreModule {
    @Provides
    @Named("SQLITE_DB_NAME")
    /* renamed from: b */
    public static String m17504b() {
        return SchemaManager.f22141g;
    }

    @Provides
    @Singleton
    @Named("PACKAGE_NAME")
    /* renamed from: d */
    public static String m17505d(Context context) {
        return context.getPackageName();
    }

    @Provides
    @Named("SCHEMA_VERSION")
    /* renamed from: e */
    public static int m17506e() {
        return SchemaManager.f22157w;
    }

    @Provides
    /* renamed from: f */
    public static jxf m17507f() {
        return jxf.f74798f;
    }

    @Binds
    /* renamed from: a */
    public abstract ClientHealthMetricsStore m17508a(SQLiteEventStore sQLiteEventStore);

    @Binds
    /* renamed from: c */
    public abstract EventStore m17509c(SQLiteEventStore sQLiteEventStore);

    @Binds
    /* renamed from: g */
    public abstract SynchronizationGuard m17510g(SQLiteEventStore sQLiteEventStore);
}
