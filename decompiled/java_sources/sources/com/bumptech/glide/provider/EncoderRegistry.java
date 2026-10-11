package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class EncoderRegistry {

    /* renamed from: a */
    public final List<C2022a<?>> f15245a = new ArrayList();

    /* renamed from: com.bumptech.glide.provider.EncoderRegistry$a */
    /* loaded from: classes3.dex */
    public static final class C2022a<T> {

        /* renamed from: a */
        public final Class<T> f15246a;

        /* renamed from: b */
        public final Encoder<T> f15247b;

        public C2022a(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
            this.f15246a = cls;
            this.f15247b = encoder;
        }

        /* renamed from: a */
        public boolean m9082a(@NonNull Class<?> cls) {
            return this.f15246a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> void append(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        this.f15245a.add(new C2022a<>(cls, encoder));
    }

    @Nullable
    public synchronized <T> Encoder<T> getEncoder(@NonNull Class<T> cls) {
        for (C2022a<?> c2022a : this.f15245a) {
            if (c2022a.m9082a(cls)) {
                return (Encoder<T>) c2022a.f15247b;
            }
        }
        return null;
    }

    public synchronized <T> void prepend(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        this.f15245a.add(0, new C2022a<>(cls, encoder));
    }
}
