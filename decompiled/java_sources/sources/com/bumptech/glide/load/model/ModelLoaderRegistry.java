package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ModelLoaderRegistry {

    /* renamed from: a */
    public final MultiModelLoaderFactory f14903a;

    /* renamed from: b */
    public final C1979a f14904b;

    /* renamed from: com.bumptech.glide.load.model.ModelLoaderRegistry$a */
    /* loaded from: classes3.dex */
    public static class C1979a {

        /* renamed from: a */
        public final Map<Class<?>, a<?>> f14905a = new HashMap();

        /* renamed from: com.bumptech.glide.load.model.ModelLoaderRegistry$a$a */
        /* loaded from: classes3.dex */
        public static class a<Model> {

            /* renamed from: a */
            public final List<ModelLoader<Model, ?>> f14906a;

            public a(List<ModelLoader<Model, ?>> list) {
                this.f14906a = list;
            }
        }

        /* renamed from: a */
        public void m8899a() {
            this.f14905a.clear();
        }

        @Nullable
        /* renamed from: b */
        public <Model> List<ModelLoader<Model, ?>> m8900b(Class<Model> cls) {
            a<?> aVar = this.f14905a.get(cls);
            if (aVar == null) {
                return null;
            }
            return (List<ModelLoader<Model, ?>>) aVar.f14906a;
        }

        /* renamed from: c */
        public <Model> void m8901c(Class<Model> cls, List<ModelLoader<Model, ?>> list) {
            if (this.f14905a.put(cls, new a<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: " + cls);
        }
    }

    public ModelLoaderRegistry(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new MultiModelLoaderFactory(pool));
    }

    @NonNull
    /* renamed from: a */
    public static <A> Class<A> m8896a(@NonNull A a) {
        return (Class<A>) a.getClass();
    }

    public synchronized <Model, Data> void append(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f14903a.m8904b(cls, cls2, modelLoaderFactory);
        this.f14904b.m8899a();
    }

    @NonNull
    /* renamed from: b */
    public final synchronized <A> List<ModelLoader<A, ?>> m8897b(@NonNull Class<A> cls) {
        List<ModelLoader<A, ?>> m8900b;
        m8900b = this.f14904b.m8900b(cls);
        if (m8900b == null) {
            m8900b = Collections.unmodifiableList(this.f14903a.m8906d(cls));
            this.f14904b.m8901c(cls, m8900b);
        }
        return m8900b;
    }

    public synchronized <Model, Data> ModelLoader<Model, Data> build(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        return this.f14903a.build(cls, cls2);
    }

    /* renamed from: c */
    public final <Model, Data> void m8898c(@NonNull List<ModelLoaderFactory<? extends Model, ? extends Data>> list) {
        Iterator<ModelLoaderFactory<? extends Model, ? extends Data>> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().teardown();
        }
    }

    @NonNull
    public synchronized List<Class<?>> getDataClasses(@NonNull Class<?> cls) {
        return this.f14903a.m8907f(cls);
    }

    @NonNull
    public <A> List<ModelLoader<A, ?>> getModelLoaders(@NonNull A a) {
        List<ModelLoader<A, ?>> m8897b = m8897b(m8896a(a));
        if (m8897b.isEmpty()) {
            throw new Registry.NoModelLoaderAvailableException(a);
        }
        int size = m8897b.size();
        List<ModelLoader<A, ?>> emptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            ModelLoader<A, ?> modelLoader = m8897b.get(i);
            if (modelLoader.handles(a)) {
                if (z) {
                    emptyList = new ArrayList<>(size - i);
                    z = false;
                }
                emptyList.add(modelLoader);
            }
        }
        if (emptyList.isEmpty()) {
            throw new Registry.NoModelLoaderAvailableException(a, m8897b);
        }
        return emptyList;
    }

    public synchronized <Model, Data> void prepend(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f14903a.m8909h(cls, cls2, modelLoaderFactory);
        this.f14904b.m8899a();
    }

    public synchronized <Model, Data> void remove(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        m8898c(this.f14903a.m8910i(cls, cls2));
        this.f14904b.m8899a();
    }

    public synchronized <Model, Data> void replace(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        m8898c(this.f14903a.m8911j(cls, cls2, modelLoaderFactory));
        this.f14904b.m8899a();
    }

    public ModelLoaderRegistry(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
        this.f14904b = new C1979a();
        this.f14903a = multiModelLoaderFactory;
    }
}
