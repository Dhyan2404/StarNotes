package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class InterpolatingMicrosphere2D extends InterpolatingMicrosphere {

    /* renamed from: h */
    public static final int f107882h = 2;

    public InterpolatingMicrosphere2D(int i, double d, double d2, double d3) {
        super(2, i, d, d2, d3);
        for (int i2 = 0; i2 < i; i2++) {
            double d4 = (i2 * 6.283185307179586d) / i;
            add(new double[]{FastMath.cos(d4), FastMath.sin(d4)}, false);
        }
    }

    @Override // org.apache.commons.math3.analysis.interpolation.InterpolatingMicrosphere
    public InterpolatingMicrosphere2D copy() {
        return new InterpolatingMicrosphere2D(this);
    }

    public InterpolatingMicrosphere2D(InterpolatingMicrosphere2D interpolatingMicrosphere2D) {
        super(interpolatingMicrosphere2D);
    }
}
