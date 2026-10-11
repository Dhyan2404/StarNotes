package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.BackendRegistryModule;
import com.google.android.datatransport.runtime.dagger.BindsInstance;
import com.google.android.datatransport.runtime.dagger.Component;
import com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule;
import com.google.android.datatransport.runtime.time.TimeModule;
import com.sunia.HTREnginev2.pyf;
import java.io.Closeable;
import java.io.IOException;
import javax.inject.Singleton;

@Singleton
@Component(modules = {BackendRegistryModule.class, EventStoreModule.class, pyf.class, SchedulingModule.class, SchedulingConfigModule.class, TimeModule.class})
/* renamed from: com.google.android.datatransport.runtime.f */
/* loaded from: classes4.dex */
public abstract class AbstractC4635f implements Closeable {

    @Component.Builder
    /* renamed from: com.google.android.datatransport.runtime.f$a */
    /* loaded from: classes4.dex */
    public interface a {
        @BindsInstance
        /* renamed from: a */
        a mo17438a(Context context);

        AbstractC4635f build();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        mo17436f().close();
    }

    /* renamed from: f */
    public abstract EventStore mo17436f();

    /* renamed from: j */
    public abstract TransportRuntime mo17437j();
}
