package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.google.j2objc.annotations.RetainedWith;
import com.sunia.HTREnginev2.pnf;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class SequentialExecutor implements Executor {

    /* renamed from: j */
    public static final Logger f35390j = Logger.getLogger(SequentialExecutor.class.getName());

    /* renamed from: e */
    public final Executor f35391e;

    /* renamed from: f */
    @GuardedBy("queue")
    public final Deque<Runnable> f35392f = new ArrayDeque();

    /* renamed from: g */
    @GuardedBy("queue")
    public WorkerRunningState f35393g = WorkerRunningState.IDLE;

    /* renamed from: h */
    @GuardedBy("queue")
    public long f35394h = 0;

    /* renamed from: i */
    @RetainedWith
    public final RunnableC6390b f35395i = new RunnableC6390b(this, null);

    /* loaded from: classes6.dex */
    public enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    /* renamed from: com.google.common.util.concurrent.SequentialExecutor$a */
    /* loaded from: classes6.dex */
    public class RunnableC6389a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Runnable f35396e;

        public RunnableC6389a(SequentialExecutor sequentialExecutor, Runnable runnable) {
            this.f35396e = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35396e.run();
        }

        public String toString() {
            return this.f35396e.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.SequentialExecutor$b */
    /* loaded from: classes6.dex */
    public final class RunnableC6390b implements Runnable {

        /* renamed from: e */
        @CheckForNull
        public Runnable f35397e;

        public RunnableC6390b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0052, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0054, code lost:
        
            r9.f35397e.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
        
            r4 = com.google.common.util.concurrent.SequentialExecutor.f35390j;
            r5 = java.util.logging.Level.SEVERE;
            r6 = java.lang.String.valueOf(r9.f35397e);
            r8 = new java.lang.StringBuilder(r6.length() + 35);
            r8.append("Exception while executing runnable ");
            r8.append(r6);
            r4.log(r5, r8.toString(), (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005c, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0086, code lost:
        
            r9.f35397e = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0088, code lost:
        
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
        public final void m27788a() {
            /*
                r9 = this;
                r0 = 0
                r1 = r0
            L2:
                com.google.common.util.concurrent.SequentialExecutor r2 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L8c
                java.util.Deque r2 = com.google.common.util.concurrent.SequentialExecutor.m27783a(r2)     // Catch: java.lang.Throwable -> L8c
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L8c
                if (r0 != 0) goto L2b
                com.google.common.util.concurrent.SequentialExecutor r0 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r0 = com.google.common.util.concurrent.SequentialExecutor.m27784b(r0)     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r3 = com.google.common.util.concurrent.SequentialExecutor.WorkerRunningState.RUNNING     // Catch: java.lang.Throwable -> L89
                if (r0 != r3) goto L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
                if (r1 == 0) goto L1f
                java.lang.Thread r9 = java.lang.Thread.currentThread()
                r9.interrupt()
            L1f:
                return
            L20:
                com.google.common.util.concurrent.SequentialExecutor r0 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor.m27786d(r0)     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor r0 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor.m27785c(r0, r3)     // Catch: java.lang.Throwable -> L89
                r0 = 1
            L2b:
                com.google.common.util.concurrent.SequentialExecutor r3 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L89
                java.util.Deque r3 = com.google.common.util.concurrent.SequentialExecutor.m27783a(r3)     // Catch: java.lang.Throwable -> L89
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L89
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L89
                r9.f35397e = r3     // Catch: java.lang.Throwable -> L89
                if (r3 != 0) goto L4d
                com.google.common.util.concurrent.SequentialExecutor r9 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r0 = com.google.common.util.concurrent.SequentialExecutor.WorkerRunningState.IDLE     // Catch: java.lang.Throwable -> L89
                com.google.common.util.concurrent.SequentialExecutor.m27785c(r9, r0)     // Catch: java.lang.Throwable -> L89
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
                if (r1 == 0) goto L4c
                java.lang.Thread r9 = java.lang.Thread.currentThread()
                r9.interrupt()
            L4c:
                return
            L4d:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L8c
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r9.f35397e     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
                r3.run()     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
            L59:
                r9.f35397e = r2     // Catch: java.lang.Throwable -> L8c
                goto L2
            L5c:
                r0 = move-exception
                goto L86
            L5e:
                r3 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.SequentialExecutor.m27787e()     // Catch: java.lang.Throwable -> L5c
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5c
                java.lang.Runnable r6 = r9.f35397e     // Catch: java.lang.Throwable -> L5c
                java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L5c
                int r7 = r6.length()     // Catch: java.lang.Throwable -> L5c
                int r7 = r7 + 35
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
                r8.<init>(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.String r7 = "Exception while executing runnable "
                r8.append(r7)     // Catch: java.lang.Throwable -> L5c
                r8.append(r6)     // Catch: java.lang.Throwable -> L5c
                java.lang.String r6 = r8.toString()     // Catch: java.lang.Throwable -> L5c
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5c
                goto L59
            L86:
                r9.f35397e = r2     // Catch: java.lang.Throwable -> L8c
                throw r0     // Catch: java.lang.Throwable -> L8c
            L89:
                r9 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L89
                throw r9     // Catch: java.lang.Throwable -> L8c
            L8c:
                r9 = move-exception
                if (r1 == 0) goto L96
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L96:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.SequentialExecutor.RunnableC6390b.m27788a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m27788a();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.f35392f) {
                    SequentialExecutor.this.f35393g = WorkerRunningState.IDLE;
                    throw e;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.f35397e;
            if (runnable != null) {
                String valueOf = String.valueOf(runnable);
                StringBuilder sb = new StringBuilder(valueOf.length() + 34);
                sb.append("SequentialExecutorWorker{running=");
                sb.append(valueOf);
                sb.append("}");
                return sb.toString();
            }
            String valueOf2 = String.valueOf(SequentialExecutor.this.f35393g);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 32);
            sb2.append("SequentialExecutorWorker{state=");
            sb2.append(valueOf2);
            sb2.append("}");
            return sb2.toString();
        }

        public /* synthetic */ RunnableC6390b(SequentialExecutor sequentialExecutor, RunnableC6389a runnableC6389a) {
            this();
        }
    }

    public SequentialExecutor(Executor executor) {
        this.f35391e = (Executor) Preconditions.checkNotNull(executor);
    }

    /* renamed from: d */
    public static /* synthetic */ long m27786d(SequentialExecutor sequentialExecutor) {
        long j = sequentialExecutor.f35394h;
        sequentialExecutor.f35394h = 1 + j;
        return j;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        WorkerRunningState workerRunningState;
        Preconditions.checkNotNull(runnable);
        synchronized (this.f35392f) {
            WorkerRunningState workerRunningState2 = this.f35393g;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j = this.f35394h;
                RunnableC6389a runnableC6389a = new RunnableC6389a(this, runnable);
                this.f35392f.add(runnableC6389a);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.f35393g = workerRunningState3;
                try {
                    this.f35391e.execute(this.f35395i);
                    if (this.f35393g != workerRunningState3) {
                        return;
                    }
                    synchronized (this.f35392f) {
                        if (this.f35394h == j && this.f35393g == workerRunningState3) {
                            this.f35393g = workerRunningState;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.f35392f) {
                        WorkerRunningState workerRunningState4 = this.f35393g;
                        if ((workerRunningState4 != WorkerRunningState.IDLE && workerRunningState4 != WorkerRunningState.QUEUING) || !this.f35392f.removeLastOccurrence(runnableC6389a)) {
                            r0 = false;
                        }
                        if (!(e instanceof RejectedExecutionException) || r0) {
                            throw e;
                        }
                        return;
                    }
                }
            }
            this.f35392f.add(runnable);
        }
    }

    public String toString() {
        int identityHashCode = System.identityHashCode(this);
        String valueOf = String.valueOf(this.f35391e);
        StringBuilder sb = new StringBuilder(valueOf.length() + 32);
        sb.append("SequentialExecutor@");
        sb.append(identityHashCode);
        sb.append("{");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
