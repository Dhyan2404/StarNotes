package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* loaded from: classes4.dex */
public final class EventStoreModule_DbNameFactory implements Factory<String> {

    /* renamed from: com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_DbNameFactory$a */
    /* loaded from: classes4.dex */
    public static final class C4638a {

        /* renamed from: a */
        public static final EventStoreModule_DbNameFactory f22118a = new EventStoreModule_DbNameFactory();
    }

    public static EventStoreModule_DbNameFactory create() {
        return C4638a.f22118a;
    }

    public static String dbName() {
        return (String) Preconditions.checkNotNull(EventStoreModule.m17504b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    public String get() {
        return dbName();
    }
}
