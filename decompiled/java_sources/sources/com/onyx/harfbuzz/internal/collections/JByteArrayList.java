package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import com.onyx.harfbuzz.collections.ByteList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class JByteArrayList extends ByteList {

    /* renamed from: a */
    @NonNull
    public final byte[] f62798a;

    /* renamed from: b */
    public final int f62799b;

    /* renamed from: c */
    public final int f62800c;

    public JByteArrayList(@NonNull byte[] bArr, int i, int i2) {
        this.f62798a = bArr;
        this.f62799b = i;
        this.f62800c = i2;
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    public void copyTo(@NonNull byte[] bArr, int i) {
        System.arraycopy(this.f62798a, this.f62799b, bArr, i, this.f62800c);
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    public byte get(int i) {
        Preconditions.checkElementIndex(i, this.f62800c);
        return this.f62798a[i + this.f62799b];
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    public int size() {
        return this.f62800c;
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    @NonNull
    public ByteList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62800c);
        return new JByteArrayList(this.f62798a, this.f62799b + i, i2 - i);
    }
}
