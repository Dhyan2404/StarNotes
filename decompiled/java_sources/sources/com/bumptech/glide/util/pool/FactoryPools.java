package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class FactoryPools {

    /* renamed from: a */
    public static final String f15505a = "FactoryPools";

    /* renamed from: b */
    public static final int f15506b = 20;

    /* renamed from: c */
    public static final Resetter<Object> f15507c = new C2043a();

    /* loaded from: classes3.dex */
    public interface Factory<T> {
        T create();
    }

    /* loaded from: classes3.dex */
    public interface Poolable {
        @NonNull
        StateVerifier getVerifier();
    }

    /* loaded from: classes3.dex */
    public interface Resetter<T> {
        void reset(@NonNull T t);
    }

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$a */
    /* loaded from: classes3.dex */
    public class C2043a implements Resetter<Object> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        public void reset(@NonNull Object obj) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$b */
    /* loaded from: classes3.dex */
    public class C2044b<T> implements Factory<List<T>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> create() {
            return new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$c */
    /* loaded from: classes3.dex */
    public class C2045c<T> implements Resetter<List<T>> {
        @Override // com.bumptech.glide.util.pool.FactoryPools.Resetter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void reset(@NonNull List<T> list) {
            list.clear();
        }
    }

    /* renamed from: com.bumptech.glide.util.pool.FactoryPools$d */
    /* loaded from: classes3.dex */
    public static final class C2046d<T> implements Pools.Pool<T> {

        /* renamed from: a */
        public final Factory<T> f15508a;

        /* renamed from: b */
        public final Resetter<T> f15509b;

        /* renamed from: c */
        public final Pools.Pool<T> f15510c;

        public C2046d(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
            this.f15510c = pool;
            this.f15508a = factory;
            this.f15509b = resetter;
        }

        @Override // androidx.core.util.Pools.Pool
        public T acquire() {
            T acquire = this.f15510c.acquire();
            if (acquire == null) {
                acquire = this.f15508a.create();
                if (Log.isLoggable(FactoryPools.f15505a, 2)) {
                    Log.v(FactoryPools.f15505a, "Created new " + acquire.getClass());
                }
            }
            if (acquire instanceof Poolable) {
                acquire.getVerifier().mo9193a(false);
            }
            return (T) acquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NonNull T t) {
            if (t instanceof Poolable) {
                ((Poolable) t).getVerifier().mo9193a(true);
            }
            this.f15509b.reset(t);
            return this.f15510c.release(t);
        }
    }

    @NonNull
    /* renamed from: a */
    public static <T extends Poolable> Pools.Pool<T> m9187a(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory) {
        return m9188b(pool, factory, m9189c());
    }

    @NonNull
    /* renamed from: b */
    public static <T> Pools.Pool<T> m9188b(@NonNull Pools.Pool<T> pool, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
        return new C2046d(pool, factory, resetter);
    }

    @NonNull
    /* renamed from: c */
    public static <T> Resetter<T> m9189c() {
        return (Resetter<T>) f15507c;
    }

    @NonNull
    public static <T extends Poolable> Pools.Pool<T> simple(int i, @NonNull Factory<T> factory) {
        return m9187a(new Pools.SimplePool(i), factory);
    }

    @NonNull
    public static <T extends Poolable> Pools.Pool<T> threadSafe(int i, @NonNull Factory<T> factory) {
        return m9187a(new Pools.SynchronizedPool(i), factory);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> threadSafeList() {
        return threadSafeList(20);
    }

    @NonNull
    public static <T> Pools.Pool<List<T>> threadSafeList(int i) {
        return m9188b(new Pools.SynchronizedPool(i), new C2044b(), new C2045c());
    }
}
