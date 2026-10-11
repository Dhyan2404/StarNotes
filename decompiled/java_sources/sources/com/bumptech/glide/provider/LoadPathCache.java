package com.bumptech.glide.provider;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.LoadPath;
import com.bumptech.glide.load.resource.transcode.UnitTranscoder;
import com.bumptech.glide.util.MultiClassKey;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class LoadPathCache {

    /* renamed from: c */
    public static final LoadPath<?, ?, ?> f15249c = new LoadPath<>(Object.class, Object.class, Object.class, Collections.singletonList(new DecodePath(Object.class, Object.class, Object.class, Collections.emptyList(), new UnitTranscoder(), null)), null);

    /* renamed from: a */
    public final ArrayMap<MultiClassKey, LoadPath<?, ?, ?>> f15250a = new ArrayMap<>();

    /* renamed from: b */
    public final AtomicReference<MultiClassKey> f15251b = new AtomicReference<>();

    /* renamed from: a */
    public final MultiClassKey m9083a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        MultiClassKey andSet = this.f15251b.getAndSet(null);
        if (andSet == null) {
            andSet = new MultiClassKey();
        }
        andSet.set(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    public <Data, TResource, Transcode> LoadPath<Data, TResource, Transcode> get(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        LoadPath<Data, TResource, Transcode> loadPath;
        MultiClassKey m9083a = m9083a(cls, cls2, cls3);
        synchronized (this.f15250a) {
            loadPath = (LoadPath) this.f15250a.get(m9083a);
        }
        this.f15251b.set(m9083a);
        return loadPath;
    }

    public boolean isEmptyLoadPath(@Nullable LoadPath<?, ?, ?> loadPath) {
        return f15249c.equals(loadPath);
    }

    public void put(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable LoadPath<?, ?, ?> loadPath) {
        synchronized (this.f15250a) {
            ArrayMap<MultiClassKey, LoadPath<?, ?, ?>> arrayMap = this.f15250a;
            MultiClassKey multiClassKey = new MultiClassKey(cls, cls2, cls3);
            if (loadPath == null) {
                loadPath = f15249c;
            }
            arrayMap.put(multiClassKey, loadPath);
        }
    }
}
