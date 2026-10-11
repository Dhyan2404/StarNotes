package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class z4l {
    /* renamed from: a */
    public static int m58626a(int i, int i2) {
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int i3 = i >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i2);
        int i4 = i2 >> numberOfTrailingZeros2;
        int min = FastMath.min(numberOfTrailingZeros, numberOfTrailingZeros2);
        while (i3 != i4) {
            int i5 = i3 - i4;
            i4 = FastMath.min(i3, i4);
            int abs = FastMath.abs(i5);
            i3 = abs >> Integer.numberOfTrailingZeros(abs);
        }
        return i3 << min;
    }

    /* renamed from: b */
    public static List<Integer> m58627b(int i) {
        ArrayList arrayList = new ArrayList();
        int m57260c = sum.m57260c(i, arrayList);
        if (1 == m57260c) {
            return arrayList;
        }
        if (sum.m57259b(m57260c)) {
            arrayList.add(Integer.valueOf(m57260c));
            return arrayList;
        }
        int m58628c = m58628c(m57260c);
        arrayList.add(Integer.valueOf(m58628c));
        arrayList.add(Integer.valueOf(m57260c / m58628c));
        return arrayList;
    }

    /* renamed from: c */
    public static int m58628c(int i) {
        int i2 = sum.f84593b;
        int i3 = 2;
        int i4 = 1;
        while (true) {
            int i5 = 0;
            int i6 = i3;
            for (int i7 = 0; i7 < i4; i7++) {
                long j = i6;
                i6 = (int) (((j * j) + i2) % i);
            }
            do {
                int min = FastMath.min(25, i4 - i5);
                int i8 = -3;
                int i9 = 1;
                while (true) {
                    if (i8 >= min) {
                        break;
                    }
                    long j2 = i6;
                    long j3 = i;
                    i6 = (int) (((j2 * j2) + i2) % j3);
                    long abs = FastMath.abs(i3 - i6);
                    if (0 == abs) {
                        i2 += sum.f84593b;
                        i5 = -25;
                        i4 = 1;
                        i6 = 2;
                        break;
                    }
                    i9 = (int) ((i9 * abs) % j3);
                    if (i9 == 0) {
                        return m58626a(FastMath.abs((int) abs), i);
                    }
                    i8++;
                }
                int m58626a = m58626a(FastMath.abs(i9), i);
                if (1 != m58626a) {
                    return m58626a;
                }
                i5 += 25;
            } while (i5 < i4);
            i4 *= 2;
            i3 = i6;
        }
    }
}
