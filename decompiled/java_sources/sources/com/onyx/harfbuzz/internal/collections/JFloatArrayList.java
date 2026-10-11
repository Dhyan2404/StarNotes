package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class JFloatArrayList extends FloatList {

    /* renamed from: a */
    @NonNull
    public final float[] f62801a;

    /* renamed from: b */
    public final int f62802b;

    /* renamed from: c */
    public final int f62803c;

    public JFloatArrayList(@NonNull float[] fArr, int i, int i2) {
        this.f62801a = fArr;
        this.f62802b = i;
        this.f62803c = i2;
    }

    @Override // com.onyx.harfbuzz.collections.FloatList
    public void copyTo(@NonNull float[] fArr, int i) {
        System.arraycopy(this.f62801a, this.f62802b, fArr, i, this.f62803c);
    }

    @Override // com.onyx.harfbuzz.collections.FloatList
    public float get(int i) {
        Preconditions.checkElementIndex(i, this.f62803c);
        return this.f62801a[i + this.f62802b];
    }

    @Override // com.onyx.harfbuzz.collections.FloatList
    public int size() {
        return this.f62803c;
    }

    @Override // com.onyx.harfbuzz.collections.FloatList
    @NonNull
    public FloatList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62803c);
        return new JFloatArrayList(this.f62801a, this.f62802b + i, i2 - i);
    }
}
