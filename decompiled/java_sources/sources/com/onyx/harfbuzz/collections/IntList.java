package com.onyx.harfbuzz.collections;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.internal.Description;
import com.onyx.harfbuzz.internal.collections.JIntArrayList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public abstract class IntList implements Primitive {
    @NonNull
    /* renamed from: of */
    public static IntList m52026of(int... iArr) {
        Preconditions.checkNotNull(iArr);
        return new JIntArrayList(iArr, 0, iArr.length);
    }

    public abstract void copyTo(@NonNull int[] iArr, int i);

    public boolean equals(@Nullable Object obj) {
        IntList intList;
        int size;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntList) || size() != (size = (intList = (IntList) obj).size())) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (get(i) != intList.get(i)) {
                return false;
            }
        }
        return true;
    }

    public abstract int get(int i);

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
    public abstract IntList subList(int i, int i2);

    @NonNull
    public int[] toArray() {
        int[] iArr = new int[size()];
        copyTo(iArr, 0);
        return iArr;
    }

    public String toString() {
        return Description.forIntList(this);
    }
}
