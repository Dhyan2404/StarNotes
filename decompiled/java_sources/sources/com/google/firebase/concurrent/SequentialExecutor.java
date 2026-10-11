package com.google.firebase.concurrent;

import androidx.annotation.GuardedBy;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes6.dex */
public final class SequentialExecutor implements Executor {

    /* renamed from: j */
    public static final Logger f35839j = Logger.getLogger(SequentialExecutor.class.getName());

    /* renamed from: e */
    public final Executor f35840e;

    /* renamed from: f */
    @GuardedBy("queue")
    public final Deque<Runnable> f35841f = new ArrayDeque();

    /* renamed from: g */
    @GuardedBy("queue")
    public WorkerRunningState f35842g = WorkerRunningState.IDLE;

    /* renamed from: h */
    @GuardedBy("queue")
    public long f35843h = 0;

    /* renamed from: i */
    public final RunnableC6456b f35844i = new RunnableC6456b(this, null);

    /* loaded from: classes6.dex */
    public enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    /* renamed from: com.google.firebase.concurrent.SequentialExecutor$a */
    /* loaded from: classes6.dex */
    public class RunnableC6455a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Runnable f35845e;

        public RunnableC6455a(Runnable runnable) {
            this.f35845e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35845e.run();
        }

        public String toString() {
            return this.f35845e.toString();
        }
    }

    /* renamed from: com.google.firebase.concurrent.SequentialExecutor$b */
    /* loaded from: classes6.dex */
    public final class RunnableC6456b implements Runnable {

        /* renamed from: e */
        @CheckForNull
        public Runnable f35847e;

        public RunnableC6456b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0054, code lost:
        
            r8.f35847e.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
        
            com.google.firebase.concurrent.SequentialExecutor.f35839j.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.f35847e, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
        
            r8.f35847e = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x007e, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
        
            return;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m28078a() {
            /*
                r8 = this;
                r0 = 0
                r1 = r0
            L2:
                com.google.firebase.concurrent.SequentialExecutor r2 = com.google.firebase.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L82
                java.util.Deque r2 = com.google.firebase.concurrent.SequentialExecutor.m28073a(r2)     // Catch: java.lang.Throwable -> L82
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L82
                if (r0 != 0) goto L2b
                com.google.firebase.concurrent.SequentialExecutor r0 = com.google.firebase.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState r0 = com.google.firebase.concurrent.SequentialExecutor.m28074b(r0)     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState r3 = com.google.firebase.concurrent.SequentialExecutor.WorkerRunningState.RUNNING     // Catch: java.lang.Throwable -> L7f
                if (r0 != r3) goto L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                if (r1 == 0) goto L1f
                java.lang.Thread r8 = java.lang.Thread.currentThread()
                r8.interrupt()
            L1f:
                return
            L20:
                com.google.firebase.concurrent.SequentialExecutor r0 = com.google.firebase.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor.m28076d(r0)     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor r0 = com.google.firebase.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor.m28075c(r0, r3)     // Catch: java.lang.Throwable -> L7f
                r0 = 1
            L2b:
                com.google.firebase.concurrent.SequentialExecutor r3 = com.google.firebase.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L7f
                java.util.Deque r3 = com.google.firebase.concurrent.SequentialExecutor.m28073a(r3)     // Catch: java.lang.Throwable -> L7f
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L7f
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L7f
                r8.f35847e = r3     // Catch: java.lang.Throwable -> L7f
                if (r3 != 0) goto L4d
                com.google.firebase.concurrent.SequentialExecutor r8 = com.google.firebase.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor$WorkerRunningState r0 = com.google.firebase.concurrent.SequentialExecutor.WorkerRunningState.IDLE     // Catch: java.lang.Throwable -> L7f
                com.google.firebase.concurrent.SequentialExecutor.m28075c(r8, r0)     // Catch: java.lang.Throwable -> L7f
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                if (r1 == 0) goto L4c
                java.lang.Thread r8 = java.lang.Thread.currentThread()
                r8.interrupt()
            L4c:
                return
            L4d:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L82
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r8.f35847e     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
                r3.run()     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
            L59:
                r8.f35847e = r2     // Catch: java.lang.Throwable -> L82
                goto L2
            L5c:
                r0 = move-exception
                goto L7c
            L5e:
                r3 = move-exception
                java.util.logging.Logger r4 = com.google.firebase.concurrent.SequentialExecutor.m28077e()     // Catch: java.lang.Throwable -> L5c
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5c
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
                r6.<init>()     // Catch: java.lang.Throwable -> L5c
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.Runnable r7 = r8.f35847e     // Catch: java.lang.Throwable -> L5c
                r6.append(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5c
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5c
                goto L59
            L7c:
                r8.f35847e = r2     // Catch: java.lang.Throwable -> L82
                throw r0     // Catch: java.lang.Throwable -> L82
            L7f:
                r8 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                throw r8     // Catch: java.lang.Throwable -> L82
            L82:
                r8 = move-exception
                if (r1 == 0) goto L8c
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L8c:
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.concurrent.SequentialExecutor.RunnableC6456b.m28078a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m28078a();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.f35841f) {
                    SequentialExecutor.this.f35842g = WorkerRunningState.IDLE;
                    throw e;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.f35847e;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + SequentialExecutor.this.f35842g + "}";
        }

        public /* synthetic */ RunnableC6456b(SequentialExecutor sequentialExecutor, RunnableC6455a runnableC6455a) {
            this();
        }
    }

    public SequentialExecutor(Executor executor) {
        this.f35840e = (Executor) Preconditions.checkNotNull(executor);
    }

    /* renamed from: d */
    public static /* synthetic */ long m28076d(SequentialExecutor sequentialExecutor) {
        long j = sequentialExecutor.f35843h;
        sequentialExecutor.f35843h = 1 + j;
        return j;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        WorkerRunningState workerRunningState;
        Preconditions.checkNotNull(runnable);
        synchronized (this.f35841f) {
            WorkerRunningState workerRunningState2 = this.f35842g;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j = this.f35843h;
                RunnableC6455a runnableC6455a = new RunnableC6455a(runnable);
                this.f35841f.add(runnableC6455a);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.f35842g = workerRunningState3;
                try {
                    this.f35840e.execute(this.f35844i);
                    if (this.f35842g != workerRunningState3) {
                        return;
                    }
                    synchronized (this.f35841f) {
                        if (this.f35843h == j && this.f35842g == workerRunningState3) {
                            this.f35842g = workerRunningState;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.f35841f) {
                        WorkerRunningState workerRunningState4 = this.f35842g;
                        if ((workerRunningState4 != WorkerRunningState.IDLE && workerRunningState4 != WorkerRunningState.QUEUING) || !this.f35841f.removeLastOccurrence(runnableC6455a)) {
                            r0 = false;
                        }
                        if (!(e instanceof RejectedExecutionException) || r0) {
                            throw e;
                        }
                        return;
                    }
                }
            }
            this.f35841f.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f35840e + "}";
    }
}
