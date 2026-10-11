package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes3.dex */
public class MultiClassKey {

    /* renamed from: a */
    public Class<?> f15494a;

    /* renamed from: b */
    public Class<?> f15495b;

    /* renamed from: c */
    public Class<?> f15496c;

    public MultiClassKey() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MultiClassKey multiClassKey = (MultiClassKey) obj;
        return this.f15494a.equals(multiClassKey.f15494a) && this.f15495b.equals(multiClassKey.f15495b) && Util.bothNullOrEqual(this.f15496c, multiClassKey.f15496c);
    }

    public int hashCode() {
        int hashCode = ((this.f15494a.hashCode() * 31) + this.f15495b.hashCode()) * 31;
        Class<?> cls = this.f15496c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public void set(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        set(cls, cls2, null);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f15494a + ", second=" + this.f15495b + '}';
    }

    public MultiClassKey(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
        set(cls, cls2);
    }

    public void set(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f15494a = cls;
        this.f15495b = cls2;
        this.f15496c = cls3;
    }

    public MultiClassKey(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        set(cls, cls2, cls3);
    }
}
