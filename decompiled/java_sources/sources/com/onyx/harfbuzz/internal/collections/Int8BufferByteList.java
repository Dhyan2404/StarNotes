package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.collections.ByteList;
import com.onyx.harfbuzz.internal.Raw;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class Int8BufferByteList extends ByteList {

    /* renamed from: a */
    @Nullable
    public final Object f62792a;

    /* renamed from: b */
    public final long f62793b;

    /* renamed from: c */
    public final int f62794c;

    public Int8BufferByteList(@Nullable Object obj, long j, int i) {
        this.f62792a = obj;
        this.f62793b = j;
        this.f62794c = i;
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    public void copyTo(@NonNull byte[] bArr, int i) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArrayBounds(bArr, i, this.f62794c);
        Raw.copyInt8Buffer(this.f62793b, bArr, i, this.f62794c);
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    public byte get(int i) {
        Preconditions.checkElementIndex(i, this.f62794c);
        return Raw.getInt8Value(this.f62793b + (i * 1));
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    public int size() {
        return this.f62794c;
    }

    @Override // com.onyx.harfbuzz.collections.ByteList
    @NonNull
    public ByteList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62794c);
        return new Int8BufferByteList(this.f62792a, this.f62793b + (i * 1), i2 - i);
    }
}
