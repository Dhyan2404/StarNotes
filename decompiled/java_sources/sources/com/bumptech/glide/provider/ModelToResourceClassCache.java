package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.util.MultiClassKey;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class ModelToResourceClassCache {

    /* renamed from: a */
    public final AtomicReference<MultiClassKey> f15252a = new AtomicReference<>();

    /* renamed from: b */
    public final ArrayMap<MultiClassKey, List<Class<?>>> f15253b = new ArrayMap<>();

    public void clear() {
        synchronized (this.f15253b) {
            this.f15253b.clear();
        }
    }

    @Nullable
    public List<Class<?>> get(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        MultiClassKey andSet = this.f15252a.getAndSet(null);
        if (andSet == null) {
            andSet = new MultiClassKey(cls, cls2, cls3);
        } else {
            andSet.set(cls, cls2, cls3);
        }
        synchronized (this.f15253b) {
            list = this.f15253b.get(andSet);
        }
        this.f15252a.set(andSet);
        return list;
    }

    public void put(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f15253b) {
            this.f15253b.put(new MultiClassKey(cls, cls2, cls3), list);
        }
    }
}
