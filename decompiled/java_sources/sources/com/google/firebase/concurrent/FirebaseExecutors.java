package com.google.firebase.concurrent;

import com.sunia.HTREnginev2.e0l;
import com.sunia.HTREnginev2.e3f;
import com.sunia.HTREnginev2.eyi;
import com.sunia.HTREnginev2.h0l;
import com.sunia.HTREnginev2.hyi;
import com.sunia.HTREnginev2.i0l;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes6.dex */
public class FirebaseExecutors {

    /* loaded from: classes6.dex */
    public enum DirectExecutor implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    public static Executor directExecutor() {
        return DirectExecutor.INSTANCE;
    }

    public static Executor newLimitedConcurrencyExecutor(Executor executor, int i) {
        return new eyi(executor, i);
    }

    public static ExecutorService newLimitedConcurrencyExecutorService(ExecutorService executorService, int i) {
        return new hyi(executorService, i);
    }

    public static ScheduledExecutorService newLimitedConcurrencyScheduledExecutorService(ExecutorService executorService, int i) {
        return new e3f(newLimitedConcurrencyExecutorService(executorService, i), ExecutorsRegistrar.f35838d.get());
    }

    public static PausableExecutor newPausableExecutor(Executor executor) {
        return new e0l(false, executor);
    }

    public static PausableExecutorService newPausableExecutorService(ExecutorService executorService) {
        return new h0l(false, executorService);
    }

    public static PausableScheduledExecutorService newPausableScheduledExecutorService(ScheduledExecutorService scheduledExecutorService) {
        return new i0l(newPausableExecutorService(scheduledExecutorService), ExecutorsRegistrar.f35838d.get());
    }

    public static Executor newSequentialExecutor(Executor executor) {
        return new SequentialExecutor(executor);
    }
}
