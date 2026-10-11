package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class DataRewinderRegistry {

    /* renamed from: b */
    public static final DataRewinder.Factory<?> f14483b = new C1914a();

    /* renamed from: a */
    public final Map<Class<?>, DataRewinder.Factory<?>> f14484a = new HashMap();

    /* renamed from: com.bumptech.glide.load.data.DataRewinderRegistry$a */
    /* loaded from: classes3.dex */
    public class C1914a implements DataRewinder.Factory<Object> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public DataRewinder<Object> build(@NonNull Object obj) {
            return new C1915b(obj);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<Object> getDataClass() {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    /* renamed from: com.bumptech.glide.load.data.DataRewinderRegistry$b */
    /* loaded from: classes3.dex */
    public static final class C1915b implements DataRewinder<Object> {

        /* renamed from: a */
        public final Object f14485a;

        public C1915b(@NonNull Object obj) {
            this.f14485a = obj;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        @NonNull
        public Object rewindAndGet() {
            return this.f14485a;
        }
    }

    @NonNull
    public synchronized <T> DataRewinder<T> build(@NonNull T t) {
        DataRewinder.Factory<?> factory;
        Preconditions.checkNotNull(t);
        factory = this.f14484a.get(t.getClass());
        if (factory == null) {
            Iterator<DataRewinder.Factory<?>> it2 = this.f14484a.values().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                DataRewinder.Factory<?> next = it2.next();
                if (next.getDataClass().isAssignableFrom(t.getClass())) {
                    factory = next;
                    break;
                }
            }
        }
        if (factory == null) {
            factory = f14483b;
        }
        return (DataRewinder<T>) factory.build(t);
    }

    public synchronized void register(@NonNull DataRewinder.Factory<?> factory) {
        this.f14484a.put(factory.getDataClass(), factory);
    }
}
