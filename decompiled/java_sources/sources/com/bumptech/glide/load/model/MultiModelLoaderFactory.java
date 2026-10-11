package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class MultiModelLoaderFactory {

    /* renamed from: e */
    public static final C1982c f14907e = new C1982c();

    /* renamed from: f */
    public static final ModelLoader<Object, Object> f14908f = new C1980a();

    /* renamed from: a */
    public final List<C1981b<?, ?>> f14909a;

    /* renamed from: b */
    public final C1982c f14910b;

    /* renamed from: c */
    public final Set<C1981b<?, ?>> f14911c;

    /* renamed from: d */
    public final Pools.Pool<List<Throwable>> f14912d;

    /* renamed from: com.bumptech.glide.load.model.MultiModelLoaderFactory$a */
    /* loaded from: classes3.dex */
    public static class C1980a implements ModelLoader<Object, Object> {
        @Override // com.bumptech.glide.load.model.ModelLoader
        @Nullable
        public ModelLoader.LoadData<Object> buildLoadData(@NonNull Object obj, int i, int i2, @NonNull Options options) {
            return null;
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public boolean handles(@NonNull Object obj) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.model.MultiModelLoaderFactory$b */
    /* loaded from: classes3.dex */
    public static class C1981b<Model, Data> {

        /* renamed from: a */
        public final Class<Model> f14913a;

        /* renamed from: b */
        public final Class<Data> f14914b;

        /* renamed from: c */
        public final ModelLoaderFactory<? extends Model, ? extends Data> f14915c;

        public C1981b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
            this.f14913a = cls;
            this.f14914b = cls2;
            this.f14915c = modelLoaderFactory;
        }

        /* renamed from: a */
        public boolean m8912a(@NonNull Class<?> cls) {
            return this.f14913a.isAssignableFrom(cls);
        }

        /* renamed from: b */
        public boolean m8913b(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return m8912a(cls) && this.f14914b.isAssignableFrom(cls2);
        }
    }

    /* renamed from: com.bumptech.glide.load.model.MultiModelLoaderFactory$c */
    /* loaded from: classes3.dex */
    public static class C1982c {
        @NonNull
        /* renamed from: a */
        public <Model, Data> C1984a<Model, Data> m8914a(@NonNull List<ModelLoader<Model, Data>> list, @NonNull Pools.Pool<List<Throwable>> pool) {
            return new C1984a<>(list, pool);
        }
    }

    public MultiModelLoaderFactory(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(pool, f14907e);
    }

    @NonNull
    /* renamed from: e */
    public static <Model, Data> ModelLoader<Model, Data> m8902e() {
        return (ModelLoader<Model, Data>) f14908f;
    }

    /* renamed from: a */
    public final <Model, Data> void m8903a(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory, boolean z) {
        C1981b<?, ?> c1981b = new C1981b<>(cls, cls2, modelLoaderFactory);
        List<C1981b<?, ?>> list = this.f14909a;
        list.add(z ? list.size() : 0, c1981b);
    }

    /* renamed from: b */
    public synchronized <Model, Data> void m8904b(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        m8903a(cls, cls2, modelLoaderFactory, true);
    }

    @NonNull
    public synchronized <Model, Data> ModelLoader<Model, Data> build(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (C1981b<?, ?> c1981b : this.f14909a) {
                if (this.f14911c.contains(c1981b)) {
                    z = true;
                } else if (c1981b.m8913b(cls, cls2)) {
                    this.f14911c.add(c1981b);
                    arrayList.add(m8905c(c1981b));
                    this.f14911c.remove(c1981b);
                }
            }
            if (arrayList.size() > 1) {
                return this.f14910b.m8914a(arrayList, this.f14912d);
            }
            if (arrayList.size() == 1) {
                return (ModelLoader) arrayList.get(0);
            }
            if (!z) {
                throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
            }
            return m8902e();
        } catch (Throwable th) {
            this.f14911c.clear();
            throw th;
        }
    }

    @NonNull
    /* renamed from: c */
    public final <Model, Data> ModelLoader<Model, Data> m8905c(@NonNull C1981b<?, ?> c1981b) {
        return (ModelLoader) Preconditions.checkNotNull(c1981b.f14915c.build(this));
    }

    @NonNull
    /* renamed from: d */
    public synchronized <Model> List<ModelLoader<Model, ?>> m8906d(@NonNull Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (C1981b<?, ?> c1981b : this.f14909a) {
                if (!this.f14911c.contains(c1981b) && c1981b.m8912a(cls)) {
                    this.f14911c.add(c1981b);
                    arrayList.add(m8905c(c1981b));
                    this.f14911c.remove(c1981b);
                }
            }
        } catch (Throwable th) {
            this.f14911c.clear();
            throw th;
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: f */
    public synchronized List<Class<?>> m8907f(@NonNull Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (C1981b<?, ?> c1981b : this.f14909a) {
            if (!arrayList.contains(c1981b.f14914b) && c1981b.m8912a(cls)) {
                arrayList.add(c1981b.f14914b);
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: g */
    public final <Model, Data> ModelLoaderFactory<Model, Data> m8908g(@NonNull C1981b<?, ?> c1981b) {
        return (ModelLoaderFactory<Model, Data>) c1981b.f14915c;
    }

    /* renamed from: h */
    public synchronized <Model, Data> void m8909h(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        m8903a(cls, cls2, modelLoaderFactory, false);
    }

    @NonNull
    /* renamed from: i */
    public synchronized <Model, Data> List<ModelLoaderFactory<? extends Model, ? extends Data>> m8910i(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<C1981b<?, ?>> it2 = this.f14909a.iterator();
        while (it2.hasNext()) {
            C1981b<?, ?> next = it2.next();
            if (next.m8913b(cls, cls2)) {
                it2.remove();
                arrayList.add(m8908g(next));
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: j */
    public synchronized <Model, Data> List<ModelLoaderFactory<? extends Model, ? extends Data>> m8911j(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        List<ModelLoaderFactory<? extends Model, ? extends Data>> m8910i;
        m8910i = m8910i(cls, cls2);
        m8904b(cls, cls2, modelLoaderFactory);
        return m8910i;
    }

    @VisibleForTesting
    public MultiModelLoaderFactory(@NonNull Pools.Pool<List<Throwable>> pool, @NonNull C1982c c1982c) {
        this.f14909a = new ArrayList();
        this.f14911c = new HashSet();
        this.f14912d = pool;
        this.f14910b = c1982c;
    }
}
