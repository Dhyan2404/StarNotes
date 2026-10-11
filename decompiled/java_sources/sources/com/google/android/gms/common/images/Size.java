package com.google.android.gms.common.images;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class Size {

    /* renamed from: a */
    public final int f29327a;

    /* renamed from: b */
    public final int f29328b;

    public Size(int i, int i2) {
        this.f29327a = i;
        this.f29328b = i2;
    }

    /* renamed from: a */
    public static NumberFormatException m22150a(String str) {
        throw new NumberFormatException("Invalid Size: \"" + str + "\"");
    }

    @NonNull
    public static Size parseSize(@NonNull String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            indexOf = str.indexOf(120);
        }
        if (indexOf < 0) {
            throw m22150a(str);
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (NumberFormatException unused) {
            throw m22150a(str);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.f29327a == size.f29327a && this.f29328b == size.f29328b) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.f29328b;
    }

    public int getWidth() {
        return this.f29327a;
    }

    public int hashCode() {
        int i = this.f29327a;
        return this.f29328b ^ ((i >>> 16) | (i << 16));
    }

    @NonNull
    public String toString() {
        return this.f29327a + "x" + this.f29328b;
    }
}
