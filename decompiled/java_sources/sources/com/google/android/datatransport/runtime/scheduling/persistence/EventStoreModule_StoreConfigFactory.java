package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import com.sunia.HTREnginev2.jxf;

/* loaded from: classes4.dex */
public final class EventStoreModule_StoreConfigFactory implements Factory<jxf> {

    /* renamed from: com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_StoreConfigFactory$a */
    /* loaded from: classes4.dex */
    public static final class C4640a {

        /* renamed from: a */
        public static final EventStoreModule_StoreConfigFactory f22121a = new EventStoreModule_StoreConfigFactory();
    }

    public static EventStoreModule_StoreConfigFactory create() {
        return C4640a.f22121a;
    }

    public static jxf storeConfig() {
        return (jxf) Preconditions.checkNotNull(EventStoreModule.m17507f(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    public jxf get() {
        return storeConfig();
    }
}
