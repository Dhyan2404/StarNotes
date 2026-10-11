package androidx.concurrent.futures;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.ListenableFuture;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sunia.HTREnginev2.C14434t4;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.collections4.IteratorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public abstract class AbstractResolvableFuture<V> implements ListenableFuture<V> {

    /* renamed from: h */
    public static final boolean f2542h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: i */
    public static final Logger f2543i = Logger.getLogger(AbstractResolvableFuture.class.getName());

    /* renamed from: j */
    public static final long f2544j = 1000;

    /* renamed from: k */
    public static final AbstractC0376b f2545k;

    /* renamed from: l */
    public static final Object f2546l;

    /* renamed from: e */
    @Nullable
    public volatile Object f2547e;

    /* renamed from: f */
    @Nullable
    public volatile C0378d f2548f;

    /* renamed from: g */
    @Nullable
    public volatile C0382h f2549g;

    /* loaded from: classes3.dex */
    public static final class Failure {

        /* renamed from: b */
        public static final Failure f2550b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.concurrent.futures.AbstractResolvableFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* renamed from: a */
        public final Throwable f2551a;

        public Failure(Throwable th) {
            this.f2551a = (Throwable) AbstractResolvableFuture.m1330c(th);
        }
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$b */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0376b {
        public AbstractC0376b() {
        }

        /* renamed from: a */
        public abstract boolean mo1342a(AbstractResolvableFuture<?> abstractResolvableFuture, C0378d c0378d, C0378d c0378d2);

        /* renamed from: b */
        public abstract boolean mo1343b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);

        /* renamed from: c */
        public abstract boolean mo1344c(AbstractResolvableFuture<?> abstractResolvableFuture, C0382h c0382h, C0382h c0382h2);

        /* renamed from: d */
        public abstract void mo1345d(C0382h c0382h, C0382h c0382h2);

        /* renamed from: e */
        public abstract void mo1346e(C0382h c0382h, Thread thread);
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$c */
    /* loaded from: classes3.dex */
    public static final class C0377c {

        /* renamed from: c */
        public static final C0377c f2552c;

        /* renamed from: d */
        public static final C0377c f2553d;

        /* renamed from: a */
        public final boolean f2554a;

        /* renamed from: b */
        @Nullable
        public final Throwable f2555b;

        static {
            if (AbstractResolvableFuture.f2542h) {
                f2553d = null;
                f2552c = null;
            } else {
                f2553d = new C0377c(false, null);
                f2552c = new C0377c(true, null);
            }
        }

        public C0377c(boolean z, @Nullable Throwable th) {
            this.f2554a = z;
            this.f2555b = th;
        }
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$d */
    /* loaded from: classes3.dex */
    public static final class C0378d {

        /* renamed from: d */
        public static final C0378d f2556d = new C0378d(null, null);

        /* renamed from: a */
        public final Runnable f2557a;

        /* renamed from: b */
        public final Executor f2558b;

        /* renamed from: c */
        @Nullable
        public C0378d f2559c;

        public C0378d(Runnable runnable, Executor executor) {
            this.f2557a = runnable;
            this.f2558b = executor;
        }
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$e */
    /* loaded from: classes3.dex */
    public static final class C0379e extends AbstractC0376b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C0382h, Thread> f2560a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C0382h, C0382h> f2561b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0382h> f2562c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0378d> f2563d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> f2564e;

        public C0379e(AtomicReferenceFieldUpdater<C0382h, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C0382h, C0382h> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0382h> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, C0378d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f2560a = atomicReferenceFieldUpdater;
            this.f2561b = atomicReferenceFieldUpdater2;
            this.f2562c = atomicReferenceFieldUpdater3;
            this.f2563d = atomicReferenceFieldUpdater4;
            this.f2564e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: a */
        public boolean mo1342a(AbstractResolvableFuture<?> abstractResolvableFuture, C0378d c0378d, C0378d c0378d2) {
            return C14434t4.m57298a(this.f2563d, abstractResolvableFuture, c0378d, c0378d2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: b */
        public boolean mo1343b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return C14434t4.m57298a(this.f2564e, abstractResolvableFuture, obj, obj2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: c */
        public boolean mo1344c(AbstractResolvableFuture<?> abstractResolvableFuture, C0382h c0382h, C0382h c0382h2) {
            return C14434t4.m57298a(this.f2562c, abstractResolvableFuture, c0382h, c0382h2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: d */
        public void mo1345d(C0382h c0382h, C0382h c0382h2) {
            this.f2561b.lazySet(c0382h, c0382h2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: e */
        public void mo1346e(C0382h c0382h, Thread thread) {
            this.f2560a.lazySet(c0382h, thread);
        }
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$f */
    /* loaded from: classes3.dex */
    public static final class RunnableC0380f<V> implements Runnable {

        /* renamed from: e */
        public final AbstractResolvableFuture<V> f2565e;

        /* renamed from: f */
        public final ListenableFuture<? extends V> f2566f;

        public RunnableC0380f(AbstractResolvableFuture<V> abstractResolvableFuture, ListenableFuture<? extends V> listenableFuture) {
            this.f2565e = abstractResolvableFuture;
            this.f2566f = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2565e.f2547e != this) {
                return;
            }
            if (AbstractResolvableFuture.f2545k.mo1343b(this.f2565e, this, AbstractResolvableFuture.m1333h(this.f2566f))) {
                AbstractResolvableFuture.m1331e(this.f2565e);
            }
        }
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$g */
    /* loaded from: classes3.dex */
    public static final class C0381g extends AbstractC0376b {
        public C0381g() {
            super();
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: a */
        public boolean mo1342a(AbstractResolvableFuture<?> abstractResolvableFuture, C0378d c0378d, C0378d c0378d2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2548f != c0378d) {
                    return false;
                }
                abstractResolvableFuture.f2548f = c0378d2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: b */
        public boolean mo1343b(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2547e != obj) {
                    return false;
                }
                abstractResolvableFuture.f2547e = obj2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: c */
        public boolean mo1344c(AbstractResolvableFuture<?> abstractResolvableFuture, C0382h c0382h, C0382h c0382h2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.f2549g != c0382h) {
                    return false;
                }
                abstractResolvableFuture.f2549g = c0382h2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: d */
        public void mo1345d(C0382h c0382h, C0382h c0382h2) {
            c0382h.f2569b = c0382h2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AbstractC0376b
        /* renamed from: e */
        public void mo1346e(C0382h c0382h, Thread thread) {
            c0382h.f2568a = thread;
        }
    }

    /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$h */
    /* loaded from: classes3.dex */
    public static final class C0382h {

        /* renamed from: c */
        public static final C0382h f2567c = new C0382h(false);

        /* renamed from: a */
        @Nullable
        public volatile Thread f2568a;

        /* renamed from: b */
        @Nullable
        public volatile C0382h f2569b;

        public C0382h(boolean z) {
        }

        /* renamed from: a */
        public void m1347a(C0382h c0382h) {
            AbstractResolvableFuture.f2545k.mo1345d(this, c0382h);
        }

        /* renamed from: b */
        public void m1348b() {
            Thread thread = this.f2568a;
            if (thread != null) {
                this.f2568a = null;
                LockSupport.unpark(thread);
            }
        }

        public C0382h() {
            AbstractResolvableFuture.f2545k.mo1346e(this, Thread.currentThread());
        }
    }

    static {
        AbstractC0376b c0381g;
        try {
            c0381g = new C0379e(AtomicReferenceFieldUpdater.newUpdater(C0382h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C0382h.class, C0382h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, C0382h.class, C6998g.f39679a), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, C0378d.class, C6997f.f39671c), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "e"));
            th = null;
        } catch (Throwable th) {
            th = th;
            c0381g = new C0381g();
        }
        f2545k = c0381g;
        if (th != null) {
            f2543i.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f2546l = new Object();
    }

    /* renamed from: b */
    public static CancellationException m1329b(@Nullable String str, @Nullable Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    @NonNull
    /* renamed from: c */
    static <T> T m1330c(@Nullable T t) {
        t.getClass();
        return t;
    }

    /* renamed from: e */
    public static void m1331e(AbstractResolvableFuture<?> abstractResolvableFuture) {
        C0378d c0378d = null;
        while (true) {
            abstractResolvableFuture.m1339k();
            abstractResolvableFuture.afterDone();
            C0378d m1336d = abstractResolvableFuture.m1336d(c0378d);
            while (m1336d != null) {
                c0378d = m1336d.f2559c;
                Runnable runnable = m1336d.f2557a;
                if (runnable instanceof RunnableC0380f) {
                    RunnableC0380f runnableC0380f = (RunnableC0380f) runnable;
                    abstractResolvableFuture = runnableC0380f.f2565e;
                    if (abstractResolvableFuture.f2547e == runnableC0380f) {
                        if (f2545k.mo1343b(abstractResolvableFuture, runnableC0380f, m1333h(runnableC0380f.f2566f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m1332f(runnable, m1336d.f2558b);
                }
                m1336d = c0378d;
            }
            return;
        }
    }

    /* renamed from: f */
    public static void m1332f(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f2543i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: h */
    static Object m1333h(ListenableFuture<?> listenableFuture) {
        if (listenableFuture instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) listenableFuture).f2547e;
            if (!(obj instanceof C0377c)) {
                return obj;
            }
            C0377c c0377c = (C0377c) obj;
            return c0377c.f2554a ? c0377c.f2555b != null ? new C0377c(false, c0377c.f2555b) : C0377c.f2553d : obj;
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!f2542h) && isCancelled) {
            return C0377c.f2553d;
        }
        try {
            Object m1334i = m1334i(listenableFuture);
            return m1334i == null ? f2546l : m1334i;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C0377c(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: i */
    static <V> V m1334i(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* renamed from: a */
    public final void m1335a(StringBuilder sb) {
        try {
            Object m1334i = m1334i(this);
            sb.append("SUCCESS, result=[");
            sb.append(m1341m(m1334i));
            sb.append(IteratorUtils.f104924b);
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            sb.append("FAILURE, cause=[");
            sb.append(e2.getCause());
            sb.append(IteratorUtils.f104924b);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        m1330c(runnable);
        m1330c(executor);
        C0378d c0378d = this.f2548f;
        if (c0378d != C0378d.f2556d) {
            C0378d c0378d2 = new C0378d(runnable, executor);
            do {
                c0378d2.f2559c = c0378d;
                if (f2545k.mo1342a(this, c0378d, c0378d2)) {
                    return;
                } else {
                    c0378d = this.f2548f;
                }
            } while (c0378d != C0378d.f2556d);
        }
        m1332f(runnable, executor);
    }

    public void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.f2547e;
        if (!(obj == null) && !(obj instanceof RunnableC0380f)) {
            return false;
        }
        C0377c c0377c = f2542h ? new C0377c(z, new CancellationException("Future.cancel() was called.")) : z ? C0377c.f2552c : C0377c.f2553d;
        boolean z2 = false;
        while (true) {
            if (f2545k.mo1343b(this, obj, c0377c)) {
                if (z) {
                    this.interruptTask();
                }
                m1331e(this);
                if (!(obj instanceof RunnableC0380f)) {
                    return true;
                }
                ListenableFuture<? extends V> listenableFuture = ((RunnableC0380f) obj).f2566f;
                if (!(listenableFuture instanceof AbstractResolvableFuture)) {
                    listenableFuture.cancel(z);
                    return true;
                }
                this = (AbstractResolvableFuture) listenableFuture;
                obj = this.f2547e;
                if (!(obj == null) && !(obj instanceof RunnableC0380f)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = this.f2547e;
                if (!(obj instanceof RunnableC0380f)) {
                    return z2;
                }
            }
        }
    }

    /* renamed from: d */
    public final C0378d m1336d(C0378d c0378d) {
        C0378d c0378d2;
        do {
            c0378d2 = this.f2548f;
        } while (!f2545k.mo1342a(this, c0378d2, C0378d.f2556d));
        while (true) {
            C0378d c0378d3 = c0378d;
            c0378d = c0378d2;
            if (c0378d == null) {
                return c0378d3;
            }
            c0378d2 = c0378d.f2559c;
            c0378d.f2559c = c0378d3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final V m1337g(Object obj) throws ExecutionException {
        if (obj instanceof C0377c) {
            throw m1329b("Task was cancelled.", ((C0377c) obj).f2555b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f2551a);
        }
        if (obj == f2546l) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.f2547e;
            if ((obj != null) & (!(obj instanceof RunnableC0380f))) {
                return m1337g(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C0382h c0382h = this.f2549g;
                if (c0382h != C0382h.f2567c) {
                    C0382h c0382h2 = new C0382h();
                    do {
                        c0382h2.m1347a(c0382h);
                        if (f2545k.mo1344c(this, c0382h, c0382h2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f2547e;
                                    if ((obj2 != null) & (!(obj2 instanceof RunnableC0380f))) {
                                        return m1337g(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    m1340l(c0382h2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            m1340l(c0382h2);
                        } else {
                            c0382h = this.f2549g;
                        }
                    } while (c0382h != C0382h.f2567c);
                }
                return m1337g(this.f2547e);
            }
            while (nanos > 0) {
                Object obj3 = this.f2547e;
                if ((obj3 != null) & (!(obj3 instanceof RunnableC0380f))) {
                    return m1337g(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractResolvableFuture = toString();
            String obj4 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj4.toLowerCase(locale);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String str3 = str2 + convert + " " + lowerCase;
                    if (z) {
                        str3 = str3 + ",";
                    }
                    str2 = str3 + " ";
                }
                if (z) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + abstractResolvableFuture);
        }
        throw new InterruptedException();
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f2547e instanceof C0377c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r2 instanceof RunnableC0380f)) & (this.f2547e != null);
    }

    /* renamed from: j */
    final void m1338j(@Nullable Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* renamed from: k */
    public final void m1339k() {
        C0382h c0382h;
        do {
            c0382h = this.f2549g;
        } while (!f2545k.mo1344c(this, c0382h, C0382h.f2567c));
        while (c0382h != null) {
            c0382h.m1348b();
            c0382h = c0382h.f2569b;
        }
    }

    /* renamed from: l */
    public final void m1340l(C0382h c0382h) {
        c0382h.f2568a = null;
        while (true) {
            C0382h c0382h2 = this.f2549g;
            if (c0382h2 == C0382h.f2567c) {
                return;
            }
            C0382h c0382h3 = null;
            while (c0382h2 != null) {
                C0382h c0382h4 = c0382h2.f2569b;
                if (c0382h2.f2568a != null) {
                    c0382h3 = c0382h2;
                } else if (c0382h3 != null) {
                    c0382h3.f2569b = c0382h4;
                    if (c0382h3.f2568a == null) {
                        break;
                    }
                } else if (!f2545k.mo1344c(this, c0382h2, c0382h4)) {
                    break;
                }
                c0382h2 = c0382h4;
            }
            return;
        }
    }

    /* renamed from: m */
    public final String m1341m(Object obj) {
        return obj == this ? "this future" : String.valueOf(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public String pendingToString() {
        Object obj = this.f2547e;
        if (obj instanceof RunnableC0380f) {
            return "setFuture=[" + m1341m(((RunnableC0380f) obj).f2566f) + IteratorUtils.f104924b;
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(@Nullable V v) {
        if (v == null) {
            v = (V) f2546l;
        }
        if (!f2545k.mo1343b(this, null, v)) {
            return false;
        }
        m1331e(this);
        return true;
    }

    public boolean setException(Throwable th) {
        if (!f2545k.mo1343b(this, null, new Failure((Throwable) m1330c(th)))) {
            return false;
        }
        m1331e(this);
        return true;
    }

    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        m1330c(listenableFuture);
        Object obj = this.f2547e;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!f2545k.mo1343b(this, null, m1333h(listenableFuture))) {
                    return false;
                }
                m1331e(this);
                return true;
            }
            RunnableC0380f runnableC0380f = new RunnableC0380f(this, listenableFuture);
            if (f2545k.mo1343b(this, null, runnableC0380f)) {
                try {
                    listenableFuture.addListener(runnableC0380f, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable unused) {
                        failure = Failure.f2550b;
                    }
                    f2545k.mo1343b(this, runnableC0380f, failure);
                }
                return true;
            }
            obj = this.f2547e;
        }
        if (obj instanceof C0377c) {
            listenableFuture.cancel(((C0377c) obj).f2554a);
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m1335a(sb);
        } else {
            try {
                str = pendingToString();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append(IteratorUtils.f104924b);
            } else if (isDone()) {
                m1335a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public final boolean wasInterrupted() {
        Object obj = this.f2547e;
        return (obj instanceof C0377c) && ((C0377c) obj).f2554a;
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f2547e;
            if ((obj2 != null) & (!(obj2 instanceof RunnableC0380f))) {
                return m1337g(obj2);
            }
            C0382h c0382h = this.f2549g;
            if (c0382h != C0382h.f2567c) {
                C0382h c0382h2 = new C0382h();
                do {
                    c0382h2.m1347a(c0382h);
                    if (f2545k.mo1344c(this, c0382h, c0382h2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f2547e;
                            } else {
                                m1340l(c0382h2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof RunnableC0380f))));
                        return m1337g(obj);
                    }
                    c0382h = this.f2549g;
                } while (c0382h != C0382h.f2567c);
            }
            return m1337g(this.f2547e);
        }
        throw new InterruptedException();
    }
}
