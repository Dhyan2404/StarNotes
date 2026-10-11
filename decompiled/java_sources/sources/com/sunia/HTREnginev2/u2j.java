package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;

/* loaded from: classes3.dex */
public final class u2j<Z> implements Resource<Z>, FactoryPools.Poolable {

    /* renamed from: i */
    public static final Pools.Pool<u2j<?>> f86051i = FactoryPools.threadSafe(20, new C14485a());

    /* renamed from: e */
    public final StateVerifier f86052e = StateVerifier.newInstance();

    /* renamed from: f */
    public Resource<Z> f86053f;

    /* renamed from: g */
    public boolean f86054g;

    /* renamed from: h */
    public boolean f86055h;

    /* renamed from: com.sunia.HTREnginev2.u2j$a */
    /* loaded from: classes3.dex */
    public class C14485a implements FactoryPools.Factory<u2j<?>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public u2j<?> create() {
            return new u2j<>();
        }
    }

    @NonNull
    /* renamed from: b */
    public static <Z> u2j<Z> m57521b(Resource<Z> resource) {
        u2j<Z> u2jVar = (u2j) Preconditions.checkNotNull(f86051i.acquire());
        u2jVar.m57522a(resource);
        return u2jVar;
    }

    /* renamed from: a */
    public final void m57522a(Resource<Z> resource) {
        this.f86055h = false;
        this.f86054g = true;
        this.f86053f = resource;
    }

    /* renamed from: c */
    public final void m57523c() {
        this.f86053f = null;
        f86051i.release(this);
    }

    /* renamed from: d */
    public synchronized void m57524d() {
        this.f86052e.throwIfRecycled();
        if (!this.f86054g) {
            throw new IllegalStateException("Already unlocked");
        }
        this.f86054g = false;
        if (this.f86055h) {
            recycle();
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Z get() {
        return this.f86053f.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Z> getResourceClass() {
        return this.f86053f.getResourceClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f86053f.getSize();
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier getVerifier() {
        return this.f86052e;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public synchronized void recycle() {
        this.f86052e.throwIfRecycled();
        this.f86055h = true;
        if (!this.f86054g) {
            this.f86053f.recycle();
            m57523c();
        }
    }
}
