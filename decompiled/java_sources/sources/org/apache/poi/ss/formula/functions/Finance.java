package org.apache.poi.ss.formula.functions;

/* loaded from: classes13.dex */
public class Finance {
    /* renamed from: fv */
    public static double m69521fv(double d, int i, double d2, double d3, int i2) {
        double d4 = d + 1.0d;
        double d5 = i;
        return -((d3 * Math.pow(d4, d5)) + (((d2 * ((i2 * d) + 1.0d)) * (Math.pow(d4, d5) - 1.0d)) / d));
    }

    public static double ipmt(double d, int i, int i2, double d2, double d3, int i3) {
        double m69521fv = m69521fv(d, i - 1, pmt(d, i2, d2, d3, i3), d2, i3) * d;
        return i3 == 1 ? m69521fv / (1.0d + d) : m69521fv;
    }

    public static double pmt(double d, int i, double d2, double d3, int i2) {
        double d4 = d + 1.0d;
        double d5 = i;
        return ((-d) * ((Math.pow(d4, d5) * d2) + d3)) / (((d * i2) + 1.0d) * (Math.pow(d4, d5) - 1.0d));
    }

    public static double ppmt(double d, int i, int i2, double d2, double d3, int i3) {
        return pmt(d, i2, d2, d3, i3) - ipmt(d, i, i2, d2, d3, i3);
    }

    /* renamed from: fv */
    public static double m69520fv(double d, int i, double d2, double d3) {
        return m69521fv(d, i, d2, d3, 0);
    }

    public static double ipmt(double d, int i, int i2, double d2, double d3) {
        return ipmt(d, i, i2, d2, d3, 0);
    }

    public static double pmt(double d, int i, double d2, double d3) {
        return pmt(d, i, d2, d3, 0);
    }

    public static double ppmt(double d, int i, int i2, double d2, double d3) {
        return pmt(d, i2, d2, d3) - ipmt(d, i, i2, d2, d3);
    }

    public static double ipmt(double d, int i, int i2, double d2) {
        return ipmt(d, i, i2, d2, 0.0d);
    }

    public static double pmt(double d, int i, double d2) {
        return pmt(d, i, d2, 0.0d);
    }

    public static double ppmt(double d, int i, int i2, double d2) {
        return pmt(d, i2, d2) - ipmt(d, i, i2, d2);
    }
}
