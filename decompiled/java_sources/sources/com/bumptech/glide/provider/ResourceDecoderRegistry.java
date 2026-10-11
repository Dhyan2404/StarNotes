package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class ResourceDecoderRegistry {

    /* renamed from: a */
    public final List<String> f15254a = new ArrayList();

    /* renamed from: b */
    public final Map<String, List<C2023a<?, ?>>> f15255b = new HashMap();

    /* renamed from: com.bumptech.glide.provider.ResourceDecoderRegistry$a */
    /* loaded from: classes3.dex */
    public static class C2023a<T, R> {

        /* renamed from: a */
        public final Class<T> f15256a;

        /* renamed from: b */
        public final Class<R> f15257b;

        /* renamed from: c */
        public final ResourceDecoder<T, R> f15258c;

        public C2023a(@NonNull Class<T> cls, @NonNull Class<R> cls2, ResourceDecoder<T, R> resourceDecoder) {
            this.f15256a = cls;
            this.f15257b = cls2;
            this.f15258c = resourceDecoder;
        }

        /* renamed from: a */
        public boolean m9085a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f15256a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f15257b);
        }
    }

    @NonNull
    /* renamed from: a */
    public final synchronized List<C2023a<?, ?>> m9084a(@NonNull String str) {
        List<C2023a<?, ?>> list;
        if (!this.f15254a.contains(str)) {
            this.f15254a.add(str);
        }
        list = this.f15255b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f15255b.put(str, list);
        }
        return list;
    }

    public synchronized <T, R> void append(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        m9084a(str).add(new C2023a<>(cls, cls2, resourceDecoder));
    }

    @NonNull
    public synchronized <T, R> List<ResourceDecoder<T, R>> getDecoders(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it2 = this.f15254a.iterator();
        while (it2.hasNext()) {
            List<C2023a<?, ?>> list = this.f15255b.get(it2.next());
            if (list != null) {
                for (C2023a<?, ?> c2023a : list) {
                    if (c2023a.m9085a(cls, cls2)) {
                        arrayList.add(c2023a.f15258c);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> getResourceClasses(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator<String> it2 = this.f15254a.iterator();
        while (it2.hasNext()) {
            List<C2023a<?, ?>> list = this.f15255b.get(it2.next());
            if (list != null) {
                for (C2023a<?, ?> c2023a : list) {
                    if (c2023a.m9085a(cls, cls2) && !arrayList.contains(c2023a.f15257b)) {
                        arrayList.add(c2023a.f15257b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized <T, R> void prepend(@NonNull String str, @NonNull ResourceDecoder<T, R> resourceDecoder, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        m9084a(str).add(0, new C2023a<>(cls, cls2, resourceDecoder));
    }

    public synchronized void setBucketPriorityList(@NonNull List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f15254a);
        this.f15254a.clear();
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            this.f15254a.add(it2.next());
        }
        for (String str : arrayList) {
            if (!list.contains(str)) {
                this.f15254a.add(str);
            }
        }
    }
}
