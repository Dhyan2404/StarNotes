package com.onyx.harfbuzz.internal.collections;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.internal.Raw;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public class UInt8BufferIntList extends IntList {

    /* renamed from: d */
    public static final int f62813d = 255;

    /* renamed from: a */
    @Nullable
    public final Object f62814a;

    /* renamed from: b */
    public final long f62815b;

    /* renamed from: c */
    public final int f62816c;

    public UInt8BufferIntList(@Nullable Object obj, long j, int i) {
        this.f62814a = obj;
        this.f62815b = j;
        this.f62816c = i;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public void copyTo(@NonNull int[] iArr, int i) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkArrayBounds(iArr, i, this.f62816c);
        Raw.copyUInt8Buffer(this.f62815b, iArr, i, this.f62816c);
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public int get(int i) {
        Preconditions.checkElementIndex(i, this.f62816c);
        return Raw.getInt8Value(this.f62815b + (i * 1)) & 255;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    public int size() {
        return this.f62816c;
    }

    @Override // com.onyx.harfbuzz.collections.IntList
    @NonNull
    public IntList subList(int i, int i2) {
        Preconditions.checkIndexRange(i, i2, this.f62816c);
        return new UInt8BufferIntList(this.f62814a, this.f62815b + (i * 1), i2 - i);
    }
}
