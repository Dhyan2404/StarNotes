package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;

/* renamed from: com.bumptech.glide.load.engine.e */
/* loaded from: classes3.dex */
public class C1958e<Z> implements Resource<Z> {

    /* renamed from: e */
    public final boolean f14783e;

    /* renamed from: f */
    public final boolean f14784f;

    /* renamed from: g */
    public final Resource<Z> f14785g;

    /* renamed from: h */
    public final a f14786h;

    /* renamed from: i */
    public final Key f14787i;

    /* renamed from: j */
    public int f14788j;

    /* renamed from: k */
    public boolean f14789k;

    /* renamed from: com.bumptech.glide.load.engine.e$a */
    /* loaded from: classes3.dex */
    public interface a {
        void onResourceReleased(Key key, C1958e<?> c1958e);
    }

    public C1958e(Resource<Z> resource, boolean z, boolean z2, Key key, a aVar) {
        this.f14785g = (Resource) Preconditions.checkNotNull(resource);
        this.f14783e = z;
        this.f14784f = z2;
        this.f14787i = key;
        this.f14786h = (a) Preconditions.checkNotNull(aVar);
    }

    /* renamed from: a */
    public synchronized void m8856a() {
        if (this.f14789k) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f14788j++;
    }

    /* renamed from: b */
    public Resource<Z> m8857b() {
        return this.f14785g;
    }

    /* renamed from: c */
    public boolean m8858c() {
        return this.f14783e;
    }

    /* renamed from: d */
    public void m8859d() {
        boolean z;
        synchronized (this) {
            int i = this.f14788j;
            if (i <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z = true;
            int i2 = i - 1;
            this.f14788j = i2;
            if (i2 != 0) {
                z = false;
            }
        }
        if (z) {
            this.f14786h.onResourceReleased(this.f14787i, this);
        }
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Z get() {
        return this.f14785g.get();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<Z> getResourceClass() {
        return this.f14785g.getResourceClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f14785g.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public synchronized void recycle() {
        if (this.f14788j > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f14789k) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f14789k = true;
        if (this.f14784f) {
            this.f14785g.recycle();
        }
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f14783e + ", listener=" + this.f14786h + ", key=" + this.f14787i + ", acquired=" + this.f14788j + ", isRecycled=" + this.f14789k + ", resource=" + this.f14785g + '}';
    }
}
