package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;

/* loaded from: classes4.dex */
public final class EventStoreModule_SchemaVersionFactory implements Factory<Integer> {

    /* renamed from: com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_SchemaVersionFactory$a */
    /* loaded from: classes4.dex */
    public static final class C4639a {

        /* renamed from: a */
        public static final EventStoreModule_SchemaVersionFactory f22120a = new EventStoreModule_SchemaVersionFactory();
    }

    public static EventStoreModule_SchemaVersionFactory create() {
        return C4639a.f22120a;
    }

    public static int schemaVersion() {
        return EventStoreModule.m17506e();
    }

    @Override // javax.inject.Provider
    public Integer get() {
        return Integer.valueOf(schemaVersion());
    }
}
