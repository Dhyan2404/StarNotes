package org.apache.poi.util;

import java.util.Arrays;

@Internal
/* loaded from: classes13.dex */
public final class ArrayUtil {
    private ArrayUtil() {
    }

    public static void arrayMoveWithin(Object[] objArr, int i, int i2, int i3) {
        Object[] objArr2;
        if (i3 > 0 && i != i2) {
            if (i < 0 || i >= objArr.length) {
                throw new IllegalArgumentException("The moveFrom must be a valid array index");
            }
            if (i2 < 0 || i2 >= objArr.length) {
                throw new IllegalArgumentException("The moveTo must be a valid array index");
            }
            int i4 = i + i3;
            if (i4 > objArr.length) {
                throw new IllegalArgumentException("Asked to move more entries than the array has");
            }
            int i5 = i3 + i2;
            if (i5 > objArr.length) {
                throw new IllegalArgumentException("Asked to move to a position that doesn't have enough space");
            }
            Object[] copyOfRange = Arrays.copyOfRange(objArr, i, i4);
            if (i > i2) {
                objArr2 = Arrays.copyOfRange(objArr, i2, i);
            } else {
                Object[] copyOfRange2 = Arrays.copyOfRange(objArr, i4, i5);
                i5 = i;
                objArr2 = copyOfRange2;
            }
            System.arraycopy(copyOfRange, 0, objArr, i2, copyOfRange.length);
            System.arraycopy(objArr2, 0, objArr, i5, objArr2.length);
        }
    }
}
