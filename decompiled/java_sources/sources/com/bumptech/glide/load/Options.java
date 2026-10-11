package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class Options implements Key {

    /* renamed from: a */
    public final ArrayMap<Option<?>, Object> f14474a = new CachedHashCodeArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static <T> void m8673a(@NonNull Option<T> option, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        option.update(obj, messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.f14474a.equals(((Options) obj).f14474a);
        }
        return false;
    }

    @Nullable
    public <T> T get(@NonNull Option<T> option) {
        return this.f14474a.containsKey(option) ? (T) this.f14474a.get(option) : option.getDefaultValue();
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f14474a.hashCode();
    }

    public void putAll(@NonNull Options options) {
        this.f14474a.putAll((SimpleArrayMap<? extends Option<?>, ? extends Object>) options.f14474a);
    }

    @NonNull
    public <T> Options set(@NonNull Option<T> option, @NonNull T t) {
        this.f14474a.put(option, t);
        return this;
    }

    public String toString() {
        return "Options{values=" + this.f14474a + '}';
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (int i = 0; i < this.f14474a.size(); i++) {
            m8673a(this.f14474a.keyAt(i), this.f14474a.valueAt(i), messageDigest);
        }
    }
}
