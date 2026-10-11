package com.sunia.HTREnginev2;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.scheduling.ExperimentalCoroutineDispatcher;
import kotlinx.coroutines.scheduling.TaskContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class iyi extends ExecutorCoroutineDispatcher implements TaskContext, Executor {

    /* renamed from: j */
    @NotNull
    public static final AtomicIntegerFieldUpdater f73765j = AtomicIntegerFieldUpdater.newUpdater(iyi.class, "inFlightTasks");

    /* renamed from: e */
    @NotNull
    public final ExperimentalCoroutineDispatcher f73766e;

    /* renamed from: f */
    public final int f73767f;

    /* renamed from: g */
    @Nullable
    public final String f73768g;

    /* renamed from: h */
    public final int f73769h;

    /* renamed from: i */
    @NotNull
    public final ConcurrentLinkedQueue<Runnable> f73770i = new ConcurrentLinkedQueue<>();

    @Volatile
    private volatile int inFlightTasks;

    public iyi(@NotNull ExperimentalCoroutineDispatcher experimentalCoroutineDispatcher, int i, @Nullable String str, int i2) {
        this.f73766e = experimentalCoroutineDispatcher;
        this.f73767f = i;
        this.f73768g = str;
        this.f73769h = i2;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public void afterTask() {
        Runnable poll = this.f73770i.poll();
        if (poll != null) {
            this.f73766e.dispatchWithContext$kotlinx_coroutines_core(poll, this, true);
            return;
        }
        f73765j.decrementAndGet(this);
        Runnable poll2 = this.f73770i.poll();
        if (poll2 == null) {
            return;
        }
        m54840f(poll2, true);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        m54840f(runnable, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatchYield(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        m54840f(runnable, true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        m54840f(runnable, false);
    }

    /* renamed from: f */
    public final void m54840f(Runnable runnable, boolean z) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f73765j;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f73767f) {
                this.f73766e.dispatchWithContext$kotlinx_coroutines_core(runnable, this, z);
                return;
            }
            this.f73770i.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f73767f) {
                return;
            } else {
                runnable = this.f73770i.poll();
            }
        } while (runnable != null);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    public Executor getExecutor() {
        return this;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public int getTaskMode() {
        return this.f73769h;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str = this.f73768g;
        if (str != null) {
            return str;
        }
        return super.toString() + "[dispatcher = " + this.f73766e + ']';
    }
}
