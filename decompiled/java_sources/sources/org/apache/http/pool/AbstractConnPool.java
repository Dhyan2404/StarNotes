package org.apache.http.pool;

import com.sunia.HTREnginev2.isl;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.pool.PoolEntry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public abstract class AbstractConnPool<T, C, E extends PoolEntry<T, C>> implements ConnPool<T, E>, ConnPoolControl<T> {

    /* renamed from: e */
    public final Lock f111081e;

    /* renamed from: f */
    public final Condition f111082f;

    /* renamed from: g */
    public final ConnFactory<T, C> f111083g;

    /* renamed from: h */
    public final Map<T, isl<T, C, E>> f111084h;

    /* renamed from: i */
    public final Set<E> f111085i;

    /* renamed from: j */
    public final LinkedList<E> f111086j;

    /* renamed from: k */
    public final LinkedList<Future<E>> f111087k;

    /* renamed from: l */
    public final Map<T, Integer> f111088l;

    /* renamed from: m */
    public volatile boolean f111089m;

    /* renamed from: n */
    public volatile int f111090n;

    /* renamed from: o */
    public volatile int f111091o;

    /* renamed from: p */
    public volatile int f111092p;

    /* renamed from: org.apache.http.pool.AbstractConnPool$a */
    /* loaded from: classes12.dex */
    public class C19386a extends isl<T, C, E> {

        /* renamed from: e */
        public final /* synthetic */ Object f111093e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19386a(Object obj, Object obj2) {
            super(obj);
            this.f111093e = obj2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.sunia.HTREnginev2.isl
        /* renamed from: b */
        public E mo54778b(C c) {
            return (E) AbstractConnPool.this.createEntry(this.f111093e, c);
        }
    }

    /* renamed from: org.apache.http.pool.AbstractConnPool$b */
    /* loaded from: classes12.dex */
    public class FutureC19387b implements Future<E> {

        /* renamed from: e */
        public final AtomicBoolean f111095e = new AtomicBoolean(false);

        /* renamed from: f */
        public final AtomicBoolean f111096f = new AtomicBoolean(false);

        /* renamed from: g */
        public final AtomicReference<E> f111097g = new AtomicReference<>(null);

        /* renamed from: h */
        public final /* synthetic */ FutureCallback f111098h;

        /* renamed from: i */
        public final /* synthetic */ Object f111099i;

        /* renamed from: j */
        public final /* synthetic */ Object f111100j;

        public FutureC19387b(FutureCallback futureCallback, Object obj, Object obj2) {
            this.f111098h = futureCallback;
            this.f111099i = obj;
            this.f111100j = obj2;
        }

        @Override // java.util.concurrent.Future
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public E get() throws InterruptedException, ExecutionException {
            try {
                return (E) get(0L, TimeUnit.MILLISECONDS);
            } catch (TimeoutException e) {
                throw new ExecutionException(e);
            }
        }

        @Override // java.util.concurrent.Future
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public E get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            FutureCallback futureCallback;
            E e;
            while (true) {
                synchronized (this) {
                    try {
                        E e2 = this.f111097g.get();
                        if (e2 != null) {
                            return e2;
                        }
                        if (this.f111096f.get()) {
                            throw new ExecutionException(AbstractConnPool.m68595c());
                        }
                        e = (E) AbstractConnPool.this.m68601h(this.f111099i, this.f111100j, j, timeUnit, this);
                        if (AbstractConnPool.this.f111092p <= 0 || e.getUpdated() + AbstractConnPool.this.f111092p > System.currentTimeMillis() || AbstractConnPool.this.validate(e)) {
                            break;
                        }
                        e.close();
                        AbstractConnPool.this.release((AbstractConnPool) e, false);
                    } catch (IOException e3) {
                        if (this.f111096f.compareAndSet(false, true) && (futureCallback = this.f111098h) != null) {
                            futureCallback.failed(e3);
                        }
                        throw new ExecutionException(e3);
                    }
                }
            }
            if (!this.f111096f.compareAndSet(false, true)) {
                AbstractConnPool.this.release((AbstractConnPool) e, true);
                throw new ExecutionException(AbstractConnPool.m68595c());
            }
            this.f111097g.set(e);
            this.f111096f.set(true);
            AbstractConnPool.this.onLease(e);
            FutureCallback futureCallback2 = this.f111098h;
            if (futureCallback2 != null) {
                futureCallback2.completed(e);
            }
            return e;
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            if (!this.f111096f.compareAndSet(false, true)) {
                return false;
            }
            this.f111095e.set(true);
            AbstractConnPool.this.f111081e.lock();
            try {
                AbstractConnPool.this.f111082f.signalAll();
                AbstractConnPool.this.f111081e.unlock();
                FutureCallback futureCallback = this.f111098h;
                if (futureCallback != null) {
                    futureCallback.cancelled();
                }
                return true;
            } catch (Throwable th) {
                AbstractConnPool.this.f111081e.unlock();
                throw th;
            }
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f111095e.get();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f111096f.get();
        }
    }

    /* renamed from: org.apache.http.pool.AbstractConnPool$c */
    /* loaded from: classes12.dex */
    public class C19388c implements PoolEntryCallback<T, C> {

        /* renamed from: a */
        public final /* synthetic */ long f111102a;

        public C19388c(long j) {
            this.f111102a = j;
        }

        @Override // org.apache.http.pool.PoolEntryCallback
        public void process(PoolEntry<T, C> poolEntry) {
            if (poolEntry.getUpdated() <= this.f111102a) {
                poolEntry.close();
            }
        }
    }

    /* renamed from: org.apache.http.pool.AbstractConnPool$d */
    /* loaded from: classes12.dex */
    public class C19389d implements PoolEntryCallback<T, C> {

        /* renamed from: a */
        public final /* synthetic */ long f111104a;

        public C19389d(long j) {
            this.f111104a = j;
        }

        @Override // org.apache.http.pool.PoolEntryCallback
        public void process(PoolEntry<T, C> poolEntry) {
            if (poolEntry.isExpired(this.f111104a)) {
                poolEntry.close();
            }
        }
    }

    public AbstractConnPool(ConnFactory<T, C> connFactory, int i, int i2) {
        this.f111083g = (ConnFactory) Args.notNull(connFactory, "Connection factory");
        this.f111090n = Args.positive(i, "Max per route value");
        this.f111091o = Args.positive(i2, "Max total value");
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f111081e = reentrantLock;
        this.f111082f = reentrantLock.newCondition();
        this.f111084h = new HashMap();
        this.f111085i = new HashSet();
        this.f111086j = new LinkedList<>();
        this.f111087k = new LinkedList<>();
        this.f111088l = new HashMap();
    }

    /* renamed from: c */
    public static /* synthetic */ Exception m68595c() {
        return m68598i();
    }

    /* renamed from: i */
    public static Exception m68598i() {
        return new CancellationException("Operation aborted");
    }

    public void closeExpired() {
        enumAvailable(new C19389d(System.currentTimeMillis()));
    }

    public void closeIdle(long j, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        long millis = timeUnit.toMillis(j);
        if (millis < 0) {
            millis = 0;
        }
        enumAvailable(new C19388c(System.currentTimeMillis() - millis));
    }

    public abstract E createEntry(T t, C c);

    public void enumAvailable(PoolEntryCallback<T, C> poolEntryCallback) {
        this.f111081e.lock();
        try {
            Iterator<E> it2 = this.f111086j.iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                poolEntryCallback.process(next);
                if (next.isClosed()) {
                    m68600g(next.getRoute()).m54789m(next);
                    it2.remove();
                }
            }
            m68602j();
        } finally {
            this.f111081e.unlock();
        }
    }

    public void enumLeased(PoolEntryCallback<T, C> poolEntryCallback) {
        this.f111081e.lock();
        try {
            Iterator<E> it2 = this.f111085i.iterator();
            while (it2.hasNext()) {
                poolEntryCallback.process(it2.next());
            }
        } finally {
            this.f111081e.unlock();
        }
    }

    /* renamed from: f */
    public final int m68599f(T t) {
        Integer num = this.f111088l.get(t);
        return num != null ? num.intValue() : this.f111090n;
    }

    /* renamed from: g */
    public final isl<T, C, E> m68600g(T t) {
        isl<T, C, E> islVar = this.f111084h.get(t);
        if (islVar != null) {
            return islVar;
        }
        C19386a c19386a = new C19386a(t, t);
        this.f111084h.put(t, c19386a);
        return c19386a;
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        this.f111081e.lock();
        try {
            return this.f111090n;
        } finally {
            this.f111081e.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxPerRoute(T t) {
        Args.notNull(t, "Route");
        this.f111081e.lock();
        try {
            return m68599f(t);
        } finally {
            this.f111081e.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxTotal() {
        this.f111081e.lock();
        try {
            return this.f111091o;
        } finally {
            this.f111081e.unlock();
        }
    }

    public Set<T> getRoutes() {
        this.f111081e.lock();
        try {
            return new HashSet(this.f111084h.keySet());
        } finally {
            this.f111081e.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getStats(T t) {
        Args.notNull(t, "Route");
        this.f111081e.lock();
        try {
            isl<T, C, E> m68600g = m68600g(t);
            return new PoolStats(m68600g.m54784h(), m68600g.m54785i(), m68600g.m54781e(), m68599f(t));
        } finally {
            this.f111081e.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        this.f111081e.lock();
        try {
            return new PoolStats(this.f111085i.size(), this.f111087k.size(), this.f111086j.size(), this.f111091o);
        } finally {
            this.f111081e.unlock();
        }
    }

    public int getValidateAfterInactivity() {
        return this.f111092p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x012b, code lost:
    
        throw new java.util.concurrent.ExecutionException(m68598i());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final E m68601h(T r7, java.lang.Object r8, long r9, java.util.concurrent.TimeUnit r11, java.util.concurrent.Future<E> r12) throws java.io.IOException, java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.pool.AbstractConnPool.m68601h(java.lang.Object, java.lang.Object, long, java.util.concurrent.TimeUnit, java.util.concurrent.Future):org.apache.http.pool.PoolEntry");
    }

    public boolean isShutdown() {
        return this.f111089m;
    }

    /* renamed from: j */
    public final void m68602j() {
        Iterator<Map.Entry<T, isl<T, C, E>>> it2 = this.f111084h.entrySet().iterator();
        while (it2.hasNext()) {
            isl<T, C, E> value = it2.next().getValue();
            if (value.m54785i() + value.m54780d() == 0) {
                it2.remove();
            }
        }
    }

    @Override // org.apache.http.pool.ConnPool
    public Future<E> lease(T t, Object obj, FutureCallback<E> futureCallback) {
        Args.notNull(t, "Route");
        Asserts.check(!this.f111089m, "Connection pool shut down");
        return new FutureC19387b(futureCallback, t, obj);
    }

    public void onLease(E e) {
    }

    public void onRelease(E e) {
    }

    public void onReuse(E e) {
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i) {
        Args.positive(i, "Max per route value");
        this.f111081e.lock();
        try {
            this.f111090n = i;
        } finally {
            this.f111081e.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.http.pool.AbstractConnPool, org.apache.http.pool.AbstractConnPool<T, C, E extends org.apache.http.pool.PoolEntry<T, C>>] */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.http.pool.AbstractConnPool] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.locks.Lock] */
    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxPerRoute(T t, int i) {
        Args.notNull(t, "Route");
        this.f111081e.lock();
        try {
            if (i > -1) {
                this.f111088l.put(t, Integer.valueOf(i));
            } else {
                this.f111088l.remove(t);
            }
        } finally {
            this.f111081e.unlock();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxTotal(int i) {
        Args.positive(i, "Max value");
        this.f111081e.lock();
        try {
            this.f111091o = i;
        } finally {
            this.f111081e.unlock();
        }
    }

    public void setValidateAfterInactivity(int i) {
        this.f111092p = i;
    }

    public void shutdown() throws IOException {
        if (this.f111089m) {
            return;
        }
        this.f111089m = true;
        this.f111081e.lock();
        try {
            Iterator<E> it2 = this.f111086j.iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            Iterator<E> it3 = this.f111085i.iterator();
            while (it3.hasNext()) {
                it3.next().close();
            }
            Iterator<isl<T, C, E>> it4 = this.f111084h.values().iterator();
            while (it4.hasNext()) {
                it4.next().m54790n();
            }
            this.f111084h.clear();
            this.f111085i.clear();
            this.f111086j.clear();
        } finally {
            this.f111081e.unlock();
        }
    }

    public String toString() {
        this.f111081e.lock();
        try {
            return "[leased: " + this.f111085i + "][available: " + this.f111086j + "][pending: " + this.f111087k + IteratorUtils.f104924b;
        } finally {
            this.f111081e.unlock();
        }
    }

    public boolean validate(E e) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.pool.ConnPool
    public void release(E e, boolean z) {
        this.f111081e.lock();
        try {
            if (this.f111085i.remove(e)) {
                isl m68600g = m68600g(e.getRoute());
                m68600g.m54779c(e, z);
                if (z && !this.f111089m) {
                    this.f111086j.addFirst(e);
                } else {
                    e.close();
                }
                onRelease(e);
                Future<E> m54787k = m68600g.m54787k();
                if (m54787k != null) {
                    this.f111087k.remove(m54787k);
                } else {
                    m54787k = this.f111087k.poll();
                }
                if (m54787k != null) {
                    this.f111082f.signalAll();
                }
            }
        } finally {
            this.f111081e.unlock();
        }
    }

    public Future<E> lease(T t, Object obj) {
        return lease(t, obj, null);
    }
}
