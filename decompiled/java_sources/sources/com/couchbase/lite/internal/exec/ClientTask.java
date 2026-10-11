package com.couchbase.lite.internal.exec;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class ClientTask<T> {
    private static final CBLExecutor EXECUTOR;
    public static final int MAX_POOL_SIZE;

    @Nullable
    private Exception err;

    @Nullable
    private T result;

    @NonNull
    private final Callable<T> task;

    static {
        int i = (CBLExecutor.CPU_COUNT * 2) + 1;
        MAX_POOL_SIZE = i;
        EXECUTOR = new CBLExecutor("Client worker", 0, i, new SynchronousQueue());
    }

    public ClientTask(@NonNull Callable<T> callable) {
        this.task = callable;
    }

    private void setFailure(@Nullable Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        if (th == null || this.err != null) {
            return;
        }
        this.err = (Exception) th;
    }

    public void execute() {
        execute(30L, TimeUnit.SECONDS);
    }

    @Nullable
    public Exception getFailure() {
        return this.err;
    }

    @Nullable
    public T getResult() {
        return this.result;
    }

    public void execute(long j, @NonNull TimeUnit timeUnit) {
        FutureTask futureTask = new FutureTask(this.task);
        try {
            EXECUTOR.execute(new InstrumentedTask(futureTask, null));
            try {
                this.result = (T) futureTask.get(j, timeUnit);
            } catch (ExecutionException e) {
                setFailure(e.getCause());
            } catch (Throwable th) {
                setFailure(th);
            }
        } catch (Throwable th2) {
            if (CouchbaseLiteInternal.debugging()) {
                EXECUTOR.dumpState();
            }
            setFailure(th2);
        }
    }
}
