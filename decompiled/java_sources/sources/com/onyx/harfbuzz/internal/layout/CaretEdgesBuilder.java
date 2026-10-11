package com.onyx.harfbuzz.internal.layout;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.collections.IntList;

/* loaded from: classes9.dex */
public final class CaretEdgesBuilder {

    /* renamed from: a */
    public boolean f62817a;

    /* renamed from: b */
    public boolean f62818b;

    /* renamed from: c */
    public FloatList f62819c;

    /* renamed from: d */
    public IntList f62820d;

    /* renamed from: e */
    @Nullable
    public boolean[] f62821e;

    @NonNull
    /* renamed from: a */
    public final float[] m52082a() {
        int size;
        float f;
        float f2;
        float f3;
        int size2 = this.f62820d.size();
        float[] fArr = new float[size2 + 1];
        int i = this.f62820d.get(0) + 1;
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 1; i5 <= size2; i5++) {
            if (i5 != size2) {
                size = this.f62820d.get(i5) + 1;
                boolean[] zArr = this.f62821e;
                if (zArr == null || zArr[i5 - 1]) {
                    i3++;
                } else {
                    i = size;
                }
            } else {
                i3++;
                size = this.f62817a ? 0 : this.f62819c.size() + 1;
            }
            if (size != i) {
                if (this.f62817a) {
                    f = 0.0f;
                    while (i2 > size) {
                        f += this.f62819c.get(i2 - 1);
                        i2--;
                    }
                } else {
                    f = 0.0f;
                    while (i2 < size) {
                        f += this.f62819c.get(i2 - 1);
                        i2++;
                    }
                }
                int i6 = 1;
                float f4 = 0.0f;
                while (i4 < i5) {
                    boolean[] zArr2 = this.f62821e;
                    if (zArr2 == null || zArr2[i4] || i4 == size2 - 1) {
                        f2 = (i6 * f) / i3;
                        f3 = f2 - f4;
                        i6++;
                    } else {
                        f2 = f4;
                        f3 = 0.0f;
                    }
                    fArr[i4] = f3;
                    i4++;
                    f4 = f2;
                }
                i3 = 0;
            }
            i = size;
        }
        return fArr;
    }

    @NonNull
    public FloatList build() {
        int size = this.f62820d.size();
        float[] m52082a = m52082a();
        float f = 0.0f;
        if (this.f62818b) {
            m52082a[size] = 0.0f;
            for (int i = size - 1; i >= 0; i--) {
                f += m52082a[i];
                m52082a[i] = f;
            }
        } else {
            float f2 = m52082a[0];
            m52082a[0] = 0.0f;
            for (int i2 = 1; i2 <= size; i2++) {
                f += f2;
                f2 = m52082a[i2];
                m52082a[i2] = f;
            }
        }
        return FloatList.m52025of(m52082a);
    }

    @NonNull
    public CaretEdgesBuilder setBackward(boolean z) {
        this.f62817a = z;
        return this;
    }

    @NonNull
    public CaretEdgesBuilder setCaretStops(@Nullable boolean[] zArr) {
        this.f62821e = zArr;
        return this;
    }

    @NonNull
    public CaretEdgesBuilder setClusterMap(IntList intList) {
        this.f62820d = intList;
        return this;
    }

    @NonNull
    public CaretEdgesBuilder setGlyphAdvances(FloatList floatList) {
        this.f62819c = floatList;
        return this;
    }

    @NonNull
    public CaretEdgesBuilder setRTL(boolean z) {
        this.f62818b = z;
        return this;
    }
}
