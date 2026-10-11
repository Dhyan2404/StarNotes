package androidx.work.impl.utils.futures;

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

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public abstract class AbstractFuture<V> implements ListenableFuture<V> {

    /* renamed from: h */
    public static final boolean f12004h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: i */
    public static final Logger f12005i = Logger.getLogger(AbstractFuture.class.getName());

    /* renamed from: j */
    public static final long f12006j = 1000;

    /* renamed from: k */
    public static final AbstractC1679b f12007k;

    /* renamed from: l */
    public static final Object f12008l;

    /* renamed from: e */
    @Nullable
    public volatile Object f12009e;

    /* renamed from: f */
    @Nullable
    public volatile C1681d f12010f;

    /* renamed from: g */
    @Nullable
    public volatile C1685h f12011g;

    /* loaded from: classes3.dex */
    public static final class Failure {

        /* renamed from: b */
        public static final Failure f12012b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.work.impl.utils.futures.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* renamed from: a */
        public final Throwable f12013a;

        public Failure(Throwable exception) {
            this.f12013a = (Throwable) AbstractFuture.m7164c(exception);
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$b */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1679b {
        public AbstractC1679b() {
        }

        /* renamed from: a */
        public abstract boolean mo7176a(AbstractFuture<?> future, C1681d expect, C1681d update);

        /* renamed from: b */
        public abstract boolean mo7177b(AbstractFuture<?> future, Object expect, Object update);

        /* renamed from: c */
        public abstract boolean mo7178c(AbstractFuture<?> future, C1685h expect, C1685h update);

        /* renamed from: d */
        public abstract void mo7179d(C1685h waiter, C1685h newValue);

        /* renamed from: e */
        public abstract void mo7180e(C1685h waiter, Thread newValue);
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$c */
    /* loaded from: classes3.dex */
    public static final class C1680c {

        /* renamed from: c */
        public static final C1680c f12014c;

        /* renamed from: d */
        public static final C1680c f12015d;

        /* renamed from: a */
        public final boolean f12016a;

        /* renamed from: b */
        @Nullable
        public final Throwable f12017b;

        static {
            if (AbstractFuture.f12004h) {
                f12015d = null;
                f12014c = null;
            } else {
                f12015d = new C1680c(false, null);
                f12014c = new C1680c(true, null);
            }
        }

        public C1680c(boolean wasInterrupted, @Nullable Throwable cause) {
            this.f12016a = wasInterrupted;
            this.f12017b = cause;
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$d */
    /* loaded from: classes3.dex */
    public static final class C1681d {

        /* renamed from: d */
        public static final C1681d f12018d = new C1681d(null, null);

        /* renamed from: a */
        public final Runnable f12019a;

        /* renamed from: b */
        public final Executor f12020b;

        /* renamed from: c */
        @Nullable
        public C1681d f12021c;

        public C1681d(Runnable task, Executor executor) {
            this.f12019a = task;
            this.f12020b = executor;
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$e */
    /* loaded from: classes3.dex */
    public static final class C1682e extends AbstractC1679b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C1685h, Thread> f12022a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C1685h, C1685h> f12023b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractFuture, C1685h> f12024c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractFuture, C1681d> f12025d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractFuture, Object> f12026e;

        public C1682e(AtomicReferenceFieldUpdater<C1685h, Thread> waiterThreadUpdater, AtomicReferenceFieldUpdater<C1685h, C1685h> waiterNextUpdater, AtomicReferenceFieldUpdater<AbstractFuture, C1685h> waitersUpdater, AtomicReferenceFieldUpdater<AbstractFuture, C1681d> listenersUpdater, AtomicReferenceFieldUpdater<AbstractFuture, Object> valueUpdater) {
            super();
            this.f12022a = waiterThreadUpdater;
            this.f12023b = waiterNextUpdater;
            this.f12024c = waitersUpdater;
            this.f12025d = listenersUpdater;
            this.f12026e = valueUpdater;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: a */
        public boolean mo7176a(AbstractFuture<?> future, C1681d expect, C1681d update) {
            return C14434t4.m57298a(this.f12025d, future, expect, update);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: b */
        public boolean mo7177b(AbstractFuture<?> future, Object expect, Object update) {
            return C14434t4.m57298a(this.f12026e, future, expect, update);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: c */
        public boolean mo7178c(AbstractFuture<?> future, C1685h expect, C1685h update) {
            return C14434t4.m57298a(this.f12024c, future, expect, update);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: d */
        public void mo7179d(C1685h waiter, C1685h newValue) {
            this.f12023b.lazySet(waiter, newValue);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: e */
        public void mo7180e(C1685h waiter, Thread newValue) {
            this.f12022a.lazySet(waiter, newValue);
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$f */
    /* loaded from: classes3.dex */
    public static final class RunnableC1683f<V> implements Runnable {

        /* renamed from: e */
        public final AbstractFuture<V> f12027e;

        /* renamed from: f */
        public final ListenableFuture<? extends V> f12028f;

        public RunnableC1683f(AbstractFuture<V> owner, ListenableFuture<? extends V> future) {
            this.f12027e = owner;
            this.f12028f = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f12027e.f12009e != this) {
                return;
            }
            if (AbstractFuture.f12007k.mo7177b(this.f12027e, this, AbstractFuture.m7167h(this.f12028f))) {
                AbstractFuture.m7165e(this.f12027e);
            }
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$g */
    /* loaded from: classes3.dex */
    public static final class C1684g extends AbstractC1679b {
        public C1684g() {
            super();
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: a */
        public boolean mo7176a(AbstractFuture<?> future, C1681d expect, C1681d update) {
            synchronized (future) {
                if (future.f12010f != expect) {
                    return false;
                }
                future.f12010f = update;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: b */
        public boolean mo7177b(AbstractFuture<?> future, Object expect, Object update) {
            synchronized (future) {
                if (future.f12009e != expect) {
                    return false;
                }
                future.f12009e = update;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: c */
        public boolean mo7178c(AbstractFuture<?> future, C1685h expect, C1685h update) {
            synchronized (future) {
                if (future.f12011g != expect) {
                    return false;
                }
                future.f12011g = update;
                return true;
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: d */
        public void mo7179d(C1685h waiter, C1685h newValue) {
            waiter.f12031b = newValue;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AbstractC1679b
        /* renamed from: e */
        public void mo7180e(C1685h waiter, Thread newValue) {
            waiter.f12030a = newValue;
        }
    }

    /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$h */
    /* loaded from: classes3.dex */
    public static final class C1685h {

        /* renamed from: c */
        public static final C1685h f12029c = new C1685h(false);

        /* renamed from: a */
        @Nullable
        public volatile Thread f12030a;

        /* renamed from: b */
        @Nullable
        public volatile C1685h f12031b;

        public C1685h(boolean unused) {
        }

        /* renamed from: a */
        public void m7181a(C1685h next) {
            AbstractFuture.f12007k.mo7179d(this, next);
        }

        /* renamed from: b */
        public void m7182b() {
            Thread thread = this.f12030a;
            if (thread != null) {
                this.f12030a = null;
                LockSupport.unpark(thread);
            }
        }

        public C1685h() {
            AbstractFuture.f12007k.mo7180e(this, Thread.currentThread());
        }
    }

    static {
        AbstractC1679b c1684g;
        try {
            c1684g = new C1682e(AtomicReferenceFieldUpdater.newUpdater(C1685h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C1685h.class, C1685h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C1685h.class, C6998g.f39679a), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C1681d.class, C6997f.f39671c), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "e"));
            th = null;
        } catch (Throwable th) {
            th = th;
            c1684g = new C1684g();
        }
        f12007k = c1684g;
        if (th != null) {
            f12005i.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f12008l = new Object();
    }

    /* renamed from: b */
    public static CancellationException m7163b(@Nullable String message, @Nullable Throwable cause) {
        CancellationException cancellationException = new CancellationException(message);
        cancellationException.initCause(cause);
        return cancellationException;
    }

    @NonNull
    /* renamed from: c */
    public static <T> T m7164c(@Nullable T reference) {
        reference.getClass();
        return reference;
    }

    /* renamed from: e */
    public static void m7165e(AbstractFuture<?> abstractFuture) {
        C1681d c1681d = null;
        while (true) {
            abstractFuture.m7173k();
            abstractFuture.afterDone();
            C1681d m7170d = abstractFuture.m7170d(c1681d);
            while (m7170d != null) {
                c1681d = m7170d.f12021c;
                Runnable runnable = m7170d.f12019a;
                if (runnable instanceof RunnableC1683f) {
                    RunnableC1683f runnableC1683f = (RunnableC1683f) runnable;
                    abstractFuture = runnableC1683f.f12027e;
                    if (abstractFuture.f12009e == runnableC1683f) {
                        if (f12007k.mo7177b(abstractFuture, runnableC1683f, m7167h(runnableC1683f.f12028f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    m7166f(runnable, m7170d.f12020b);
                }
                m7170d = c1681d;
            }
            return;
        }
    }

    /* renamed from: f */
    public static void m7166f(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            f12005i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    /* renamed from: h */
    public static Object m7167h(ListenableFuture<?> future) {
        if (future instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) future).f12009e;
            if (!(obj instanceof C1680c)) {
                return obj;
            }
            C1680c c1680c = (C1680c) obj;
            return c1680c.f12016a ? c1680c.f12017b != null ? new C1680c(false, c1680c.f12017b) : C1680c.f12015d : obj;
        }
        boolean isCancelled = future.isCancelled();
        if ((!f12004h) && isCancelled) {
            return C1680c.f12015d;
        }
        try {
            Object m7168i = m7168i(future);
            return m7168i == null ? f12008l : m7168i;
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C1680c(false, e);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + future, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    /* renamed from: i */
    public static <V> V m7168i(Future<V> future) throws ExecutionException {
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
    public final void m7169a(StringBuilder builder) {
        try {
            Object m7168i = m7168i(this);
            builder.append("SUCCESS, result=[");
            builder.append(m7175m(m7168i));
            builder.append(IteratorUtils.f104924b);
        } catch (CancellationException unused) {
            builder.append("CANCELLED");
        } catch (RuntimeException e) {
            builder.append("UNKNOWN, cause=[");
            builder.append(e.getClass());
            builder.append(" thrown from get()]");
        } catch (ExecutionException e2) {
            builder.append("FAILURE, cause=[");
            builder.append(e2.getCause());
            builder.append(IteratorUtils.f104924b);
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable listener, Executor executor) {
        m7164c(listener);
        m7164c(executor);
        C1681d c1681d = this.f12010f;
        if (c1681d != C1681d.f12018d) {
            C1681d c1681d2 = new C1681d(listener, executor);
            do {
                c1681d2.f12021c = c1681d;
                if (f12007k.mo7176a(this, c1681d, c1681d2)) {
                    return;
                } else {
                    c1681d = this.f12010f;
                }
            } while (c1681d != C1681d.f12018d);
        }
        m7166f(listener, executor);
    }

    public void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean mayInterruptIfRunning) {
        Object obj = this.f12009e;
        if (!(obj == null) && !(obj instanceof RunnableC1683f)) {
            return false;
        }
        C1680c c1680c = f12004h ? new C1680c(mayInterruptIfRunning, new CancellationException("Future.cancel() was called.")) : mayInterruptIfRunning ? C1680c.f12014c : C1680c.f12015d;
        boolean z = false;
        while (true) {
            if (f12007k.mo7177b(this, obj, c1680c)) {
                if (mayInterruptIfRunning) {
                    this.interruptTask();
                }
                m7165e(this);
                if (!(obj instanceof RunnableC1683f)) {
                    return true;
                }
                ListenableFuture<? extends V> listenableFuture = ((RunnableC1683f) obj).f12028f;
                if (!(listenableFuture instanceof AbstractFuture)) {
                    listenableFuture.cancel(mayInterruptIfRunning);
                    return true;
                }
                this = (AbstractFuture) listenableFuture;
                obj = this.f12009e;
                if (!(obj == null) && !(obj instanceof RunnableC1683f)) {
                    return true;
                }
                z = true;
            } else {
                obj = this.f12009e;
                if (!(obj instanceof RunnableC1683f)) {
                    return z;
                }
            }
        }
    }

    /* renamed from: d */
    public final C1681d m7170d(C1681d onto) {
        C1681d c1681d;
        do {
            c1681d = this.f12010f;
        } while (!f12007k.mo7176a(this, c1681d, C1681d.f12018d));
        while (true) {
            C1681d c1681d2 = onto;
            onto = c1681d;
            if (onto == null) {
                return c1681d2;
            }
            c1681d = onto.f12021c;
            onto.f12021c = c1681d2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final V m7171g(Object obj) throws ExecutionException {
        if (obj instanceof C1680c) {
            throw m7163b("Task was cancelled.", ((C1680c) obj).f12017b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f12013a);
        }
        if (obj == f12008l) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final V get(long timeout, TimeUnit unit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = unit.toNanos(timeout);
        if (!Thread.interrupted()) {
            Object obj = this.f12009e;
            if ((obj != null) & (!(obj instanceof RunnableC1683f))) {
                return m7171g(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C1685h c1685h = this.f12011g;
                if (c1685h != C1685h.f12029c) {
                    C1685h c1685h2 = new C1685h();
                    do {
                        c1685h2.m7181a(c1685h);
                        if (f12007k.mo7178c(this, c1685h, c1685h2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f12009e;
                                    if ((obj2 != null) & (!(obj2 instanceof RunnableC1683f))) {
                                        return m7171g(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    m7174l(c1685h2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            m7174l(c1685h2);
                        } else {
                            c1685h = this.f12011g;
                        }
                    } while (c1685h != C1685h.f12029c);
                }
                return m7171g(this.f12009e);
            }
            while (nanos > 0) {
                Object obj3 = this.f12009e;
                if ((obj3 != null) & (!(obj3 instanceof RunnableC1683f))) {
                    return m7171g(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractFuture = toString();
            String obj4 = unit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj4.toLowerCase(locale);
            String str = "Waited " + timeout + " " + unit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j = -nanos;
                long convert = unit.convert(j, TimeUnit.NANOSECONDS);
                long nanos2 = j - unit.toNanos(convert);
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
            throw new TimeoutException(str + " for " + abstractFuture);
        }
        throw new InterruptedException();
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f12009e instanceof C1680c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r2 instanceof RunnableC1683f)) & (this.f12009e != null);
    }

    /* renamed from: j */
    public final void m7172j(@Nullable Future<?> related) {
        if ((related != null) && isCancelled()) {
            related.cancel(wasInterrupted());
        }
    }

    /* renamed from: k */
    public final void m7173k() {
        C1685h c1685h;
        do {
            c1685h = this.f12011g;
        } while (!f12007k.mo7178c(this, c1685h, C1685h.f12029c));
        while (c1685h != null) {
            c1685h.m7182b();
            c1685h = c1685h.f12031b;
        }
    }

    /* renamed from: l */
    public final void m7174l(C1685h node) {
        node.f12030a = null;
        while (true) {
            C1685h c1685h = this.f12011g;
            if (c1685h == C1685h.f12029c) {
                return;
            }
            C1685h c1685h2 = null;
            while (c1685h != null) {
                C1685h c1685h3 = c1685h.f12031b;
                if (c1685h.f12030a != null) {
                    c1685h2 = c1685h;
                } else if (c1685h2 != null) {
                    c1685h2.f12031b = c1685h3;
                    if (c1685h2.f12030a == null) {
                        break;
                    }
                } else if (!f12007k.mo7178c(this, c1685h, c1685h3)) {
                    break;
                }
                c1685h = c1685h3;
            }
            return;
        }
    }

    /* renamed from: m */
    public final String m7175m(Object o) {
        return o == this ? "this future" : String.valueOf(o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public String pendingToString() {
        Object obj = this.f12009e;
        if (obj instanceof RunnableC1683f) {
            return "setFuture=[" + m7175m(((RunnableC1683f) obj).f12028f) + IteratorUtils.f104924b;
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(@Nullable V v) {
        if (v == null) {
            v = (V) f12008l;
        }
        if (!f12007k.mo7177b(this, null, v)) {
            return false;
        }
        m7165e(this);
        return true;
    }

    public boolean setException(Throwable throwable) {
        if (!f12007k.mo7177b(this, null, new Failure((Throwable) m7164c(throwable)))) {
            return false;
        }
        m7165e(this);
        return true;
    }

    public boolean setFuture(ListenableFuture<? extends V> future) {
        Failure failure;
        m7164c(future);
        Object obj = this.f12009e;
        if (obj == null) {
            if (future.isDone()) {
                if (!f12007k.mo7177b(this, null, m7167h(future))) {
                    return false;
                }
                m7165e(this);
                return true;
            }
            RunnableC1683f runnableC1683f = new RunnableC1683f(this, future);
            if (f12007k.mo7177b(this, null, runnableC1683f)) {
                try {
                    future.addListener(runnableC1683f, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable unused) {
                        failure = Failure.f12012b;
                    }
                    f12007k.mo7177b(this, runnableC1683f, failure);
                }
                return true;
            }
            obj = this.f12009e;
        }
        if (obj instanceof C1680c) {
            future.cancel(((C1680c) obj).f12016a);
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
            m7169a(sb);
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
                m7169a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public final boolean wasInterrupted() {
        Object obj = this.f12009e;
        return (obj instanceof C1680c) && ((C1680c) obj).f12016a;
    }

    @Override // java.util.concurrent.Future
    public final V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f12009e;
            if ((obj2 != null) & (!(obj2 instanceof RunnableC1683f))) {
                return m7171g(obj2);
            }
            C1685h c1685h = this.f12011g;
            if (c1685h != C1685h.f12029c) {
                C1685h c1685h2 = new C1685h();
                do {
                    c1685h2.m7181a(c1685h);
                    if (f12007k.mo7178c(this, c1685h, c1685h2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f12009e;
                            } else {
                                m7174l(c1685h2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof RunnableC1683f))));
                        return m7171g(obj);
                    }
                    c1685h = this.f12011g;
                } while (c1685h != C1685h.f12029c);
            }
            return m7171g(this.f12009e);
        }
        throw new InterruptedException();
    }
}
