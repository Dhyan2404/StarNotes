package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.j2objc.annotations.ReflectionSupport;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sunia.HTREnginev2.C14434t4;
import com.sunia.HTREnginev2.ojk;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.q5k;
import com.sunia.HTREnginev2.sgp;
import com.sunia.HTREnginev2.uvk;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
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
import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;
import sun.misc.Unsafe;

@GwtCompatible(emulated = true)
@ReflectionSupport(ReflectionSupport.Level.FULL)
@pnf
/* loaded from: classes6.dex */
public abstract class AbstractFuture<V> extends InternalFutureFailureAccess implements ListenableFuture<V> {

    /* renamed from: h */
    public static final boolean f35140h;

    /* renamed from: i */
    public static final Logger f35141i;

    /* renamed from: j */
    public static final long f35142j = 1000;

    /* renamed from: k */
    public static final AbstractC6296b f35143k;

    /* renamed from: l */
    public static final Object f35144l;

    /* renamed from: e */
    @CheckForNull
    public volatile Object f35145e;

    /* renamed from: f */
    @CheckForNull
    public volatile C6298d f35146f;

    /* renamed from: g */
    @CheckForNull
    public volatile C6305k f35147g;

    /* loaded from: classes6.dex */
    public static final class Failure {

        /* renamed from: b */
        public static final Failure f35148b = new Failure(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.common.util.concurrent.AbstractFuture.Failure.1
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        });

        /* renamed from: a */
        public final Throwable f35149a;

        public Failure(Throwable th) {
            this.f35149a = (Throwable) Preconditions.checkNotNull(th);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6296b {
        public AbstractC6296b() {
        }

        /* renamed from: a */
        public abstract boolean mo27561a(AbstractFuture<?> abstractFuture, @CheckForNull C6298d c6298d, C6298d c6298d2);

        /* renamed from: b */
        public abstract boolean mo27562b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2);

        /* renamed from: c */
        public abstract boolean mo27563c(AbstractFuture<?> abstractFuture, @CheckForNull C6305k c6305k, @CheckForNull C6305k c6305k2);

        /* renamed from: d */
        public abstract C6298d mo27564d(AbstractFuture<?> abstractFuture, C6298d c6298d);

        /* renamed from: e */
        public abstract C6305k mo27565e(AbstractFuture<?> abstractFuture, C6305k c6305k);

        /* renamed from: f */
        public abstract void mo27566f(C6305k c6305k, @CheckForNull C6305k c6305k2);

        /* renamed from: g */
        public abstract void mo27567g(C6305k c6305k, Thread thread);
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$c */
    /* loaded from: classes6.dex */
    public static final class C6297c {

        /* renamed from: c */
        @CheckForNull
        public static final C6297c f35150c;

        /* renamed from: d */
        @CheckForNull
        public static final C6297c f35151d;

        /* renamed from: a */
        public final boolean f35152a;

        /* renamed from: b */
        @CheckForNull
        public final Throwable f35153b;

        static {
            if (AbstractFuture.f35140h) {
                f35151d = null;
                f35150c = null;
            } else {
                f35151d = new C6297c(false, null);
                f35150c = new C6297c(true, null);
            }
        }

        public C6297c(boolean z, @CheckForNull Throwable th) {
            this.f35152a = z;
            this.f35153b = th;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$e */
    /* loaded from: classes6.dex */
    public static final class C6299e extends AbstractC6296b {

        /* renamed from: a */
        public final AtomicReferenceFieldUpdater<C6305k, Thread> f35158a;

        /* renamed from: b */
        public final AtomicReferenceFieldUpdater<C6305k, C6305k> f35159b;

        /* renamed from: c */
        public final AtomicReferenceFieldUpdater<AbstractFuture, C6305k> f35160c;

        /* renamed from: d */
        public final AtomicReferenceFieldUpdater<AbstractFuture, C6298d> f35161d;

        /* renamed from: e */
        public final AtomicReferenceFieldUpdater<AbstractFuture, Object> f35162e;

        public C6299e(AtomicReferenceFieldUpdater<C6305k, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<C6305k, C6305k> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractFuture, C6305k> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractFuture, C6298d> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.f35158a = atomicReferenceFieldUpdater;
            this.f35159b = atomicReferenceFieldUpdater2;
            this.f35160c = atomicReferenceFieldUpdater3;
            this.f35161d = atomicReferenceFieldUpdater4;
            this.f35162e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: a */
        public boolean mo27561a(AbstractFuture<?> abstractFuture, @CheckForNull C6298d c6298d, C6298d c6298d2) {
            return C14434t4.m57298a(this.f35161d, abstractFuture, c6298d, c6298d2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: b */
        public boolean mo27562b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            return C14434t4.m57298a(this.f35162e, abstractFuture, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: c */
        public boolean mo27563c(AbstractFuture<?> abstractFuture, @CheckForNull C6305k c6305k, @CheckForNull C6305k c6305k2) {
            return C14434t4.m57298a(this.f35160c, abstractFuture, c6305k, c6305k2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: d */
        public C6298d mo27564d(AbstractFuture<?> abstractFuture, C6298d c6298d) {
            return this.f35161d.getAndSet(abstractFuture, c6298d);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: e */
        public C6305k mo27565e(AbstractFuture<?> abstractFuture, C6305k c6305k) {
            return this.f35160c.getAndSet(abstractFuture, c6305k);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: f */
        public void mo27566f(C6305k c6305k, @CheckForNull C6305k c6305k2) {
            this.f35159b.lazySet(c6305k, c6305k2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: g */
        public void mo27567g(C6305k c6305k, Thread thread) {
            this.f35158a.lazySet(c6305k, thread);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$f */
    /* loaded from: classes6.dex */
    public static final class RunnableC6300f<V> implements Runnable {

        /* renamed from: e */
        public final AbstractFuture<V> f35163e;

        /* renamed from: f */
        public final ListenableFuture<? extends V> f35164f;

        public RunnableC6300f(AbstractFuture<V> abstractFuture, ListenableFuture<? extends V> listenableFuture) {
            this.f35163e = abstractFuture;
            this.f35164f = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f35163e.f35145e != this) {
                return;
            }
            if (AbstractFuture.f35143k.mo27562b(this.f35163e, this, AbstractFuture.m27552s(this.f35164f))) {
                AbstractFuture.m27549p(this.f35163e);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$g */
    /* loaded from: classes6.dex */
    public static final class C6301g extends AbstractC6296b {
        public C6301g() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: a */
        public boolean mo27561a(AbstractFuture<?> abstractFuture, @CheckForNull C6298d c6298d, C6298d c6298d2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f35146f != c6298d) {
                    return false;
                }
                abstractFuture.f35146f = c6298d2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: b */
        public boolean mo27562b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f35145e != obj) {
                    return false;
                }
                abstractFuture.f35145e = obj2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: c */
        public boolean mo27563c(AbstractFuture<?> abstractFuture, @CheckForNull C6305k c6305k, @CheckForNull C6305k c6305k2) {
            synchronized (abstractFuture) {
                if (abstractFuture.f35147g != c6305k) {
                    return false;
                }
                abstractFuture.f35147g = c6305k2;
                return true;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: d */
        public C6298d mo27564d(AbstractFuture<?> abstractFuture, C6298d c6298d) {
            C6298d c6298d2;
            synchronized (abstractFuture) {
                c6298d2 = abstractFuture.f35146f;
                if (c6298d2 != c6298d) {
                    abstractFuture.f35146f = c6298d;
                }
            }
            return c6298d2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: e */
        public C6305k mo27565e(AbstractFuture<?> abstractFuture, C6305k c6305k) {
            C6305k c6305k2;
            synchronized (abstractFuture) {
                c6305k2 = abstractFuture.f35147g;
                if (c6305k2 != c6305k) {
                    abstractFuture.f35147g = c6305k;
                }
            }
            return c6305k2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: f */
        public void mo27566f(C6305k c6305k, @CheckForNull C6305k c6305k2) {
            c6305k.f35173b = c6305k2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: g */
        public void mo27567g(C6305k c6305k, Thread thread) {
            c6305k.f35172a = thread;
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$h */
    /* loaded from: classes6.dex */
    public interface InterfaceC6302h<V> extends ListenableFuture<V> {
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$i */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6303i<V> extends AbstractFuture<V> implements InterfaceC6302h<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        @uvk
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        @uvk
        public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$j */
    /* loaded from: classes6.dex */
    public static final class C6304j extends AbstractC6296b {

        /* renamed from: a */
        public static final Unsafe f35165a;

        /* renamed from: b */
        public static final long f35166b;

        /* renamed from: c */
        public static final long f35167c;

        /* renamed from: d */
        public static final long f35168d;

        /* renamed from: e */
        public static final long f35169e;

        /* renamed from: f */
        public static final long f35170f;

        /* renamed from: com.google.common.util.concurrent.AbstractFuture$j$a */
        /* loaded from: classes6.dex */
        public class a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e) {
                    throw new RuntimeException("Could not initialize intrinsics", e.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                f35167c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(C6998g.f39679a));
                f35166b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField(C6997f.f39671c));
                f35168d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("e"));
                f35169e = unsafe.objectFieldOffset(C6305k.class.getDeclaredField("a"));
                f35170f = unsafe.objectFieldOffset(C6305k.class.getDeclaredField("b"));
                f35165a = unsafe;
            } catch (Exception e2) {
                Throwables.throwIfUnchecked(e2);
                throw new RuntimeException(e2);
            }
        }

        public C6304j() {
            super();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: a */
        public boolean mo27561a(AbstractFuture<?> abstractFuture, @CheckForNull C6298d c6298d, C6298d c6298d2) {
            return sgp.m57163a(f35165a, abstractFuture, f35166b, c6298d, c6298d2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: b */
        public boolean mo27562b(AbstractFuture<?> abstractFuture, @CheckForNull Object obj, Object obj2) {
            return sgp.m57163a(f35165a, abstractFuture, f35168d, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: c */
        public boolean mo27563c(AbstractFuture<?> abstractFuture, @CheckForNull C6305k c6305k, @CheckForNull C6305k c6305k2) {
            return sgp.m57163a(f35165a, abstractFuture, f35167c, c6305k, c6305k2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: d */
        public C6298d mo27564d(AbstractFuture<?> abstractFuture, C6298d c6298d) {
            return (C6298d) f35165a.getAndSetObject(abstractFuture, f35166b, c6298d);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: e */
        public C6305k mo27565e(AbstractFuture<?> abstractFuture, C6305k c6305k) {
            return (C6305k) f35165a.getAndSetObject(abstractFuture, f35167c, c6305k);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: f */
        public void mo27566f(C6305k c6305k, @CheckForNull C6305k c6305k2) {
            f35165a.putObject(c6305k, f35170f, c6305k2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.AbstractC6296b
        /* renamed from: g */
        public void mo27567g(C6305k c6305k, Thread thread) {
            f35165a.putObject(c6305k, f35169e, thread);
        }
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$k */
    /* loaded from: classes6.dex */
    public static final class C6305k {

        /* renamed from: c */
        public static final C6305k f35171c = new C6305k(false);

        /* renamed from: a */
        @CheckForNull
        public volatile Thread f35172a;

        /* renamed from: b */
        @CheckForNull
        public volatile C6305k f35173b;

        public C6305k(boolean z) {
        }

        /* renamed from: a */
        public void m27569a(@CheckForNull C6305k c6305k) {
            AbstractFuture.f35143k.mo27566f(this, c6305k);
        }

        /* renamed from: b */
        public void m27570b() {
            Thread thread = this.f35172a;
            if (thread != null) {
                this.f35172a = null;
                LockSupport.unpark(thread);
            }
        }

        public C6305k() {
            AbstractFuture.f35143k.mo27567g(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.logging.Logger] */
    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.common.util.concurrent.AbstractFuture$e] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.common.util.concurrent.AbstractFuture$a] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.common.util.concurrent.AbstractFuture$j] */
    static {
        boolean z;
        C6301g c6301g;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        f35140h = z;
        f35141i = Logger.getLogger(AbstractFuture.class.getName());
        ?? r2 = 0;
        r2 = 0;
        try {
            c6301g = new C6304j();
            th = null;
        } catch (Throwable th) {
            th = th;
            try {
                c6301g = new C6299e(AtomicReferenceFieldUpdater.newUpdater(C6305k.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(C6305k.class, C6305k.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C6305k.class, C6998g.f39679a), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, C6298d.class, C6997f.f39671c), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "e"));
            } catch (Throwable th2) {
                c6301g = new C6301g();
                r2 = th2;
            }
        }
        f35143k = c6301g;
        if (r2 != 0) {
            ?? r0 = f35141i;
            Level level = Level.SEVERE;
            r0.log(level, "UnsafeAtomicHelper is broken!", th);
            r0.log(level, "SafeAtomicHelper is broken!", r2);
        }
        f35144l = new Object();
    }

    /* renamed from: j */
    private void m27547j(StringBuilder sb) {
        try {
            Object m27553t = m27553t(this);
            sb.append("SUCCESS, result=[");
            m27556l(sb, m27553t);
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

    /* renamed from: n */
    public static CancellationException m27548n(String str, @CheckForNull Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    /* renamed from: p */
    public static void m27549p(AbstractFuture<?> abstractFuture) {
        C6298d c6298d = null;
        while (true) {
            abstractFuture.m27554v();
            abstractFuture.afterDone();
            C6298d m27558o = abstractFuture.m27558o(c6298d);
            while (m27558o != null) {
                c6298d = m27558o.f35157c;
                Runnable runnable = m27558o.f35155a;
                Objects.requireNonNull(runnable);
                Runnable runnable2 = runnable;
                if (runnable2 instanceof RunnableC6300f) {
                    RunnableC6300f runnableC6300f = (RunnableC6300f) runnable2;
                    abstractFuture = runnableC6300f.f35163e;
                    if (abstractFuture.f35145e == runnableC6300f) {
                        if (f35143k.mo27562b(abstractFuture, runnableC6300f, m27552s(runnableC6300f.f35164f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = m27558o.f35156b;
                    Objects.requireNonNull(executor);
                    m27550q(runnable2, executor);
                }
                m27558o = c6298d;
            }
            return;
        }
    }

    /* renamed from: q */
    public static void m27550q(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = f35141i;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.log(level, sb.toString(), (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @uvk
    /* renamed from: r */
    private V m27551r(Object obj) throws ExecutionException {
        if (obj instanceof C6297c) {
            throw m27548n("Task was cancelled.", ((C6297c) obj).f35153b);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f35149a);
        }
        return obj == f35144l ? (V) q5k.m56638b() : obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: s */
    public static Object m27552s(ListenableFuture<?> listenableFuture) {
        Throwable tryInternalFastPathGetFailure;
        if (listenableFuture instanceof InterfaceC6302h) {
            Object obj = ((AbstractFuture) listenableFuture).f35145e;
            if (obj instanceof C6297c) {
                C6297c c6297c = (C6297c) obj;
                if (c6297c.f35152a) {
                    obj = c6297c.f35153b != null ? new C6297c(false, c6297c.f35153b) : C6297c.f35151d;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        }
        if ((listenableFuture instanceof InternalFutureFailureAccess) && (tryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) listenableFuture)) != null) {
            return new Failure(tryInternalFastPathGetFailure);
        }
        boolean isCancelled = listenableFuture.isCancelled();
        if ((!f35140h) && isCancelled) {
            C6297c c6297c2 = C6297c.f35151d;
            Objects.requireNonNull(c6297c2);
            return c6297c2;
        }
        try {
            Object m27553t = m27553t(listenableFuture);
            if (!isCancelled) {
                return m27553t == null ? f35144l : m27553t;
            }
            String valueOf = String.valueOf(listenableFuture);
            StringBuilder sb = new StringBuilder(valueOf.length() + 84);
            sb.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb.append(valueOf);
            return new C6297c(false, new IllegalArgumentException(sb.toString()));
        } catch (CancellationException e) {
            if (isCancelled) {
                return new C6297c(false, e);
            }
            String valueOf2 = String.valueOf(listenableFuture);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 77);
            sb2.append("get() threw CancellationException, despite reporting isCancelled() == false: ");
            sb2.append(valueOf2);
            return new Failure(new IllegalArgumentException(sb2.toString(), e));
        } catch (ExecutionException e2) {
            if (!isCancelled) {
                return new Failure(e2.getCause());
            }
            String valueOf3 = String.valueOf(listenableFuture);
            StringBuilder sb3 = new StringBuilder(valueOf3.length() + 84);
            sb3.append("get() did not throw CancellationException, despite reporting isCancelled() == true: ");
            sb3.append(valueOf3);
            return new C6297c(false, new IllegalArgumentException(sb3.toString(), e2));
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    @uvk
    /* renamed from: t */
    public static <V> V m27553t(Future<V> future) throws ExecutionException {
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

    /* renamed from: v */
    private void m27554v() {
        for (C6305k mo27565e = f35143k.mo27565e(this, C6305k.f35171c); mo27565e != null; mo27565e = mo27565e.f35173b) {
            mo27565e.m27570b();
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        C6298d c6298d;
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        if (!isDone() && (c6298d = this.f35146f) != C6298d.f35154d) {
            C6298d c6298d2 = new C6298d(runnable, executor);
            do {
                c6298d2.f35157c = c6298d;
                if (f35143k.mo27561a(this, c6298d, c6298d2)) {
                    return;
                } else {
                    c6298d = this.f35146f;
                }
            } while (c6298d != C6298d.f35154d);
        }
        m27550q(runnable, executor);
    }

    @Beta
    @ForOverride
    public void afterDone() {
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public boolean cancel(boolean z) {
        C6297c c6297c;
        Object obj = this.f35145e;
        if (!(obj == null) && !(obj instanceof RunnableC6300f)) {
            return false;
        }
        if (f35140h) {
            c6297c = new C6297c(z, new CancellationException("Future.cancel() was called."));
        } else {
            c6297c = z ? C6297c.f35150c : C6297c.f35151d;
            Objects.requireNonNull(c6297c);
        }
        boolean z2 = false;
        while (true) {
            if (f35143k.mo27562b(this, obj, c6297c)) {
                if (z) {
                    this.interruptTask();
                }
                m27549p(this);
                if (!(obj instanceof RunnableC6300f)) {
                    return true;
                }
                ListenableFuture<? extends V> listenableFuture = ((RunnableC6300f) obj).f35164f;
                if (!(listenableFuture instanceof InterfaceC6302h)) {
                    listenableFuture.cancel(z);
                    return true;
                }
                this = (AbstractFuture) listenableFuture;
                obj = this.f35145e;
                if (!(obj == null) && !(obj instanceof RunnableC6300f)) {
                    return true;
                }
                z2 = true;
            } else {
                obj = this.f35145e;
                if (!(obj instanceof RunnableC6300f)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    @uvk
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.f35145e;
            if ((obj != null) & (!(obj instanceof RunnableC6300f))) {
                return m27551r(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                C6305k c6305k = this.f35147g;
                if (c6305k != C6305k.f35171c) {
                    C6305k c6305k2 = new C6305k();
                    do {
                        c6305k2.m27569a(c6305k);
                        if (f35143k.mo27563c(this, c6305k, c6305k2)) {
                            do {
                                ojk.m55988a(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f35145e;
                                    if ((obj2 != null) & (!(obj2 instanceof RunnableC6300f))) {
                                        return m27551r(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    m27560w(c6305k2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            m27560w(c6305k2);
                        } else {
                            c6305k = this.f35147g;
                        }
                    } while (c6305k != C6305k.f35171c);
                }
                Object obj3 = this.f35145e;
                Objects.requireNonNull(obj3);
                return m27551r(obj3);
            }
            while (nanos > 0) {
                Object obj4 = this.f35145e;
                if ((obj4 != null) & (!(obj4 instanceof RunnableC6300f))) {
                    return m27551r(obj4);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String abstractFuture = toString();
            String obj5 = timeUnit.toString();
            Locale locale = Locale.ROOT;
            String lowerCase = obj5.toLowerCase(locale);
            String lowerCase2 = timeUnit.toString().toLowerCase(locale);
            StringBuilder sb = new StringBuilder(String.valueOf(lowerCase2).length() + 28);
            sb.append("Waited ");
            sb.append(j);
            sb.append(" ");
            sb.append(lowerCase2);
            String sb2 = sb.toString();
            if (nanos + 1000 < 0) {
                String concat = String.valueOf(sb2).concat(" (plus ");
                long j2 = -nanos;
                long convert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
                long nanos2 = j2 - timeUnit.toNanos(convert);
                boolean z = convert == 0 || nanos2 > 1000;
                if (convert > 0) {
                    String valueOf = String.valueOf(concat);
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 21 + String.valueOf(lowerCase).length());
                    sb3.append(valueOf);
                    sb3.append(convert);
                    sb3.append(" ");
                    sb3.append(lowerCase);
                    String sb4 = sb3.toString();
                    if (z) {
                        sb4 = String.valueOf(sb4).concat(",");
                    }
                    concat = String.valueOf(sb4).concat(" ");
                }
                if (z) {
                    String valueOf2 = String.valueOf(concat);
                    StringBuilder sb5 = new StringBuilder(valueOf2.length() + 33);
                    sb5.append(valueOf2);
                    sb5.append(nanos2);
                    sb5.append(" nanoseconds ");
                    concat = sb5.toString();
                }
                sb2 = String.valueOf(concat).concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(String.valueOf(sb2).concat(" but future completed as timeout expired"));
            }
            StringBuilder sb6 = new StringBuilder(String.valueOf(sb2).length() + 5 + String.valueOf(abstractFuture).length());
            sb6.append(sb2);
            sb6.append(" for ");
            sb6.append(abstractFuture);
            throw new TimeoutException(sb6.toString());
        }
        throw new InterruptedException();
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f35145e instanceof C6297c;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r2 instanceof RunnableC6300f)) & (this.f35145e != null);
    }

    /* renamed from: k */
    public final void m27555k(StringBuilder sb) {
        String sb2;
        int length = sb.length();
        sb.append("PENDING");
        Object obj = this.f35145e;
        if (obj instanceof RunnableC6300f) {
            sb.append(", setFuture=[");
            m27557m(sb, ((RunnableC6300f) obj).f35164f);
            sb.append(IteratorUtils.f104924b);
        } else {
            try {
                sb2 = Strings.emptyToNull(pendingToString());
            } catch (RuntimeException | StackOverflowError e) {
                String valueOf = String.valueOf(e.getClass());
                StringBuilder sb3 = new StringBuilder(valueOf.length() + 38);
                sb3.append("Exception thrown from implementation: ");
                sb3.append(valueOf);
                sb2 = sb3.toString();
            }
            if (sb2 != null) {
                sb.append(", info=[");
                sb.append(sb2);
                sb.append(IteratorUtils.f104924b);
            }
        }
        if (isDone()) {
            sb.delete(length, sb.length());
            m27547j(sb);
        }
    }

    /* renamed from: l */
    public final void m27556l(StringBuilder sb, @CheckForNull Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    /* renamed from: m */
    public final void m27557m(StringBuilder sb, @CheckForNull Object obj) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException | StackOverflowError e) {
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    @CheckForNull
    /* renamed from: o */
    public final C6298d m27558o(@CheckForNull C6298d c6298d) {
        C6298d mo27564d = f35143k.mo27564d(this, C6298d.f35154d);
        C6298d c6298d2 = c6298d;
        while (mo27564d != null) {
            C6298d c6298d3 = mo27564d.f35157c;
            mo27564d.f35157c = c6298d2;
            c6298d2 = mo27564d;
            mo27564d = c6298d3;
        }
        return c6298d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    public String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        long delay = ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS);
        StringBuilder sb = new StringBuilder(41);
        sb.append("remaining delay=[");
        sb.append(delay);
        sb.append(" ms]");
        return sb.toString();
    }

    @CanIgnoreReturnValue
    public boolean set(@uvk V v) {
        if (v == null) {
            v = (V) f35144l;
        }
        if (!f35143k.mo27562b(this, null, v)) {
            return false;
        }
        m27549p(this);
        return true;
    }

    @CanIgnoreReturnValue
    public boolean setException(Throwable th) {
        if (!f35143k.mo27562b(this, null, new Failure((Throwable) Preconditions.checkNotNull(th)))) {
            return false;
        }
        m27549p(this);
        return true;
    }

    @CanIgnoreReturnValue
    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        Preconditions.checkNotNull(listenableFuture);
        Object obj = this.f35145e;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!f35143k.mo27562b(this, null, m27552s(listenableFuture))) {
                    return false;
                }
                m27549p(this);
                return true;
            }
            RunnableC6300f runnableC6300f = new RunnableC6300f(this, listenableFuture);
            if (f35143k.mo27562b(this, null, runnableC6300f)) {
                try {
                    listenableFuture.addListener(runnableC6300f, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable unused) {
                        failure = Failure.f35148b;
                    }
                    f35143k.mo27562b(this, runnableC6300f, failure);
                }
                return true;
            }
            obj = this.f35145e;
        }
        if (obj instanceof C6297c) {
            listenableFuture.cancel(((C6297c) obj).f35152a);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            m27547j(sb);
        } else {
            m27555k(sb);
        }
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    @Override // com.google.common.util.concurrent.internal.InternalFutureFailureAccess
    @CheckForNull
    public final Throwable tryInternalFastPathGetFailure() {
        if (!(this instanceof InterfaceC6302h)) {
            return null;
        }
        Object obj = this.f35145e;
        if (obj instanceof Failure) {
            return ((Failure) obj).f35149a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public final void m27559u(@CheckForNull Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* renamed from: w */
    public final void m27560w(C6305k c6305k) {
        c6305k.f35172a = null;
        while (true) {
            C6305k c6305k2 = this.f35147g;
            if (c6305k2 == C6305k.f35171c) {
                return;
            }
            C6305k c6305k3 = null;
            while (c6305k2 != null) {
                C6305k c6305k4 = c6305k2.f35173b;
                if (c6305k2.f35172a != null) {
                    c6305k3 = c6305k2;
                } else if (c6305k3 != null) {
                    c6305k3.f35173b = c6305k4;
                    if (c6305k3.f35172a == null) {
                        break;
                    }
                } else if (!f35143k.mo27563c(this, c6305k2, c6305k4)) {
                    break;
                }
                c6305k2 = c6305k4;
            }
            return;
        }
    }

    public final boolean wasInterrupted() {
        Object obj = this.f35145e;
        return (obj instanceof C6297c) && ((C6297c) obj).f35152a;
    }

    /* renamed from: com.google.common.util.concurrent.AbstractFuture$d */
    /* loaded from: classes6.dex */
    public static final class C6298d {

        /* renamed from: d */
        public static final C6298d f35154d = new C6298d();

        /* renamed from: a */
        @CheckForNull
        public final Runnable f35155a;

        /* renamed from: b */
        @CheckForNull
        public final Executor f35156b;

        /* renamed from: c */
        @CheckForNull
        public C6298d f35157c;

        public C6298d(Runnable runnable, Executor executor) {
            this.f35155a = runnable;
            this.f35156b = executor;
        }

        public C6298d() {
            this.f35155a = null;
            this.f35156b = null;
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    @uvk
    public V get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f35145e;
            if ((obj2 != null) & (!(obj2 instanceof RunnableC6300f))) {
                return m27551r(obj2);
            }
            C6305k c6305k = this.f35147g;
            if (c6305k != C6305k.f35171c) {
                C6305k c6305k2 = new C6305k();
                do {
                    c6305k2.m27569a(c6305k);
                    if (f35143k.mo27563c(this, c6305k, c6305k2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f35145e;
                            } else {
                                m27560w(c6305k2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof RunnableC6300f))));
                        return m27551r(obj);
                    }
                    c6305k = this.f35147g;
                } while (c6305k != C6305k.f35171c);
            }
            Object obj3 = this.f35145e;
            Objects.requireNonNull(obj3);
            return m27551r(obj3);
        }
        throw new InterruptedException();
    }
}
