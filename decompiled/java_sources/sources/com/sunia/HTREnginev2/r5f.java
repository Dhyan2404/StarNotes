package com.sunia.HTREnginev2;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class r5f implements Executor {

    /* renamed from: e */
    @JvmField
    @NotNull
    public final CoroutineDispatcher f82745e;

    public r5f(@NotNull CoroutineDispatcher coroutineDispatcher) {
        this.f82745e = coroutineDispatcher;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        CoroutineDispatcher coroutineDispatcher = this.f82745e;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        if (coroutineDispatcher.isDispatchNeeded(emptyCoroutineContext)) {
            this.f82745e.dispatch(emptyCoroutineContext, runnable);
        } else {
            runnable.run();
        }
    }

    @NotNull
    public String toString() {
        return this.f82745e.toString();
    }
}
