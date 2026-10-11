package org.apache.commons.math3.ml.distance;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class CanberraDistance implements DistanceMeasure {
    private static final long serialVersionUID = -6972277381587032228L;

    @Override // org.apache.commons.math3.ml.distance.DistanceMeasure
    public double compute(double[] dArr, double[] dArr2) throws DimensionMismatchException {
        MathArrays.checkEqualLength(dArr, dArr2);
        double d = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            double abs = FastMath.abs(dArr[i] - dArr2[i]);
            double abs2 = FastMath.abs(dArr[i]) + FastMath.abs(dArr2[i]);
            d += (abs == 0.0d && abs2 == 0.0d) ? 0.0d : abs / abs2;
        }
        return d;
    }
}
