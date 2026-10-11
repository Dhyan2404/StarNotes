package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes12.dex */
public class Memoizer<I, O> implements Computable<I, O> {

    /* renamed from: a */
    public final ConcurrentMap<I, Future<O>> f107517a;

    /* renamed from: b */
    public final Computable<I, O> f107518b;

    /* renamed from: c */
    public final boolean f107519c;

    /* renamed from: org.apache.commons.lang3.concurrent.Memoizer$a */
    /* loaded from: classes12.dex */
    public class CallableC18953a implements Callable<O> {

        /* renamed from: e */
        public final /* synthetic */ Object f107520e;

        public CallableC18953a(Object obj) {
            this.f107520e = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        public O call() throws InterruptedException {
            return (O) Memoizer.this.f107518b.compute(this.f107520e);
        }
    }

    public Memoizer(Computable<I, O> computable) {
        this(computable, false);
    }

    /* renamed from: b */
    public final RuntimeException m67313b(Throwable th) {
        if (th instanceof RuntimeException) {
            return (RuntimeException) th;
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        throw new IllegalStateException("Unchecked exception", th);
    }

    @Override // org.apache.commons.lang3.concurrent.Computable
    public O compute(I i) throws InterruptedException {
        FutureTask futureTask;
        while (true) {
            Future<O> future = this.f107517a.get(i);
            if (future == null && (future = this.f107517a.putIfAbsent(i, (futureTask = new FutureTask(new CallableC18953a(i))))) == null) {
                futureTask.run();
                future = futureTask;
            }
            try {
                continue;
                return future.get();
            } catch (CancellationException unused) {
                this.f107517a.remove(i, future);
            } catch (ExecutionException e) {
                if (this.f107519c) {
                    this.f107517a.remove(i, future);
                }
                throw this.m67313b(e.getCause());
            }
        }
    }

    public Memoizer(Computable<I, O> computable, boolean z) {
        this.f107517a = new ConcurrentHashMap();
        this.f107518b = computable;
        this.f107519c = z;
    }
}
