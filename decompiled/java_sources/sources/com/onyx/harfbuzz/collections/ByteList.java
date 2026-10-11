package com.onyx.harfbuzz.collections;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.internal.Description;
import com.onyx.harfbuzz.internal.collections.JByteArrayList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public abstract class ByteList implements Primitive {
    @NonNull
    /* renamed from: of */
    public static ByteList m52024of(byte... bArr) {
        Preconditions.checkNotNull(bArr);
        return new JByteArrayList(bArr, 0, bArr.length);
    }

    public abstract void copyTo(@NonNull byte[] bArr, int i);

    public boolean equals(@Nullable Object obj) {
        ByteList byteList;
        int size;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteList) || size() != (size = (byteList = (ByteList) obj).size())) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (get(i) != byteList.get(i)) {
                return false;
            }
        }
        return true;
    }

    public abstract byte get(int i);

    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2);
        }
        return i;
    }

    public abstract int size();

    @NonNull
    public abstract ByteList subList(int i, int i2);

    @NonNull
    public byte[] toArray() {
        byte[] bArr = new byte[size()];
        copyTo(bArr, 0);
        return bArr;
    }

    public String toString() {
        return Description.forByteList(this);
    }
}
