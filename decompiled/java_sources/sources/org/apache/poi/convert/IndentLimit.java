package org.apache.poi.convert;

/* loaded from: classes12.dex */
public class IndentLimit {
    public static double getLimitEM(double d) {
        return Double.compare(d, 2.0d) <= 0 ? d : Double.compare(d, 10.0d) <= 0 ? ((d - 2.0d) * 0.3d) + 2.0d : Math.min(((d - 10.0d) * 0.2d) + 4.4d, 6.0d);
    }

    public static double getLimitPX(double d) {
        return Double.compare(d, 32.0d) <= 0 ? d : Double.compare(d, 160.0d) <= 0 ? ((d - 32.0d) * 0.3d) + 32.0d : Math.min(((d - 160.0d) * 0.2d) + 70.4d, 96.0d);
    }
}
