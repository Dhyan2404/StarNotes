package org.apache.poi.util;

import java.lang.reflect.Array;

/* loaded from: classes13.dex */
public class BezierUtils {
    public static float[][] bezierCoords(float[] fArr, int i, int i2) {
        if (fArr.length % i != 0) {
            return null;
        }
        float[][] fArr2 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, fArr.length / i, i);
        for (int i3 = 0; i3 < fArr2.length; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                fArr2[i3][i4] = fArr[(i3 * i) + i4];
            }
        }
        return bezierCoords(fArr2, i2);
    }

    public static float[][] bezierCoords(float[][] fArr, int i) {
        float[][] fArr2 = fArr;
        int i2 = i;
        int i3 = 0;
        int length = fArr2[0].length;
        int length2 = fArr2.length;
        if (length2 < 2 || length < 2) {
            return null;
        }
        float[][] fArr3 = (float[][]) Array.newInstance((Class<?>) Float.TYPE, i2 + 1, length);
        int[] iArr = new int[length2];
        int i4 = 1;
        iArr[1] = 1;
        iArr[0] = 1;
        for (int i5 = 3; i5 <= length2; i5++) {
            int i6 = i5 - 1;
            int[] iArr2 = new int[i6];
            for (int i7 = 0; i7 < i6; i7++) {
                iArr2[i7] = iArr[i7];
            }
            iArr[i6] = 1;
            iArr[0] = 1;
            int i8 = 0;
            while (i8 < i5 - 2) {
                int i9 = i8 + 1;
                iArr[i9] = iArr2[i8] + iArr2[i9];
                i8 = i9;
            }
        }
        int i10 = 0;
        while (i10 <= i2) {
            float f = i10 / i2;
            int i11 = i3;
            while (i11 < length) {
                float f2 = 0.0f;
                int i12 = i3;
                while (i12 < length2) {
                    f2 = (float) (f2 + (Math.pow(1.0f - f, (length2 - i12) - i4) * fArr2[i12][i11] * Math.pow(f, i12) * iArr[i12]));
                    i12++;
                    length = length;
                    i10 = i10;
                    i4 = 1;
                    fArr2 = fArr;
                }
                fArr3[i10][i11] = f2;
                i11++;
                i3 = 0;
                i4 = 1;
                fArr2 = fArr;
            }
            i10++;
            i2 = i;
            i3 = 0;
            i4 = 1;
            fArr2 = fArr;
        }
        return fArr3;
    }
}
