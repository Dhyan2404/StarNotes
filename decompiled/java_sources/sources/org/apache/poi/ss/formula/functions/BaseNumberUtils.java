package org.apache.poi.ss.formula.functions;

/* loaded from: classes13.dex */
public class BaseNumberUtils {
    public static double convertToDecimal(String str, int i, int i2) throws IllegalArgumentException {
        long j;
        int i3;
        if (str == null || str.length() == 0) {
            return 0.0d;
        }
        long length = str.length();
        long j2 = i2;
        if (length > j2) {
            throw new IllegalArgumentException();
        }
        long j3 = 0;
        double d = 0.0d;
        boolean z = true;
        for (char c : str.toCharArray()) {
            if ('0' > c || c > '9') {
                if ('A' <= c && c <= 'Z') {
                    i3 = c - 'A';
                } else if ('a' > c || c > 'z') {
                    j = i;
                } else {
                    i3 = c - 'a';
                }
                j = i3 + 10;
            } else {
                j = c - 48;
            }
            if (j >= i) {
                throw new IllegalArgumentException("character not allowed");
            }
            if (z) {
                j3 = j;
                z = false;
            }
            d = (d * i) + j;
        }
        return !z && (length > j2 ? 1 : (length == j2 ? 0 : -1)) == 0 && (j3 > ((long) (i / 2)) ? 1 : (j3 == ((long) (i / 2)) ? 0 : -1)) >= 0 ? getTwoComplement(i, i2, d) * (-1.0d) : d;
    }

    private static double getTwoComplement(double d, double d2, double d3) {
        return Math.pow(d, d2) - d3;
    }
}
