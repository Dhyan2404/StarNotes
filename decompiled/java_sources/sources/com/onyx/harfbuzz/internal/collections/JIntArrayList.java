package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class JIntArrayList extends IntList {

    /* renamed from: a */
    @NonNull
    public final int[] f62810a;

    /* renamed from: b */
    public final int f62811b;

    /* renamed from: c */
    public final int f62812c;

    public JIntArrayList(@NonNull int[] iArr, int i, int i2) {
        this.f62810a = iArr;
        this.f62811b = i;
        this.f62812c = i2;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public void copyTo(@NonNull int[] iArr, int i) {
        System.arraycopy(this.f62810a, this.f62811b, iArr, i, this.f62812c);
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public int get(int i) {
        Preconditions.checkElementIndex(i, this.f62812c);
        return this.f62810a[i + this.f62811b];
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public int size() {
        return this.f62812c;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    @NonNull
    public IntList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62812c);
        return new JIntArrayList(this.f62810a, this.f62811b + i, i2 - i);
    }
}
