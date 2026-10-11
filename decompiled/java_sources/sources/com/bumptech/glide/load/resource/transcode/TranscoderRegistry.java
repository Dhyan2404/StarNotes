package com.bumptech.glide.load.resource.transcode;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class TranscoderRegistry {

    /* renamed from: a */
    public final List<C2017a<?, ?>> f15192a = new ArrayList();

    /* renamed from: com.bumptech.glide.load.resource.transcode.TranscoderRegistry$a */
    /* loaded from: classes3.dex */
    public static final class C2017a<Z, R> {

        /* renamed from: a */
        public final Class<Z> f15193a;

        /* renamed from: b */
        public final Class<R> f15194b;

        /* renamed from: c */
        public final ResourceTranscoder<Z, R> f15195c;

        public C2017a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
            this.f15193a = cls;
            this.f15194b = cls2;
            this.f15195c = resourceTranscoder;
        }

        /* renamed from: a */
        public boolean m9040a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f15193a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f15194b);
        }
    }

    @NonNull
    public synchronized <Z, R> ResourceTranscoder<Z, R> get(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return UnitTranscoder.get();
        }
        for (C2017a<?, ?> c2017a : this.f15192a) {
            if (c2017a.m9040a(cls, cls2)) {
                return (ResourceTranscoder<Z, R>) c2017a.f15195c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> getTranscodeClasses(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        Iterator<C2017a<?, ?>> it2 = this.f15192a.iterator();
        while (it2.hasNext()) {
            if (it2.next().m9040a(cls, cls2)) {
                arrayList.add(cls2);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void register(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull ResourceTranscoder<Z, R> resourceTranscoder) {
        this.f15192a.add(new C2017a<>(cls, cls2, resourceTranscoder));
    }
}
