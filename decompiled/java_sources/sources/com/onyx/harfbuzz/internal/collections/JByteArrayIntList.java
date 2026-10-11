package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class JByteArrayIntList extends IntList {

    /* renamed from: a */
    @NonNull
    public final byte[] f62795a;

    /* renamed from: b */
    public final int f62796b;

    /* renamed from: c */
    public final int f62797c;

    public JByteArrayIntList(@NonNull byte[] bArr, int i, int i2) {
        this.f62795a = bArr;
        this.f62796b = i;
        this.f62797c = i2;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public void copyTo(@NonNull int[] iArr, int i) {
        Preconditions.checkNotNull(iArr);
        for (int i2 = 0; i2 < this.f62797c; i2++) {
            iArr[i + i2] = this.f62795a[this.f62796b + i2];
        }
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public int get(int i) {
        Preconditions.checkElementIndex(i, this.f62797c);
        return this.f62795a[i + this.f62796b];
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public int size() {
        return this.f62797c;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    @NonNull
    public IntList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62797c);
        return new JByteArrayIntList(this.f62795a, this.f62796b + i, i2 - i);
    }
}
