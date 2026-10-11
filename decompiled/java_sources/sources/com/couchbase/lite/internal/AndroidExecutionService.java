package com.couchbase.lite.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.AndroidExecutionService;
import com.couchbase.lite.internal.exec.AbstractExecutionService;
import com.couchbase.lite.internal.exec.CBLExecutor;
import com.couchbase.lite.internal.exec.ExecutionService;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.Preconditions;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.b8e;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes4.dex */
public final class AndroidExecutionService extends AbstractExecutionService {

    @NonNull
    private final Handler mainHandler;

    @NonNull
    private final Executor mainThreadExecutor;

    /* loaded from: classes4.dex */
    public static final class CancellableTask implements ExecutionService.Cancellable {
        private final Handler handler;
        private final Runnable task;

        @Override // com.couchbase.lite.internal.exec.ExecutionService.Cancellable
        public void cancel() {
            this.handler.removeCallbacks(this.task);
        }

        private CancellableTask(@NonNull Handler handler, @NonNull Runnable runnable) {
            Preconditions.assertNotNull(handler, Constants.TRANSLET_OUTPUT_PNAME);
            Preconditions.assertNotNull(runnable, "task");
            this.handler = handler;
            this.task = runnable;
        }
    }

    public AndroidExecutionService() {
        this(new CBLExecutor("CBL worker"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$postDelayedOnExecutor$0(Executor executor, Runnable runnable, long j) {
        try {
            executor.execute(runnable);
        } catch (ExecutionService.CloseableExecutor.ExecutorClosedException unused) {
            Log.m9908w(LogDomain.DATABASE, "Scheduled on closed executor: " + runnable + ", " + executor);
        } catch (RejectedExecutionException e) {
            if (AbstractExecutionService.throttled()) {
                return;
            }
            Log.m9909w(LogDomain.DATABASE, "Execution rejected after delay: " + j, e);
            AbstractExecutionService.dumpThreads();
        }
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService
    @NonNull
    public Executor getDefaultExecutor() {
        return this.mainThreadExecutor;
    }

    @Override // com.couchbase.lite.internal.exec.ExecutionService
    @NonNull
    public ExecutionService.Cancellable postDelayedOnExecutor(final long j, @NonNull final Executor executor, @NonNull final Runnable runnable) {
        Preconditions.assertNotNull(executor, "executor");
        Preconditions.assertNotNull(runnable, "task");
        Runnable runnable2 = new Runnable() { // from class: com.sunia.HTREnginev2.na
            @Override // java.lang.Runnable
            public final void run() {
                AndroidExecutionService.lambda$postDelayedOnExecutor$0(executor, runnable, j);
            }
        };
        this.mainHandler.postDelayed(runnable2, j);
        return new CancellableTask(this.mainHandler, runnable2);
    }

    @VisibleForTesting
    public AndroidExecutionService(@NonNull ThreadPoolExecutor threadPoolExecutor) {
        super(threadPoolExecutor);
        Handler handler = new Handler(Looper.getMainLooper());
        this.mainHandler = handler;
        Objects.requireNonNull(handler);
        this.mainThreadExecutor = new b8e(handler);
    }
}
