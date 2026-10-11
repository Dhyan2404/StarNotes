package com.oplus.ocs.base.task;

import com.oplus.ocs.base.utils.C13074d;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes9.dex */
public class Tasks {

    /* renamed from: com.oplus.ocs.base.task.Tasks$a */
    /* loaded from: classes9.dex */
    public static class C13050a implements InterfaceC13052c {

        /* renamed from: a */
        private final Object f63099a = new Object();

        /* renamed from: b */
        private TaskImpl<Void> f63100b;

        /* renamed from: c */
        private Exception f63101c;

        /* renamed from: d */
        private volatile int f63102d;

        /* renamed from: e */
        private volatile int f63103e;

        /* renamed from: f */
        private volatile int f63104f;

        /* renamed from: g */
        private volatile int f63105g;

        /* renamed from: h */
        private volatile boolean f63106h;

        public C13050a(int i, TaskImpl<Void> taskImpl) {
            this.f63102d = i;
            this.f63100b = taskImpl;
        }

        /* renamed from: a */
        private void m52213a() {
            synchronized (this.f63099a) {
                if (this.f63103e + this.f63104f + this.f63105g != this.f63102d) {
                    return;
                }
                if (this.f63101c != null) {
                    this.f63100b.setException(new ExecutionException(this.f63104f + " out of " + this.f63102d + " underlying tasks failed", this.f63101c));
                } else if (this.f63106h) {
                    this.f63100b.tryCancel();
                } else {
                    this.f63100b.setResult(null);
                }
            }
        }

        @Override // com.oplus.ocs.base.task.OnCanceledListener
        public final void onCanceled() {
            synchronized (this.f63099a) {
                this.f63105g++;
                this.f63106h = true;
                m52213a();
            }
        }

        @Override // com.oplus.ocs.base.task.OnFailureListener
        public final void onFailure(Exception exc) {
            C13074d.m52234a(exc);
            synchronized (this.f63099a) {
                this.f63104f++;
                this.f63101c = exc;
                m52213a();
            }
        }

        @Override // com.oplus.ocs.base.task.OnSuccessListener
        public final void onSuccess(Object obj) {
            synchronized (this.f63099a) {
                this.f63103e++;
                m52213a();
            }
        }
    }

    /* renamed from: com.oplus.ocs.base.task.Tasks$c */
    /* loaded from: classes9.dex */
    public interface InterfaceC13052c extends OnCanceledListener, OnFailureListener, OnSuccessListener<Object> {
    }

    private Tasks() {
    }

    /* renamed from: a */
    private static <TResult> TResult m52211a(Task<TResult> task) throws ExecutionException {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.getException());
    }

    public static <TResult> TResult await(Task<TResult> task) throws ExecutionException, InterruptedException {
        C13074d.m52238b("Must not be called on the main application thread");
        C13074d.m52235a(task, "Task must not be null");
        if (task.isComplete()) {
            return (TResult) m52211a(task);
        }
        C13051b c13051b = new C13051b((byte) 0);
        m52212a(task, c13051b);
        c13051b.f63107a.await();
        return (TResult) m52211a(task);
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        C13074d.m52234a(callable);
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static <TResult> Task<TResult> forCanceled() {
        TaskImpl taskImpl = new TaskImpl();
        taskImpl.tryCancel();
        return taskImpl;
    }

    public static <TResult> Task<TResult> forException(Exception exc) {
        C13074d.m52234a(exc);
        TaskImpl taskImpl = new TaskImpl();
        taskImpl.setException(exc);
        return taskImpl;
    }

    public static <TResult> Task<TResult> forResult(TResult tresult) {
        TaskImpl taskImpl = new TaskImpl();
        taskImpl.setResult(tresult);
        return taskImpl;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return forResult(null);
        }
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        TaskImpl taskImpl = new TaskImpl();
        C13050a c13050a = new C13050a(collection.size(), taskImpl);
        Iterator<? extends Task<?>> it3 = collection.iterator();
        while (it3.hasNext()) {
            m52212a(it3.next(), c13050a);
        }
        return taskImpl;
    }

    public static Task<List<Task<?>>> whenAllComplete(Collection<? extends Task<?>> collection) {
        return whenAll(collection).continueWithTask(new C13067o(collection));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Collection<? extends Task<?>> collection) {
        return (Task<List<TResult>>) whenAll(collection).continueWith(new C13068p(collection));
    }

    /* renamed from: com.oplus.ocs.base.task.Tasks$b */
    /* loaded from: classes9.dex */
    public static class C13051b implements InterfaceC13052c {

        /* renamed from: a */
        CountDownLatch f63107a;

        private C13051b() {
            this.f63107a = new CountDownLatch(1);
        }

        @Override // com.oplus.ocs.base.task.OnCanceledListener
        public final void onCanceled() {
            this.f63107a.countDown();
        }

        @Override // com.oplus.ocs.base.task.OnFailureListener
        public final void onFailure(Exception exc) {
            this.f63107a.countDown();
        }

        @Override // com.oplus.ocs.base.task.OnSuccessListener
        public final void onSuccess(Object obj) {
            this.f63107a.countDown();
        }

        public C13051b(byte b) {
            this();
        }
    }

    public static Task<List<Task<?>>> whenAllComplete(Task<?>... taskArr) {
        return whenAllComplete(Arrays.asList(taskArr));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Task<?>... taskArr) {
        return whenAllSuccess(Arrays.asList(taskArr));
    }

    public static <TResult> Task<TResult> call(Executor executor, Callable<TResult> callable) {
        C13074d.m52235a(executor, "Executor must not be null");
        C13074d.m52235a(callable, "Callback must not be null");
        TaskImpl taskImpl = new TaskImpl();
        executor.execute(new RunnableC13053a(taskImpl, callable));
        return taskImpl;
    }

    /* renamed from: a */
    private static <TResult> void m52212a(Task<TResult> task, InterfaceC13052c interfaceC13052c) {
        Executor executor = TaskExecutors.CURRENT_THREAD;
        task.addOnSuccessListener(executor, interfaceC13052c);
        task.addOnFailureListener(executor, interfaceC13052c);
        task.addOnCanceledListener(executor, interfaceC13052c);
    }

    public static <TResult> TResult await(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C13074d.m52238b("Must not be called on the main application thread");
        C13074d.m52235a(task, "Task must not be null");
        C13074d.m52235a(timeUnit, "TimeUnit must not be null");
        if (task.isComplete()) {
            return (TResult) m52211a(task);
        }
        C13051b c13051b = new C13051b((byte) 0);
        m52212a(task, c13051b);
        if (c13051b.f63107a.await(j, timeUnit)) {
            return (TResult) m52211a(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        if (taskArr.length == 0) {
            return forResult(null);
        }
        return whenAll(Arrays.asList(taskArr));
    }
}
