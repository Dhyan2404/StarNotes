package com.bumptech.glide.load.engine;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.C1958e;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import com.sunia.HTREnginev2.tqf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.bumptech.glide.load.engine.d */
/* loaded from: classes3.dex */
public class C1957d<R> implements DecodeJob.InterfaceC1921b<R>, FactoryPools.Poolable {

    /* renamed from: Z */
    public static final c f14750Z = new c();

    /* renamed from: J */
    public DecodeJob<R> f14751J;

    /* renamed from: O */
    public volatile boolean f14752O;

    /* renamed from: Q */
    public boolean f14753Q;

    /* renamed from: e */
    public final e f14754e;

    /* renamed from: f */
    public final StateVerifier f14755f;

    /* renamed from: g */
    public final C1958e.a f14756g;

    /* renamed from: h */
    public final Pools.Pool<C1957d<?>> f14757h;

    /* renamed from: i */
    public final c f14758i;

    /* renamed from: j */
    public final tqf f14759j;

    /* renamed from: k */
    public final GlideExecutor f14760k;

    /* renamed from: l */
    public final GlideExecutor f14761l;

    /* renamed from: m */
    public final GlideExecutor f14762m;

    /* renamed from: n */
    public final GlideExecutor f14763n;

    /* renamed from: o */
    public final AtomicInteger f14764o;

    /* renamed from: p */
    public Key f14765p;

    /* renamed from: q */
    public boolean f14766q;

    /* renamed from: r */
    public boolean f14767r;

    /* renamed from: s */
    public boolean f14768s;

    /* renamed from: t */
    public boolean f14769t;

    /* renamed from: u */
    public Resource<?> f14770u;

    /* renamed from: v */
    public DataSource f14771v;

    /* renamed from: w */
    public boolean f14772w;

    /* renamed from: x */
    public GlideException f14773x;

    /* renamed from: y */
    public boolean f14774y;

    /* renamed from: z */
    public C1958e<?> f14775z;

    /* renamed from: com.bumptech.glide.load.engine.d$a */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: e */
        public final ResourceCallback f14776e;

        public a(ResourceCallback resourceCallback) {
            this.f14776e = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f14776e.getLock()) {
                synchronized (C1957d.this) {
                    if (C1957d.this.f14754e.m8853b(this.f14776e)) {
                        C1957d.this.m8835c(this.f14776e);
                    }
                    C1957d.this.m8838f();
                }
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.d$b */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: e */
        public final ResourceCallback f14778e;

        public b(ResourceCallback resourceCallback) {
            this.f14778e = resourceCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f14778e.getLock()) {
                synchronized (C1957d.this) {
                    if (C1957d.this.f14754e.m8853b(this.f14778e)) {
                        C1957d.this.f14775z.m8856a();
                        C1957d.this.m8836d(this.f14778e);
                        C1957d.this.m8848p(this.f14778e);
                    }
                    C1957d.this.m8838f();
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.d$c */
    /* loaded from: classes3.dex */
    public static class c {
        /* renamed from: a */
        public <R> C1958e<R> m8850a(Resource<R> resource, boolean z, Key key, C1958e.a aVar) {
            return new C1958e<>(resource, z, true, key, aVar);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.d$d */
    /* loaded from: classes3.dex */
    public static final class d {

        /* renamed from: a */
        public final ResourceCallback f14780a;

        /* renamed from: b */
        public final Executor f14781b;

        public d(ResourceCallback resourceCallback, Executor executor) {
            this.f14780a = resourceCallback;
            this.f14781b = executor;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f14780a.equals(((d) obj).f14780a);
            }
            return false;
        }

        public int hashCode() {
            return this.f14780a.hashCode();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.d$e */
    /* loaded from: classes3.dex */
    public static final class e implements Iterable<d> {

        /* renamed from: e */
        public final List<d> f14782e;

        public e() {
            this(new ArrayList(2));
        }

        /* renamed from: d */
        public static d m8851d(ResourceCallback resourceCallback) {
            return new d(resourceCallback, Executors.directExecutor());
        }

        /* renamed from: a */
        public void m8852a(ResourceCallback resourceCallback, Executor executor) {
            this.f14782e.add(new d(resourceCallback, executor));
        }

        /* renamed from: b */
        public boolean m8853b(ResourceCallback resourceCallback) {
            return this.f14782e.contains(m8851d(resourceCallback));
        }

        /* renamed from: c */
        public e m8854c() {
            return new e(new ArrayList(this.f14782e));
        }

        public void clear() {
            this.f14782e.clear();
        }

        /* renamed from: e */
        public void m8855e(ResourceCallback resourceCallback) {
            this.f14782e.remove(m8851d(resourceCallback));
        }

        public boolean isEmpty() {
            return this.f14782e.isEmpty();
        }

        @Override // java.lang.Iterable
        @NonNull
        public Iterator<d> iterator() {
            return this.f14782e.iterator();
        }

        public int size() {
            return this.f14782e.size();
        }

        public e(List<d> list) {
            this.f14782e = list;
        }
    }

    public C1957d(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, tqf tqfVar, C1958e.a aVar, Pools.Pool<C1957d<?>> pool) {
        this(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, tqfVar, aVar, pool, f14750Z);
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.InterfaceC1921b
    /* renamed from: a */
    public void mo8715a(DecodeJob<?> decodeJob) {
        m8839g().execute(decodeJob);
    }

    /* renamed from: b */
    public synchronized void m8834b(ResourceCallback resourceCallback, Executor executor) {
        this.f14755f.throwIfRecycled();
        this.f14754e.m8852a(resourceCallback, executor);
        boolean z = true;
        if (this.f14772w) {
            m8840h(1);
            executor.execute(new b(resourceCallback));
        } else if (this.f14774y) {
            m8840h(1);
            executor.execute(new a(resourceCallback));
        } else {
            if (this.f14752O) {
                z = false;
            }
            Preconditions.checkArgument(z, "Cannot add callbacks to a cancelled EngineJob");
        }
    }

    @GuardedBy("this")
    /* renamed from: c */
    public void m8835c(ResourceCallback resourceCallback) {
        try {
            resourceCallback.onLoadFailed(this.f14773x);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    @GuardedBy("this")
    /* renamed from: d */
    public void m8836d(ResourceCallback resourceCallback) {
        try {
            resourceCallback.onResourceReady(this.f14775z, this.f14771v, this.f14753Q);
        } catch (Throwable th) {
            throw new CallbackException(th);
        }
    }

    /* renamed from: e */
    public void m8837e() {
        if (m8843k()) {
            return;
        }
        this.f14752O = true;
        this.f14751J.m8690a();
        this.f14759j.onEngineJobCancelled(this, this.f14765p);
    }

    /* renamed from: f */
    public void m8838f() {
        C1958e<?> c1958e;
        synchronized (this) {
            this.f14755f.throwIfRecycled();
            Preconditions.checkArgument(m8843k(), "Not yet complete!");
            int decrementAndGet = this.f14764o.decrementAndGet();
            Preconditions.checkArgument(decrementAndGet >= 0, "Can't decrement below 0");
            if (decrementAndGet == 0) {
                c1958e = this.f14775z;
                m8847o();
            } else {
                c1958e = null;
            }
        }
        if (c1958e != null) {
            c1958e.m8859d();
        }
    }

    /* renamed from: g */
    public final GlideExecutor m8839g() {
        return this.f14767r ? this.f14762m : this.f14768s ? this.f14763n : this.f14761l;
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier getVerifier() {
        return this.f14755f;
    }

    /* renamed from: h */
    public synchronized void m8840h(int i) {
        C1958e<?> c1958e;
        Preconditions.checkArgument(m8843k(), "Not yet complete!");
        if (this.f14764o.getAndAdd(i) == 0 && (c1958e = this.f14775z) != null) {
            c1958e.m8856a();
        }
    }

    @VisibleForTesting
    /* renamed from: i */
    public synchronized C1957d<R> m8841i(Key key, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f14765p = key;
        this.f14766q = z;
        this.f14767r = z2;
        this.f14768s = z3;
        this.f14769t = z4;
        return this;
    }

    /* renamed from: j */
    public synchronized boolean m8842j() {
        return this.f14752O;
    }

    /* renamed from: k */
    public final boolean m8843k() {
        return this.f14774y || this.f14772w || this.f14752O;
    }

    /* renamed from: l */
    public void m8844l() {
        synchronized (this) {
            this.f14755f.throwIfRecycled();
            if (this.f14752O) {
                m8847o();
                return;
            }
            if (this.f14754e.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            if (this.f14774y) {
                throw new IllegalStateException("Already failed once");
            }
            this.f14774y = true;
            Key key = this.f14765p;
            e m8854c = this.f14754e.m8854c();
            m8840h(m8854c.size() + 1);
            this.f14759j.onEngineJobComplete(this, key, null);
            Iterator<d> it2 = m8854c.iterator();
            while (it2.hasNext()) {
                d next = it2.next();
                next.f14781b.execute(new a(next.f14780a));
            }
            m8838f();
        }
    }

    /* renamed from: m */
    public void m8845m() {
        synchronized (this) {
            this.f14755f.throwIfRecycled();
            if (this.f14752O) {
                this.f14770u.recycle();
                m8847o();
                return;
            }
            if (this.f14754e.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (this.f14772w) {
                throw new IllegalStateException("Already have resource");
            }
            this.f14775z = this.f14758i.m8850a(this.f14770u, this.f14766q, this.f14765p, this.f14756g);
            this.f14772w = true;
            e m8854c = this.f14754e.m8854c();
            m8840h(m8854c.size() + 1);
            this.f14759j.onEngineJobComplete(this, this.f14765p, this.f14775z);
            Iterator<d> it2 = m8854c.iterator();
            while (it2.hasNext()) {
                d next = it2.next();
                next.f14781b.execute(new b(next.f14780a));
            }
            m8838f();
        }
    }

    /* renamed from: n */
    public boolean m8846n() {
        return this.f14769t;
    }

    /* renamed from: o */
    public final synchronized void m8847o() {
        if (this.f14765p == null) {
            throw new IllegalArgumentException();
        }
        this.f14754e.clear();
        this.f14765p = null;
        this.f14775z = null;
        this.f14770u = null;
        this.f14774y = false;
        this.f14752O = false;
        this.f14772w = false;
        this.f14753Q = false;
        this.f14751J.m8708s(false);
        this.f14751J = null;
        this.f14773x = null;
        this.f14771v = null;
        this.f14757h.release(this);
    }

    @Override // com.bumptech.glide.load.engine.DecodeJob.InterfaceC1921b
    public void onLoadFailed(GlideException glideException) {
        synchronized (this) {
            this.f14773x = glideException;
        }
        m8844l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.DecodeJob.InterfaceC1921b
    public void onResourceReady(Resource<R> resource, DataSource dataSource, boolean z) {
        synchronized (this) {
            this.f14770u = resource;
            this.f14771v = dataSource;
            this.f14753Q = z;
        }
        m8845m();
    }

    /* renamed from: p */
    public synchronized void m8848p(ResourceCallback resourceCallback) {
        boolean z;
        this.f14755f.throwIfRecycled();
        this.f14754e.m8855e(resourceCallback);
        if (this.f14754e.isEmpty()) {
            m8837e();
            if (!this.f14772w && !this.f14774y) {
                z = false;
                if (z && this.f14764o.get() == 0) {
                    m8847o();
                }
            }
            z = true;
            if (z) {
                m8847o();
            }
        }
    }

    /* renamed from: q */
    public synchronized void m8849q(DecodeJob<R> decodeJob) {
        this.f14751J = decodeJob;
        (decodeJob.m8714y() ? this.f14760k : m8839g()).execute(decodeJob);
    }

    @VisibleForTesting
    public C1957d(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, tqf tqfVar, C1958e.a aVar, Pools.Pool<C1957d<?>> pool, c cVar) {
        this.f14754e = new e();
        this.f14755f = StateVerifier.newInstance();
        this.f14764o = new AtomicInteger();
        this.f14760k = glideExecutor;
        this.f14761l = glideExecutor2;
        this.f14762m = glideExecutor3;
        this.f14763n = glideExecutor4;
        this.f14759j = tqfVar;
        this.f14756g = aVar;
        this.f14757h = pool;
        this.f14758i = cVar;
    }
}
