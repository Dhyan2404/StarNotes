package com.onyx.harfbuzz.collections;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.internal.Description;
import com.onyx.harfbuzz.internal.collections.JFloatArrayList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public abstract class FloatList implements Primitive {
    @NonNull
    /* renamed from: of */
    public static FloatList m52025of(float... fArr) {
        Preconditions.checkNotNull(fArr);
        return new JFloatArrayList(fArr, 0, fArr.length);
    }

    public abstract void copyTo(@NonNull float[] fArr, int i);

    public boolean equals(@Nullable Object obj) {
        FloatList floatList;
        int size;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FloatList) || size() != (size = (floatList = (FloatList) obj).size())) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (Float.floatToIntBits(get(i)) != Float.floatToIntBits(floatList.get(i))) {
                return false;
            }
        }
        return true;
    }

    public abstract float get(int i);

    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + Float.floatToIntBits(get(i2));
        }
        return i;
    }

    public abstract int size();

    @NonNull
    public abstract FloatList subList(int i, int i2);

    @NonNull
    public float[] toArray() {
        float[] fArr = new float[size()];
        copyTo(fArr, 0);
        return fArr;
    }

    public String toString() {
        return Description.forFloatList(this);
    }
}
