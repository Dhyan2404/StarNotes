package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.pnf;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.CheckForNull;

@pnf
/* loaded from: classes6.dex */
public final class ExecutionSequencer {

    /* renamed from: a */
    public final AtomicReference<ListenableFuture<Void>> f35322a = new AtomicReference<>(Futures.immediateVoidFuture());

    /* renamed from: b */
    public C6361c f35323b = new C6361c(null);

    /* loaded from: classes6.dex */
    public enum RunningState {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    /* loaded from: classes6.dex */
    public static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {

        @CheckForNull
        Executor delegate;

        @CheckForNull
        ExecutionSequencer sequencer;

        @CheckForNull
        Thread submitting;

        @CheckForNull
        Runnable task;

        public /* synthetic */ TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer, C6359a c6359a) {
            this(executor, executionSequencer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetCancelled() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.CANCELLED);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean trySetStarted() {
            return compareAndSet(RunningState.NOT_RUN, RunningState.STARTED);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (get() == RunningState.CANCELLED) {
                this.delegate = null;
                this.sequencer = null;
                return;
            }
            this.submitting = Thread.currentThread();
            try {
                ExecutionSequencer executionSequencer = this.sequencer;
                Objects.requireNonNull(executionSequencer);
                C6361c c6361c = executionSequencer.f35323b;
                if (c6361c.f35327a == this.submitting) {
                    this.sequencer = null;
                    Preconditions.checkState(c6361c.f35328b == null);
                    c6361c.f35328b = runnable;
                    Executor executor = this.delegate;
                    Objects.requireNonNull(executor);
                    c6361c.f35329c = executor;
                    this.delegate = null;
                } else {
                    Executor executor2 = this.delegate;
                    Objects.requireNonNull(executor2);
                    this.delegate = null;
                    this.task = runnable;
                    executor2.execute(this);
                }
            } finally {
                this.submitting = null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Executor executor;
            Thread currentThread = Thread.currentThread();
            Thread thread = null;
            Object[] objArr = 0;
            if (currentThread != this.submitting) {
                Runnable runnable = this.task;
                Objects.requireNonNull(runnable);
                this.task = null;
                runnable.run();
                return;
            }
            C6361c c6361c = new C6361c(objArr == true ? 1 : 0);
            c6361c.f35327a = currentThread;
            ExecutionSequencer executionSequencer = this.sequencer;
            Objects.requireNonNull(executionSequencer);
            executionSequencer.f35323b = c6361c;
            this.sequencer = null;
            try {
                Runnable runnable2 = this.task;
                Objects.requireNonNull(runnable2);
                this.task = null;
                runnable2.run();
                while (true) {
                    Runnable runnable3 = c6361c.f35328b;
                    if (runnable3 == null || (executor = c6361c.f35329c) == null) {
                        break;
                    }
                    c6361c.f35328b = null;
                    c6361c.f35329c = null;
                    executor.execute(runnable3);
                }
            } finally {
                c6361c.f35327a = null;
            }
        }

        private TaskNonReentrantExecutor(Executor executor, ExecutionSequencer executionSequencer) {
            super(RunningState.NOT_RUN);
            this.delegate = executor;
            this.sequencer = executionSequencer;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.ExecutionSequencer$a */
    /* loaded from: classes6.dex */
    public class C6359a<T> implements AsyncCallable<T> {

        /* renamed from: a */
        public final /* synthetic */ Callable f35324a;

        public C6359a(ExecutionSequencer executionSequencer, Callable callable) {
            this.f35324a = callable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return Futures.immediateFuture(this.f35324a.call());
        }

        public String toString() {
            return this.f35324a.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.ExecutionSequencer$b */
    /* loaded from: classes6.dex */
    public class C6360b<T> implements AsyncCallable<T> {

        /* renamed from: a */
        public final /* synthetic */ TaskNonReentrantExecutor f35325a;

        /* renamed from: b */
        public final /* synthetic */ AsyncCallable f35326b;

        public C6360b(ExecutionSequencer executionSequencer, TaskNonReentrantExecutor taskNonReentrantExecutor, AsyncCallable asyncCallable) {
            this.f35325a = taskNonReentrantExecutor;
            this.f35326b = asyncCallable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return !this.f35325a.trySetStarted() ? Futures.immediateCancelledFuture() : this.f35326b.call();
        }

        public String toString() {
            return this.f35326b.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.ExecutionSequencer$c */
    /* loaded from: classes6.dex */
    public static final class C6361c {

        /* renamed from: a */
        @CheckForNull
        public Thread f35327a;

        /* renamed from: b */
        @CheckForNull
        public Runnable f35328b;

        /* renamed from: c */
        @CheckForNull
        public Executor f35329c;

        public C6361c() {
        }

        public /* synthetic */ C6361c(C6359a c6359a) {
            this();
        }
    }

    public static ExecutionSequencer create() {
        return new ExecutionSequencer();
    }

    /* renamed from: d */
    public static /* synthetic */ void m27705d(TrustedListenableFutureTask trustedListenableFutureTask, SettableFuture settableFuture, ListenableFuture listenableFuture, ListenableFuture listenableFuture2, TaskNonReentrantExecutor taskNonReentrantExecutor) {
        if (trustedListenableFutureTask.isDone()) {
            settableFuture.setFuture(listenableFuture);
        } else if (listenableFuture2.isCancelled() && taskNonReentrantExecutor.trySetCancelled()) {
            trustedListenableFutureTask.cancel(false);
        }
    }

    public <T> ListenableFuture<T> submit(Callable<T> callable, Executor executor) {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(executor);
        return submitAsync(new C6359a(this, callable), executor);
    }

    public <T> ListenableFuture<T> submitAsync(AsyncCallable<T> asyncCallable, Executor executor) {
        Preconditions.checkNotNull(asyncCallable);
        Preconditions.checkNotNull(executor);
        final TaskNonReentrantExecutor taskNonReentrantExecutor = new TaskNonReentrantExecutor(executor, this, null);
        C6360b c6360b = new C6360b(this, taskNonReentrantExecutor, asyncCallable);
        final SettableFuture create = SettableFuture.create();
        final ListenableFuture<Void> andSet = this.f35322a.getAndSet(create);
        final TrustedListenableFutureTask m27846x = TrustedListenableFutureTask.m27846x(c6360b);
        andSet.addListener(m27846x, taskNonReentrantExecutor);
        final ListenableFuture<T> nonCancellationPropagating = Futures.nonCancellationPropagating(m27846x);
        Runnable runnable = new Runnable() { // from class: com.google.common.util.concurrent.e
            @Override // java.lang.Runnable
            public final void run() {
                ExecutionSequencer.m27705d(TrustedListenableFutureTask.this, create, andSet, nonCancellationPropagating, taskNonReentrantExecutor);
            }
        };
        nonCancellationPropagating.addListener(runnable, MoreExecutors.directExecutor());
        m27846x.addListener(runnable, MoreExecutors.directExecutor());
        return nonCancellationPropagating;
    }
}
