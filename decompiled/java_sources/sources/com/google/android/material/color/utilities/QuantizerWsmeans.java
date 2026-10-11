package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class QuantizerWsmeans {

    /* renamed from: a */
    public static final int f30952a = 10;

    /* renamed from: b */
    public static final double f30953b = 3.0d;

    /* renamed from: com.google.android.material.color.utilities.QuantizerWsmeans$a */
    /* loaded from: classes6.dex */
    public static final class C5222a implements Comparable<C5222a> {

        /* renamed from: e */
        public int f30954e = -1;

        /* renamed from: f */
        public double f30955f = -1.0d;

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C5222a c5222a) {
            return Double.valueOf(this.f30955f).compareTo(Double.valueOf(c5222a.f30955f));
        }
    }

    public static Map<Integer, Integer> quantize(int[] iArr, int[] iArr2, int i) {
        int[] iArr3;
        int i2;
        int i3;
        Random random = new Random(272008L);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        double[][] dArr = new double[iArr.length];
        int[] iArr4 = new int[iArr.length];
        PointProviderLab pointProviderLab = new PointProviderLab();
        int i4 = 0;
        for (int i5 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i5));
            if (num == null) {
                dArr[i4] = pointProviderLab.fromInt(i5);
                iArr4[i4] = i5;
                i4++;
                linkedHashMap.put(Integer.valueOf(i5), 1);
            } else {
                linkedHashMap.put(Integer.valueOf(i5), Integer.valueOf(num.intValue() + 1));
            }
        }
        int[] iArr5 = new int[i4];
        for (int i6 = 0; i6 < i4; i6++) {
            iArr5[i6] = ((Integer) linkedHashMap.get(Integer.valueOf(iArr4[i6]))).intValue();
        }
        int min = Math.min(i, i4);
        if (iArr2.length != 0) {
            min = Math.min(min, iArr2.length);
        }
        double[][] dArr2 = new double[min];
        int i7 = 0;
        for (int i8 = 0; i8 < iArr2.length; i8++) {
            dArr2[i8] = pointProviderLab.fromInt(iArr2[i8]);
            i7++;
        }
        int i9 = min - i7;
        if (i9 > 0) {
            for (int i10 = 0; i10 < i9; i10++) {
            }
        }
        int[] iArr6 = new int[i4];
        for (int i11 = 0; i11 < i4; i11++) {
            iArr6[i11] = random.nextInt(min);
        }
        int[][] iArr7 = new int[min];
        for (int i12 = 0; i12 < min; i12++) {
            iArr7[i12] = new int[min];
        }
        C5222a[][] c5222aArr = new C5222a[min];
        for (int i13 = 0; i13 < min; i13++) {
            c5222aArr[i13] = new C5222a[min];
            for (int i14 = 0; i14 < min; i14++) {
                c5222aArr[i13][i14] = new C5222a();
            }
        }
        int[] iArr8 = new int[min];
        int i15 = 0;
        while (true) {
            if (i15 >= 10) {
                iArr3 = iArr8;
                i2 = 0;
                break;
            }
            int i16 = 0;
            while (i16 < min) {
                int i17 = i16 + 1;
                int i18 = i17;
                while (i18 < min) {
                    int[] iArr9 = iArr8;
                    double distance = pointProviderLab.distance(dArr2[i16], dArr2[i18]);
                    C5222a c5222a = c5222aArr[i18][i16];
                    c5222a.f30955f = distance;
                    c5222a.f30954e = i16;
                    C5222a c5222a2 = c5222aArr[i16][i18];
                    c5222a2.f30955f = distance;
                    c5222a2.f30954e = i18;
                    i18++;
                    iArr8 = iArr9;
                }
                int[] iArr10 = iArr8;
                Arrays.sort(c5222aArr[i16]);
                for (int i19 = 0; i19 < min; i19++) {
                    iArr7[i16][i19] = c5222aArr[i16][i19].f30954e;
                }
                iArr8 = iArr10;
                i16 = i17;
            }
            int[] iArr11 = iArr8;
            int i20 = 0;
            int i21 = 0;
            while (i20 < i4) {
                double[] dArr3 = dArr[i20];
                int i22 = iArr6[i20];
                double distance2 = pointProviderLab.distance(dArr3, dArr2[i22]);
                int[][] iArr12 = iArr7;
                int[] iArr13 = iArr5;
                double d = distance2;
                int i23 = -1;
                int i24 = 0;
                while (i24 < min) {
                    C5222a[][] c5222aArr2 = c5222aArr;
                    int i25 = i4;
                    if (c5222aArr[i22][i24].f30955f < 4.0d * distance2) {
                        double distance3 = pointProviderLab.distance(dArr3, dArr2[i24]);
                        if (distance3 < d) {
                            i23 = i24;
                            d = distance3;
                        }
                    }
                    i24++;
                    i4 = i25;
                    c5222aArr = c5222aArr2;
                }
                C5222a[][] c5222aArr3 = c5222aArr;
                int i26 = i4;
                if (i23 != -1 && Math.abs(Math.sqrt(d) - Math.sqrt(distance2)) > 3.0d) {
                    i21++;
                    iArr6[i20] = i23;
                }
                i20++;
                iArr7 = iArr12;
                iArr5 = iArr13;
                i4 = i26;
                c5222aArr = c5222aArr3;
            }
            int[] iArr14 = iArr5;
            int[][] iArr15 = iArr7;
            C5222a[][] c5222aArr4 = c5222aArr;
            int i27 = i4;
            if (i21 == 0 && i15 != 0) {
                i2 = 0;
                iArr3 = iArr11;
                break;
            }
            double[] dArr4 = new double[min];
            double[] dArr5 = new double[min];
            double[] dArr6 = new double[min];
            char c = 0;
            Arrays.fill(iArr11, 0);
            int i28 = 0;
            while (true) {
                i3 = i27;
                if (i28 >= i3) {
                    break;
                }
                int i29 = iArr6[i28];
                double[] dArr7 = dArr[i28];
                int i30 = iArr14[i28];
                iArr11[i29] = iArr11[i29] + i30;
                double d2 = i30;
                dArr4[i29] = dArr4[i29] + (dArr7[c] * d2);
                dArr5[i29] = dArr5[i29] + (dArr7[1] * d2);
                dArr6[i29] = dArr6[i29] + (dArr7[2] * d2);
                i28++;
                i15 = i15;
                i27 = i3;
                c = 0;
            }
            int i31 = i15;
            for (int i32 = 0; i32 < min; i32++) {
                int i33 = iArr11[i32];
                if (i33 == 0) {
                    dArr2[i32] = new double[]{0.0d, 0.0d, 0.0d};
                } else {
                    double d3 = i33;
                    double d4 = dArr4[i32] / d3;
                    double d5 = dArr5[i32] / d3;
                    double d6 = dArr6[i32] / d3;
                    double[] dArr8 = dArr2[i32];
                    dArr8[0] = d4;
                    dArr8[1] = d5;
                    dArr8[2] = d6;
                }
            }
            iArr7 = iArr15;
            i15 = i31 + 1;
            iArr8 = iArr11;
            i4 = i3;
            iArr5 = iArr14;
            c5222aArr = c5222aArr4;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (int i34 = i2; i34 < min; i34++) {
            int i35 = iArr3[i34];
            if (i35 != 0) {
                int i36 = pointProviderLab.toInt(dArr2[i34]);
                if (!linkedHashMap2.containsKey(Integer.valueOf(i36))) {
                    linkedHashMap2.put(Integer.valueOf(i36), Integer.valueOf(i35));
                }
            }
        }
        return linkedHashMap2;
    }
}
