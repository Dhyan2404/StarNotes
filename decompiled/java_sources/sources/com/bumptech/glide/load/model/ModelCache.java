package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.Queue;

/* loaded from: classes3.dex */
public class ModelCache<A, B> {

    /* renamed from: b */
    public static final int f14896b = 250;

    /* renamed from: a */
    public final LruCache<C1978b<A>, B> f14897a;

    /* renamed from: com.bumptech.glide.load.model.ModelCache$a */
    /* loaded from: classes3.dex */
    public class C1977a extends LruCache<C1978b<A>, B> {
        public C1977a(long j) {
            super(j);
        }

        @Override // com.bumptech.glide.util.LruCache
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onItemEvicted(@NonNull C1978b<A> c1978b, @Nullable B b) {
            c1978b.m8895c();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.model.ModelCache$b */
    /* loaded from: classes3.dex */
    public static final class C1978b<A> {

        /* renamed from: d */
        public static final Queue<C1978b<?>> f14899d = Util.createQueue(0);

        /* renamed from: a */
        public int f14900a;

        /* renamed from: b */
        public int f14901b;

        /* renamed from: c */
        public A f14902c;

        /* renamed from: a */
        public static <A> C1978b<A> m8893a(A a, int i, int i2) {
            C1978b<A> c1978b;
            Queue<C1978b<?>> queue = f14899d;
            synchronized (queue) {
                c1978b = (C1978b) queue.poll();
            }
            if (c1978b == null) {
                c1978b = new C1978b<>();
            }
            c1978b.m8894b(a, i, i2);
            return c1978b;
        }

        /* renamed from: b */
        public final void m8894b(A a, int i, int i2) {
            this.f14902c = a;
            this.f14901b = i;
            this.f14900a = i2;
        }

        /* renamed from: c */
        public void m8895c() {
            Queue<C1978b<?>> queue = f14899d;
            synchronized (queue) {
                queue.offer(this);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1978b)) {
                return false;
            }
            C1978b c1978b = (C1978b) obj;
            return this.f14901b == c1978b.f14901b && this.f14900a == c1978b.f14900a && this.f14902c.equals(c1978b.f14902c);
        }

        public int hashCode() {
            return (((this.f14900a * 31) + this.f14901b) * 31) + this.f14902c.hashCode();
        }
    }

    public ModelCache() {
        this(250L);
    }

    public void clear() {
        this.f14897a.clearMemory();
    }

    @Nullable
    public B get(A a, int i, int i2) {
        C1978b<A> m8893a = C1978b.m8893a(a, i, i2);
        B b = this.f14897a.get(m8893a);
        m8893a.m8895c();
        return b;
    }

    public void put(A a, int i, int i2, B b) {
        this.f14897a.put(C1978b.m8893a(a, i, i2), b);
    }

    public ModelCache(long j) {
        this.f14897a = new C1977a(j);
    }
}
