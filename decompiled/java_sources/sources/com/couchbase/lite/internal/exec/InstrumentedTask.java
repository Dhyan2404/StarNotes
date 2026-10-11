package com.couchbase.lite.internal.exec;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import com.google.android.material.motion.MotionUtils;
import java.util.concurrent.atomic.AtomicLong;
import kotlinx.coroutines.CoroutineContextKt;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes4.dex */
public class InstrumentedTask implements Runnable {

    /* renamed from: ID */
    private static final AtomicLong f16329ID = new AtomicLong(0);
    private volatile long completedAt;
    private volatile long finishedAt;

    @Nullable
    private final Runnable onComplete;
    private volatile long startedAt;

    @NonNull
    private final Runnable task;
    final Exception origin = null;
    private final long createdAt = System.currentTimeMillis();

    /* renamed from: id */
    private final long f16330id = f16329ID.incrementAndGet();

    public InstrumentedTask(@NonNull Runnable runnable, @Nullable Runnable runnable2) {
        this.task = runnable;
        this.onComplete = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (this.startedAt != 0) {
                throw new CouchbaseLiteError("Attempt to execute a task multiple times");
            }
            this.startedAt = System.currentTimeMillis();
        }
        try {
            this.task.run();
            this.finishedAt = System.currentTimeMillis();
        } finally {
            Runnable runnable = this.onComplete;
            if (runnable != null) {
                runnable.run();
            }
            this.completedAt = System.currentTimeMillis();
        }
    }

    @NonNull
    public String toString() {
        return "task[#" + this.f16330id + CoroutineContextKt.f98133a + this.createdAt + MotionUtils.f31761c + this.startedAt + "<" + this.finishedAt + "<" + this.completedAt + "):" + this.task + IteratorUtils.f104924b;
    }
}
