package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import com.sunia.HTREnginev2.pyf;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public final class ExecutionModule_ExecutorFactory implements Factory<Executor> {

    /* renamed from: com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory$a */
    /* loaded from: classes4.dex */
    public static final class C4623a {

        /* renamed from: a */
        public static final ExecutionModule_ExecutorFactory f21910a = new ExecutionModule_ExecutorFactory();
    }

    public static ExecutionModule_ExecutorFactory create() {
        return C4623a.f21910a;
    }

    public static Executor executor() {
        return (Executor) Preconditions.checkNotNull(pyf.m56473a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    public Executor get() {
        return executor();
    }
}
