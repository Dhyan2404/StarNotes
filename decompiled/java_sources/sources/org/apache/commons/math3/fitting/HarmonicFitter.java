package org.apache.commons.math3.fitting;

import org.apache.commons.math3.analysis.function.HarmonicOscillator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class HarmonicFitter extends CurveFitter<HarmonicOscillator.Parametric> {

    /* loaded from: classes12.dex */
    public static class ParameterGuesser {

        /* renamed from: a */
        public final double f108134a;

        /* renamed from: b */
        public final double f108135b;

        /* renamed from: c */
        public final double f108136c;

        public ParameterGuesser(WeightedObservedPoint[] weightedObservedPointArr) {
            if (weightedObservedPointArr.length < 4) {
                throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(weightedObservedPointArr.length), 4, true);
            }
            WeightedObservedPoint[] m67582c = m67582c(weightedObservedPointArr);
            double[] m67580a = m67580a(m67582c);
            this.f108134a = m67580a[0];
            this.f108135b = m67580a[1];
            this.f108136c = m67581b(m67582c);
        }

        /* renamed from: a */
        public final double[] m67580a(WeightedObservedPoint[] weightedObservedPointArr) {
            double[] dArr = new double[2];
            double x = weightedObservedPointArr[0].getX();
            double y = weightedObservedPointArr[0].getY();
            double d = x;
            double d2 = 0.0d;
            double d3 = 0.0d;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = 0.0d;
            double d7 = 0.0d;
            double d8 = 0.0d;
            int i = 1;
            while (i < weightedObservedPointArr.length) {
                double x2 = weightedObservedPointArr[i].getX();
                double y2 = weightedObservedPointArr[i].getY();
                double d9 = x2 - d;
                double d10 = y2 - y;
                double d11 = ((((y * y) + (y * y2)) + (y2 * y2)) * d9) / 3.0d;
                double d12 = x2 - x;
                d7 += d11;
                d8 += (d10 * d10) / d9;
                d6 += d12 * d12;
                d2 += d7 * d7;
                d4 += d12 * d7;
                d3 += d12 * d8;
                d5 += d7 * d8;
                i++;
                d = x2;
                y = y2;
            }
            double d13 = (d2 * d3) - (d4 * d5);
            double d14 = (d3 * d4) - (d5 * d6);
            double d15 = (d6 * d2) - (d4 * d4);
            double d16 = d13 / d14;
            if (d16 >= 0.0d) {
                double d17 = d14 / d15;
                if (d17 >= 0.0d) {
                    if (d14 == 0.0d) {
                        throw new MathIllegalStateException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
                    }
                    dArr[0] = FastMath.sqrt(d16);
                    dArr[1] = FastMath.sqrt(d17);
                    return dArr;
                }
            }
            double x3 = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
            if (x3 == 0.0d) {
                throw new ZeroException();
            }
            dArr[1] = 6.283185307179586d / x3;
            double d18 = Double.POSITIVE_INFINITY;
            double d19 = Double.NEGATIVE_INFINITY;
            for (int i2 = 1; i2 < weightedObservedPointArr.length; i2++) {
                double y3 = weightedObservedPointArr[i2].getY();
                if (y3 < d18) {
                    d18 = y3;
                }
                if (y3 > d19) {
                    d19 = y3;
                }
            }
            dArr[0] = (d19 - d18) * 0.5d;
            return dArr;
        }

        /* renamed from: b */
        public final double m67581b(WeightedObservedPoint[] weightedObservedPointArr) {
            double x = weightedObservedPointArr[0].getX();
            double y = weightedObservedPointArr[0].getY();
            double d = 0.0d;
            int i = 1;
            double d2 = 0.0d;
            while (i < weightedObservedPointArr.length) {
                double x2 = weightedObservedPointArr[i].getX();
                double y2 = weightedObservedPointArr[i].getY();
                double d3 = (y2 - y) / (x2 - x);
                double d4 = this.f108135b * x2;
                double cos = FastMath.cos(d4);
                double sin = FastMath.sin(d4);
                double d5 = this.f108135b;
                d2 += ((d5 * y2) * cos) - (d3 * sin);
                d += (d5 * y2 * sin) + (d3 * cos);
                i++;
                y = y2;
                x = x2;
            }
            return FastMath.atan2(-d, d2);
        }

        /* renamed from: c */
        public final WeightedObservedPoint[] m67582c(WeightedObservedPoint[] weightedObservedPointArr) {
            WeightedObservedPoint[] weightedObservedPointArr2 = (WeightedObservedPoint[]) weightedObservedPointArr.clone();
            WeightedObservedPoint weightedObservedPoint = weightedObservedPointArr2[0];
            for (int i = 1; i < weightedObservedPointArr2.length; i++) {
                WeightedObservedPoint weightedObservedPoint2 = weightedObservedPointArr2[i];
                if (weightedObservedPoint2.getX() < weightedObservedPoint.getX()) {
                    int i2 = i - 1;
                    WeightedObservedPoint weightedObservedPoint3 = weightedObservedPointArr2[i2];
                    while (i2 >= 0 && weightedObservedPoint2.getX() < weightedObservedPoint3.getX()) {
                        weightedObservedPointArr2[i2 + 1] = weightedObservedPoint3;
                        int i3 = i2 - 1;
                        if (i2 != 0) {
                            weightedObservedPoint3 = weightedObservedPointArr2[i3];
                        }
                        i2 = i3;
                    }
                    weightedObservedPointArr2[i2 + 1] = weightedObservedPoint2;
                    weightedObservedPoint = weightedObservedPointArr2[i];
                } else {
                    weightedObservedPoint = weightedObservedPoint2;
                }
            }
            return weightedObservedPointArr2;
        }

        public double[] guess() {
            return new double[]{this.f108134a, this.f108135b, this.f108136c};
        }
    }

    public HarmonicFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        super(multivariateVectorOptimizer);
    }

    public double[] fit(double[] dArr) {
        return fit(new HarmonicOscillator.Parametric(), dArr);
    }

    public double[] fit() {
        return fit(new ParameterGuesser(getObservations()).guess());
    }
}
