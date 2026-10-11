package org.apache.commons.math3.primes;

import com.sunia.HTREnginev2.sum;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class Primes {
    public static boolean isPrime(int i) {
        if (i < 2) {
            return false;
        }
        int[] iArr = sum.f84592a;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i % i3 == 0) {
                return i == i3;
            }
        }
        return sum.m57259b(i);
    }

    public static int nextPrime(int i) {
        int i2;
        int i3;
        int i4;
        if (i < 0) {
            throw new MathIllegalArgumentException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(i), 0);
        }
        if (i == 2 || (i2 = i | 1) == 1) {
            return 2;
        }
        if (isPrime(i2)) {
            return i2;
        }
        int i5 = i2 % 3;
        if (i5 == 0) {
            i3 = i2 + 2;
        } else {
            if (1 != i5) {
                i3 = i2 + 4;
            }
            i3 = i4 + 4;
        }
        while (!isPrime(i3)) {
            i4 = i3 + 2;
            if (isPrime(i4)) {
                return i4;
            }
            i3 = i4 + 4;
        }
        return i3;
    }

    public static List<Integer> primeFactors(int i) {
        if (i >= 2) {
            return sum.m57261d(i);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(i), 2);
    }
}
