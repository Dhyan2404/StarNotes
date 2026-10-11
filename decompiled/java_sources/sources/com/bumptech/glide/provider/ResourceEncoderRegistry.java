package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ResourceEncoderRegistry {

    /* renamed from: a */
    public final List<C2024a<?>> f15259a = new ArrayList();

    /* renamed from: com.bumptech.glide.provider.ResourceEncoderRegistry$a */
    /* loaded from: classes3.dex */
    public static final class C2024a<T> {

        /* renamed from: a */
        public final Class<T> f15260a;

        /* renamed from: b */
        public final ResourceEncoder<T> f15261b;

        public C2024a(@NonNull Class<T> cls, @NonNull ResourceEncoder<T> resourceEncoder) {
            this.f15260a = cls;
            this.f15261b = resourceEncoder;
        }

        /* renamed from: a */
        public boolean m9086a(@NonNull Class<?> cls) {
            return this.f15260a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void append(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        this.f15259a.add(new C2024a<>(cls, resourceEncoder));
    }

    @Nullable
    public synchronized <Z> ResourceEncoder<Z> get(@NonNull Class<Z> cls) {
        int size = this.f15259a.size();
        for (int i = 0; i < size; i++) {
            C2024a<?> c2024a = this.f15259a.get(i);
            if (c2024a.m9086a(cls)) {
                return (ResourceEncoder<Z>) c2024a.f15261b;
            }
        }
        return null;
    }

    public synchronized <Z> void prepend(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        this.f15259a.add(0, new C2024a<>(cls, resourceEncoder));
    }
}
