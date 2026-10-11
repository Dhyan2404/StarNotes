package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.C1958e;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCacheAdapter;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.ResourceCallback;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.pri;
import com.sunia.HTREnginev2.tll;
import com.sunia.HTREnginev2.tqf;
import com.sunia.HTREnginev2.uqf;
import com.sunia.HTREnginev2.vqf;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class Engine implements tqf, MemoryCache.ResourceRemovedListener, C1958e.a {

    /* renamed from: j */
    public static final int f14581j = 150;

    /* renamed from: a */
    public final pri f14583a;

    /* renamed from: b */
    public final vqf f14584b;

    /* renamed from: c */
    public final MemoryCache f14585c;

    /* renamed from: d */
    public final C1933b f14586d;

    /* renamed from: e */
    public final tll f14587e;

    /* renamed from: f */
    public final C1934c f14588f;

    /* renamed from: g */
    public final C1932a f14589g;

    /* renamed from: h */
    public final C1936a f14590h;

    /* renamed from: i */
    public static final String f14580i = "Engine";

    /* renamed from: k */
    public static final boolean f14582k = Log.isLoggable(f14580i, 2);

    /* loaded from: classes3.dex */
    public class LoadStatus {

        /* renamed from: a */
        public final C1957d<?> f14591a;

        /* renamed from: b */
        public final ResourceCallback f14592b;

        public LoadStatus(ResourceCallback resourceCallback, C1957d<?> c1957d) {
            this.f14592b = resourceCallback;
            this.f14591a = c1957d;
        }

        public void cancel() {
            synchronized (Engine.this) {
                this.f14591a.m8848p(this.f14592b);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.Engine$a */
    /* loaded from: classes3.dex */
    public static class C1932a {

        /* renamed from: a */
        public final DecodeJob.InterfaceC1924e f14594a;

        /* renamed from: b */
        public final Pools.Pool<DecodeJob<?>> f14595b = FactoryPools.threadSafe(150, new a());

        /* renamed from: c */
        public int f14596c;

        /* renamed from: com.bumptech.glide.load.engine.Engine$a$a */
        /* loaded from: classes3.dex */
        public class a implements FactoryPools.Factory<DecodeJob<?>> {
            public a() {
            }

            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public DecodeJob<?> create() {
                C1932a c1932a = C1932a.this;
                return new DecodeJob<>(c1932a.f14594a, c1932a.f14595b);
            }
        }

        public C1932a(DecodeJob.InterfaceC1924e interfaceC1924e) {
            this.f14594a = interfaceC1924e;
        }

        /* renamed from: a */
        public <R> DecodeJob<R> m8735a(GlideContext glideContext, Object obj, uqf uqfVar, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, Options options, DecodeJob.InterfaceC1921b<R> interfaceC1921b) {
            DecodeJob decodeJob = (DecodeJob) Preconditions.checkNotNull(this.f14595b.acquire());
            int i3 = this.f14596c;
            this.f14596c = i3 + 1;
            return decodeJob.m8699j(glideContext, obj, uqfVar, key, i, i2, cls, cls2, priority, diskCacheStrategy, map, z, z2, z3, options, interfaceC1921b, i3);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.Engine$b */
    /* loaded from: classes3.dex */
    public static class C1933b {

        /* renamed from: a */
        public final GlideExecutor f14598a;

        /* renamed from: b */
        public final GlideExecutor f14599b;

        /* renamed from: c */
        public final GlideExecutor f14600c;

        /* renamed from: d */
        public final GlideExecutor f14601d;

        /* renamed from: e */
        public final tqf f14602e;

        /* renamed from: f */
        public final C1958e.a f14603f;

        /* renamed from: g */
        public final Pools.Pool<C1957d<?>> f14604g = FactoryPools.threadSafe(150, new a());

        /* renamed from: com.bumptech.glide.load.engine.Engine$b$a */
        /* loaded from: classes3.dex */
        public class a implements FactoryPools.Factory<C1957d<?>> {
            public a() {
            }

            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C1957d<?> create() {
                C1933b c1933b = C1933b.this;
                return new C1957d<>(c1933b.f14598a, c1933b.f14599b, c1933b.f14600c, c1933b.f14601d, c1933b.f14602e, c1933b.f14603f, c1933b.f14604g);
            }
        }

        public C1933b(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, tqf tqfVar, C1958e.a aVar) {
            this.f14598a = glideExecutor;
            this.f14599b = glideExecutor2;
            this.f14600c = glideExecutor3;
            this.f14601d = glideExecutor4;
            this.f14602e = tqfVar;
            this.f14603f = aVar;
        }

        /* renamed from: a */
        public <R> C1957d<R> m8737a(Key key, boolean z, boolean z2, boolean z3, boolean z4) {
            return ((C1957d) Preconditions.checkNotNull(this.f14604g.acquire())).m8841i(key, z, z2, z3, z4);
        }

        @VisibleForTesting
        /* renamed from: b */
        public void m8738b() {
            Executors.shutdownAndAwaitTermination(this.f14598a);
            Executors.shutdownAndAwaitTermination(this.f14599b);
            Executors.shutdownAndAwaitTermination(this.f14600c);
            Executors.shutdownAndAwaitTermination(this.f14601d);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.Engine$c */
    /* loaded from: classes3.dex */
    public static class C1934c implements DecodeJob.InterfaceC1924e {

        /* renamed from: a */
        public final DiskCache.Factory f14606a;

        /* renamed from: b */
        public volatile DiskCache f14607b;

        public C1934c(DiskCache.Factory factory) {
            this.f14606a = factory;
        }

        @Override // com.bumptech.glide.load.engine.DecodeJob.InterfaceC1924e
        /* renamed from: a */
        public DiskCache mo8721a() {
            if (this.f14607b == null) {
                synchronized (this) {
                    if (this.f14607b == null) {
                        this.f14607b = this.f14606a.build();
                    }
                    if (this.f14607b == null) {
                        this.f14607b = new DiskCacheAdapter();
                    }
                }
            }
            return this.f14607b;
        }

        @VisibleForTesting
        /* renamed from: b */
        public synchronized void m8740b() {
            if (this.f14607b == null) {
                return;
            }
            this.f14607b.clear();
        }
    }

    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, boolean z) {
        this(memoryCache, factory, glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, null, null, null, null, null, null, z);
    }

    /* renamed from: e */
    public static void m8729e(String str, long j, Key key) {
        Log.v(f14580i, str + CloudStorageConstants.OPERATION_IN + LogTime.getElapsedMillis(j) + "ms, key: " + key);
    }

    /* renamed from: a */
    public final C1958e<?> m8730a(Key key) {
        Resource<?> remove = this.f14585c.remove(key);
        if (remove == null) {
            return null;
        }
        return remove instanceof C1958e ? (C1958e) remove : new C1958e<>(remove, true, true, key, this);
    }

    @Nullable
    /* renamed from: b */
    public final C1958e<?> m8731b(Key key) {
        C1958e<?> m8747e = this.f14590h.m8747e(key);
        if (m8747e != null) {
            m8747e.m8856a();
        }
        return m8747e;
    }

    /* renamed from: c */
    public final C1958e<?> m8732c(Key key) {
        C1958e<?> m8730a = m8730a(key);
        if (m8730a != null) {
            m8730a.m8856a();
            this.f14590h.m8743a(key, m8730a);
        }
        return m8730a;
    }

    public void clearDiskCache() {
        this.f14588f.mo8721a().clear();
    }

    @Nullable
    /* renamed from: d */
    public final C1958e<?> m8733d(uqf uqfVar, boolean z, long j) {
        if (!z) {
            return null;
        }
        C1958e<?> m8731b = m8731b(uqfVar);
        if (m8731b != null) {
            if (f14582k) {
                m8729e("Loaded resource from active resources", j, uqfVar);
            }
            return m8731b;
        }
        C1958e<?> m8732c = m8732c(uqfVar);
        if (m8732c == null) {
            return null;
        }
        if (f14582k) {
            m8729e("Loaded resource from cache", j, uqfVar);
        }
        return m8732c;
    }

    /* renamed from: f */
    public final <R> LoadStatus m8734f(GlideContext glideContext, Object obj, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, Options options, boolean z3, boolean z4, boolean z5, boolean z6, ResourceCallback resourceCallback, Executor executor, uqf uqfVar, long j) {
        C1957d<?> m56365a = this.f14583a.m56365a(uqfVar, z6);
        if (m56365a != null) {
            m56365a.m8834b(resourceCallback, executor);
            if (f14582k) {
                m8729e("Added to existing load", j, uqfVar);
            }
            return new LoadStatus(resourceCallback, m56365a);
        }
        C1957d<R> m8737a = this.f14586d.m8737a(uqfVar, z3, z4, z5, z6);
        DecodeJob<R> m8735a = this.f14589g.m8735a(glideContext, obj, uqfVar, key, i, i2, cls, cls2, priority, diskCacheStrategy, map, z, z2, z6, options, m8737a);
        this.f14583a.m56368d(uqfVar, m8737a);
        m8737a.m8834b(resourceCallback, executor);
        m8737a.m8849q(m8735a);
        if (f14582k) {
            m8729e("Started new load", j, uqfVar);
        }
        return new LoadStatus(resourceCallback, m8737a);
    }

    public <R> LoadStatus load(GlideContext glideContext, Object obj, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, Options options, boolean z3, boolean z4, boolean z5, boolean z6, ResourceCallback resourceCallback, Executor executor) {
        long logTime = f14582k ? LogTime.getLogTime() : 0L;
        uqf m57868a = this.f14584b.m57868a(obj, key, i, i2, map, cls, cls2, options);
        synchronized (this) {
            C1958e<?> m8733d = m8733d(m57868a, z3, logTime);
            if (m8733d == null) {
                return m8734f(glideContext, obj, key, i, i2, cls, cls2, priority, diskCacheStrategy, map, z, z2, options, z3, z4, z5, z6, resourceCallback, executor, m57868a, logTime);
            }
            resourceCallback.onResourceReady(m8733d, DataSource.MEMORY_CACHE, false);
            return null;
        }
    }

    @Override // com.sunia.HTREnginev2.tqf
    public synchronized void onEngineJobCancelled(C1957d<?> c1957d, Key key) {
        this.f14583a.m56369e(key, c1957d);
    }

    @Override // com.sunia.HTREnginev2.tqf
    public synchronized void onEngineJobComplete(C1957d<?> c1957d, Key key, C1958e<?> c1958e) {
        if (c1958e != null) {
            if (c1958e.m8858c()) {
                this.f14590h.m8743a(key, c1958e);
            }
        }
        this.f14583a.m56369e(key, c1957d);
    }

    @Override // com.bumptech.glide.load.engine.C1958e.a
    public void onResourceReleased(Key key, C1958e<?> c1958e) {
        this.f14590h.m8746d(key);
        if (c1958e.m8858c()) {
            this.f14585c.put(key, c1958e);
        } else {
            this.f14587e.m57389a(c1958e, false);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.MemoryCache.ResourceRemovedListener
    public void onResourceRemoved(@NonNull Resource<?> resource) {
        this.f14587e.m57389a(resource, true);
    }

    public void release(Resource<?> resource) {
        if (!(resource instanceof C1958e)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((C1958e) resource).m8859d();
    }

    @VisibleForTesting
    public void shutdown() {
        this.f14586d.m8738b();
        this.f14588f.m8740b();
        this.f14590h.m8750h();
    }

    @VisibleForTesting
    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, pri priVar, vqf vqfVar, C1936a c1936a, C1933b c1933b, C1932a c1932a, tll tllVar, boolean z) {
        this.f14585c = memoryCache;
        C1934c c1934c = new C1934c(factory);
        this.f14588f = c1934c;
        C1936a c1936a2 = c1936a == null ? new C1936a(z) : c1936a;
        this.f14590h = c1936a2;
        c1936a2.m8749g(this);
        this.f14584b = vqfVar == null ? new vqf() : vqfVar;
        this.f14583a = priVar == null ? new pri() : priVar;
        this.f14586d = c1933b == null ? new C1933b(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, this, this) : c1933b;
        this.f14589g = c1932a == null ? new C1932a(c1934c) : c1932a;
        this.f14587e = tllVar == null ? new tll() : tllVar;
        memoryCache.setResourceRemovedListener(this);
    }
}
