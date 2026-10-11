package com.sunia.HTREnginev2;

import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import javax.inject.Singleton;

@Module
/* loaded from: classes4.dex */
public abstract class pyf {
    @Provides
    @Singleton
    /* renamed from: a */
    public static Executor m56473a() {
        return new m0m(Executors.newSingleThreadExecutor());
    }
}
