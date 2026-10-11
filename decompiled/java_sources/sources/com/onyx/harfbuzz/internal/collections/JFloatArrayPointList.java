package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.collections.PointList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class JFloatArrayPointList extends PointList {

    /* renamed from: d */
    public static final int f62804d = 2;

    /* renamed from: e */
    public static final int f62805e = 0;

    /* renamed from: f */
    public static final int f62806f = 1;

    /* renamed from: a */
    @NonNull
    public final float[] f62807a;

    /* renamed from: b */
    public final int f62808b;

    /* renamed from: c */
    public final int f62809c;

    public JFloatArrayPointList(@NonNull float[] fArr, int i, int i2) {
        this.f62807a = fArr;
        this.f62808b = i;
        this.f62809c = i2;
    }

    @Override // com.onyx.harfbuzz.collections.PointList
    public void copyTo(@NonNull float[] fArr, int i) {
        System.arraycopy(this.f62807a, this.f62808b, fArr, i, this.f62809c * 2);
    }

    @Override // com.onyx.harfbuzz.collections.PointList
    public float getX(int i) {
        Preconditions.checkElementIndex(i, this.f62809c);
        return this.f62807a[((i + this.f62808b) * 2) + 0];
    }

    @Override // com.onyx.harfbuzz.collections.PointList
    public float getY(int i) {
        Preconditions.checkElementIndex(i, this.f62809c);
        return this.f62807a[((i + this.f62808b) * 2) + 1];
    }

    @Override // com.onyx.harfbuzz.collections.PointList
    public int size() {
        return this.f62809c;
    }

    @Override // com.onyx.harfbuzz.collections.PointList
    @NonNull
    public PointList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62809c);
        return new JFloatArrayPointList(this.f62807a, this.f62808b + i, i2 - i);
    }
}
