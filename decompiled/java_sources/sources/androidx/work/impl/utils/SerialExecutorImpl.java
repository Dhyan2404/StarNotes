package androidx.work.impl.utils;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class SerialExecutorImpl implements SerialExecutor {

    /* renamed from: f */
    public final Executor f11947f;

    /* renamed from: g */
    @GuardedBy("mLock")
    public Runnable f11948g;

    /* renamed from: e */
    public final ArrayDeque<RunnableC1668a> f11946e = new ArrayDeque<>();

    /* renamed from: h */
    public final Object f11949h = new Object();

    /* renamed from: androidx.work.impl.utils.SerialExecutorImpl$a */
    /* loaded from: classes3.dex */
    public static class RunnableC1668a implements Runnable {

        /* renamed from: e */
        public final SerialExecutorImpl f11950e;

        /* renamed from: f */
        public final Runnable f11951f;

        public RunnableC1668a(@NonNull SerialExecutorImpl serialExecutor, @NonNull Runnable runnable) {
            this.f11950e = serialExecutor;
            this.f11951f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f11951f.run();
                synchronized (this.f11950e.f11949h) {
                    this.f11950e.m7154a();
                }
            } catch (Throwable th) {
                synchronized (this.f11950e.f11949h) {
                    this.f11950e.m7154a();
                    throw th;
                }
            }
        }
    }

    public SerialExecutorImpl(@NonNull Executor executor) {
        this.f11947f = executor;
    }

    @GuardedBy("mLock")
    /* renamed from: a */
    public void m7154a() {
        RunnableC1668a poll = this.f11946e.poll();
        this.f11948g = poll;
        if (poll != null) {
            this.f11947f.execute(poll);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable command) {
        synchronized (this.f11949h) {
            this.f11946e.add(new RunnableC1668a(this, command));
            if (this.f11948g == null) {
                m7154a();
            }
        }
    }

    @NonNull
    @VisibleForTesting
    public Executor getDelegatedExecutor() {
        return this.f11947f;
    }

    @Override // androidx.work.impl.utils.taskexecutor.SerialExecutor
    public boolean hasPendingTasks() {
        boolean z;
        synchronized (this.f11949h) {
            z = !this.f11946e.isEmpty();
        }
        return z;
    }
}
