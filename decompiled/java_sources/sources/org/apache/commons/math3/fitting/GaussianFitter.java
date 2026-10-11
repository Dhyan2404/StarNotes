package org.apache.commons.math3.fitting;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class GaussianFitter extends CurveFitter<Gaussian.Parametric> {

    /* loaded from: classes12.dex */
    public static class ParameterGuesser {

        /* renamed from: a */
        public final double f108123a;

        /* renamed from: b */
        public final double f108124b;

        /* renamed from: c */
        public final double f108125c;

        /* renamed from: org.apache.commons.math3.fitting.GaussianFitter$ParameterGuesser$a */
        /* loaded from: classes12.dex */
        public class C19086a implements Comparator<WeightedObservedPoint> {
            public C19086a() {
            }

            @Override // java.util.Comparator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(WeightedObservedPoint weightedObservedPoint, WeightedObservedPoint weightedObservedPoint2) {
                if (weightedObservedPoint == null && weightedObservedPoint2 == null) {
                    return 0;
                }
                if (weightedObservedPoint == null) {
                    return -1;
                }
                if (weightedObservedPoint2 == null) {
                    return 1;
                }
                int compare = Double.compare(weightedObservedPoint.getX(), weightedObservedPoint2.getX());
                if (compare < 0) {
                    return -1;
                }
                if (compare > 0) {
                    return 1;
                }
                int compare2 = Double.compare(weightedObservedPoint.getY(), weightedObservedPoint2.getY());
                if (compare2 < 0) {
                    return -1;
                }
                if (compare2 > 0) {
                    return 1;
                }
                int compare3 = Double.compare(weightedObservedPoint.getWeight(), weightedObservedPoint2.getWeight());
                if (compare3 < 0) {
                    return -1;
                }
                return compare3 > 0 ? 1 : 0;
            }
        }

        public ParameterGuesser(WeightedObservedPoint[] weightedObservedPointArr) {
            if (weightedObservedPointArr == null) {
                throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
            }
            if (weightedObservedPointArr.length < 3) {
                throw new NumberIsTooSmallException(Integer.valueOf(weightedObservedPointArr.length), 3, true);
            }
            double[] m67570a = m67570a(m67575f(weightedObservedPointArr));
            this.f108123a = m67570a[0];
            this.f108124b = m67570a[1];
            this.f108125c = m67570a[2];
        }

        /* renamed from: a */
        public final double[] m67570a(WeightedObservedPoint[] weightedObservedPointArr) {
            double x;
            int m67571b = m67571b(weightedObservedPointArr);
            double y = weightedObservedPointArr[m67571b].getY();
            double x2 = weightedObservedPointArr[m67571b].getX();
            double d = y + ((x2 - y) / 2.0d);
            try {
                x = m67573d(weightedObservedPointArr, m67571b, 1, d) - m67573d(weightedObservedPointArr, m67571b, -1, d);
            } catch (OutOfRangeException unused) {
                x = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
            }
            return new double[]{y, x2, x / (FastMath.sqrt(FastMath.log(2.0d) * 2.0d) * 2.0d)};
        }

        /* renamed from: b */
        public final int m67571b(WeightedObservedPoint[] weightedObservedPointArr) {
            int i = 0;
            for (int i2 = 1; i2 < weightedObservedPointArr.length; i2++) {
                if (weightedObservedPointArr[i2].getY() > weightedObservedPointArr[i].getY()) {
                    i = i2;
                }
            }
            return i;
        }

        /* renamed from: c */
        public final WeightedObservedPoint[] m67572c(WeightedObservedPoint[] weightedObservedPointArr, int i, int i2, double d) throws OutOfRangeException {
            WeightedObservedPoint weightedObservedPoint;
            WeightedObservedPoint weightedObservedPoint2;
            if (i2 == 0) {
                throw new ZeroException();
            }
            do {
                int i3 = i + i2;
                if (i2 < 0) {
                    if (i3 < 0) {
                        throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(Double.NEGATIVE_INFINITY), Double.valueOf(Double.POSITIVE_INFINITY));
                    }
                    weightedObservedPoint = weightedObservedPointArr[i];
                    i += i2;
                    weightedObservedPoint2 = weightedObservedPointArr[i];
                } else {
                    if (i3 >= weightedObservedPointArr.length) {
                        throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(Double.NEGATIVE_INFINITY), Double.valueOf(Double.POSITIVE_INFINITY));
                    }
                    weightedObservedPoint = weightedObservedPointArr[i];
                    i += i2;
                    weightedObservedPoint2 = weightedObservedPointArr[i];
                }
            } while (!m67574e(d, weightedObservedPoint.getY(), weightedObservedPoint2.getY()));
            return i2 < 0 ? new WeightedObservedPoint[]{weightedObservedPoint2, weightedObservedPoint} : new WeightedObservedPoint[]{weightedObservedPoint, weightedObservedPoint2};
        }

        /* renamed from: d */
        public final double m67573d(WeightedObservedPoint[] weightedObservedPointArr, int i, int i2, double d) throws OutOfRangeException {
            if (i2 == 0) {
                throw new ZeroException();
            }
            WeightedObservedPoint[] m67572c = m67572c(weightedObservedPointArr, i, i2, d);
            WeightedObservedPoint weightedObservedPoint = m67572c[0];
            WeightedObservedPoint weightedObservedPoint2 = m67572c[1];
            return weightedObservedPoint.getY() == d ? weightedObservedPoint.getX() : weightedObservedPoint2.getY() == d ? weightedObservedPoint2.getX() : weightedObservedPoint.getX() + (((d - weightedObservedPoint.getY()) * (weightedObservedPoint2.getX() - weightedObservedPoint.getX())) / (weightedObservedPoint2.getY() - weightedObservedPoint.getY()));
        }

        /* renamed from: e */
        public final boolean m67574e(double d, double d2, double d3) {
            return (d >= d2 && d <= d3) || (d >= d3 && d <= d2);
        }

        /* renamed from: f */
        public final WeightedObservedPoint[] m67575f(WeightedObservedPoint[] weightedObservedPointArr) {
            WeightedObservedPoint[] weightedObservedPointArr2 = (WeightedObservedPoint[]) weightedObservedPointArr.clone();
            Arrays.sort(weightedObservedPointArr2, new C19086a());
            return weightedObservedPointArr2;
        }

        public double[] guess() {
            return new double[]{this.f108123a, this.f108124b, this.f108125c};
        }
    }

    /* renamed from: org.apache.commons.math3.fitting.GaussianFitter$a */
    /* loaded from: classes12.dex */
    public class C19087a extends Gaussian.Parametric {
        public C19087a() {
        }

        @Override // org.apache.commons.math3.analysis.function.Gaussian.Parametric, org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d, double... dArr) {
            double[] dArr2 = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY};
            try {
                return super.gradient(d, dArr);
            } catch (NotStrictlyPositiveException unused) {
                return dArr2;
            }
        }

        @Override // org.apache.commons.math3.analysis.function.Gaussian.Parametric, org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d, double... dArr) {
            try {
                return super.value(d, dArr);
            } catch (NotStrictlyPositiveException unused) {
                return Double.POSITIVE_INFINITY;
            }
        }
    }

    public GaussianFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        super(multivariateVectorOptimizer);
    }

    public double[] fit(double[] dArr) {
        return fit(new C19087a(), dArr);
    }

    public double[] fit() {
        return fit(new ParameterGuesser(getObservations()).guess());
    }
}
