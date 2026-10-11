package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Preconditions;

/* loaded from: classes3.dex */
public final class PreFillType {

    /* renamed from: e */
    @VisibleForTesting
    public static final Bitmap.Config f14836e = Bitmap.Config.RGB_565;

    /* renamed from: a */
    public final int f14837a;

    /* renamed from: b */
    public final int f14838b;

    /* renamed from: c */
    public final Bitmap.Config f14839c;

    /* renamed from: d */
    public final int f14840d;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public final int f14841a;

        /* renamed from: b */
        public final int f14842b;

        /* renamed from: c */
        public Bitmap.Config f14843c;

        /* renamed from: d */
        public int f14844d;

        public Builder(int i) {
            this(i, i);
        }

        /* renamed from: a */
        public PreFillType m8873a() {
            return new PreFillType(this.f14841a, this.f14842b, this.f14843c, this.f14844d);
        }

        /* renamed from: b */
        public Bitmap.Config m8874b() {
            return this.f14843c;
        }

        public Builder setConfig(@Nullable Bitmap.Config config) {
            this.f14843c = config;
            return this;
        }

        public Builder setWeight(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.f14844d = i;
            return this;
        }

        public Builder(int i, int i2) {
            this.f14844d = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (i2 > 0) {
                this.f14841a = i;
                this.f14842b = i2;
                return;
            }
            throw new IllegalArgumentException("Height must be > 0");
        }
    }

    public PreFillType(int i, int i2, Bitmap.Config config, int i3) {
        this.f14839c = (Bitmap.Config) Preconditions.checkNotNull(config, "Config must not be null");
        this.f14837a = i;
        this.f14838b = i2;
        this.f14840d = i3;
    }

    /* renamed from: a */
    public Bitmap.Config m8869a() {
        return this.f14839c;
    }

    /* renamed from: b */
    public int m8870b() {
        return this.f14838b;
    }

    /* renamed from: c */
    public int m8871c() {
        return this.f14840d;
    }

    /* renamed from: d */
    public int m8872d() {
        return this.f14837a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PreFillType)) {
            return false;
        }
        PreFillType preFillType = (PreFillType) obj;
        return this.f14838b == preFillType.f14838b && this.f14837a == preFillType.f14837a && this.f14840d == preFillType.f14840d && this.f14839c == preFillType.f14839c;
    }

    public int hashCode() {
        return (((((this.f14837a * 31) + this.f14838b) * 31) + this.f14839c.hashCode()) * 31) + this.f14840d;
    }

    public String toString() {
        return "PreFillSize{width=" + this.f14837a + ", height=" + this.f14838b + ", config=" + this.f14839c + ", weight=" + this.f14840d + '}';
    }
}
