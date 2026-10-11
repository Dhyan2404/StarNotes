package com.onyx.harfbuzz.collections;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.onyx.harfbuzz.internal.Description;
import com.onyx.harfbuzz.internal.collections.JFloatArrayPointList;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public abstract class PointList implements Primitive {
    @NonNull
    /* renamed from: of */
    public static PointList m52027of(@Size(multiple = 2) float... fArr) {
        Preconditions.checkNotNull(fArr);
        return new JFloatArrayPointList(fArr, 0, fArr.length / 2);
    }

    public abstract void copyTo(@NonNull float[] fArr, int i);

    public boolean equals(@Nullable Object obj) {
        PointList pointList;
        int size;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PointList) || size() != (size = (pointList = (PointList) obj).size())) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (getX(i) != pointList.getX(i) || getY(i) != pointList.getY(i)) {
                return false;
            }
        }
        return true;
    }

    public abstract float getX(int i);

    public abstract float getY(int i);

    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + Float.floatToIntBits(getX(i2))) * 31) + Float.floatToIntBits(getY(i2));
        }
        return i;
    }

    public abstract int size();

    @NonNull
    public abstract PointList subList(int i, int i2);

    @NonNull
    @Size(multiple = 2)
    public float[] toArray() {
        float[] fArr = new float[size() * 2];
        copyTo(fArr, 0);
        return fArr;
    }

    public String toString() {
        return Description.forPointList(this);
    }
}
