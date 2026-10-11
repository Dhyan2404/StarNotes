package org.apache.poi.ss.format;

/* loaded from: classes13.dex */
public class SimpleFraction {
    private final int denominator;
    private final int numerator;

    public SimpleFraction(int i, int i2) {
        this.numerator = i;
        this.denominator = i2;
    }

    public static SimpleFraction buildFractionExactDenominator(double d, int i) {
        return new SimpleFraction((int) Math.round(d * i), i);
    }

    public static SimpleFraction buildFractionMaxDenominator(double d, int i) {
        return buildFractionMaxDenominator(d, 0.0d, i, 100);
    }

    public int getDenominator() {
        return this.denominator;
    }

    public int getNumerator() {
        return this.numerator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0123, code lost:
    
        throw new java.lang.IllegalStateException("Overflow trying to convert " + r37 + " to fraction (" + r4 + r36 + r13 + r35);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.apache.poi.ss.format.SimpleFraction buildFractionMaxDenominator(double r37, double r39, int r41, int r42) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.ss.format.SimpleFraction.buildFractionMaxDenominator(double, double, int, int):org.apache.poi.ss.format.SimpleFraction");
    }
}
