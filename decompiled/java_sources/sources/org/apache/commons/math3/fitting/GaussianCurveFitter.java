package org.apache.commons.math3.fitting;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.AbstractCurveFitter;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresBuilder;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class GaussianCurveFitter extends AbstractCurveFitter {

    /* renamed from: c */
    public static final Gaussian.Parametric f108116c = new C19085a();

    /* renamed from: a */
    public final double[] f108117a;

    /* renamed from: b */
    public final int f108118b;

    /* loaded from: classes12.dex */
    public static class ParameterGuesser {

        /* renamed from: a */
        public final double f108119a;

        /* renamed from: b */
        public final double f108120b;

        /* renamed from: c */
        public final double f108121c;

        /* renamed from: org.apache.commons.math3.fitting.GaussianCurveFitter$ParameterGuesser$a */
        /* loaded from: classes12.dex */
        public class C19084a implements Comparator<WeightedObservedPoint> {
            public C19084a() {
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

        public ParameterGuesser(Collection<WeightedObservedPoint> collection) {
            if (collection == null) {
                throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
            }
            if (collection.size() < 3) {
                throw new NumberIsTooSmallException(Integer.valueOf(collection.size()), 3, true);
            }
            double[] m67563a = m67563a((WeightedObservedPoint[]) m67568f(collection).toArray(new WeightedObservedPoint[0]));
            this.f108119a = m67563a[0];
            this.f108120b = m67563a[1];
            this.f108121c = m67563a[2];
        }

        /* renamed from: a */
        public final double[] m67563a(WeightedObservedPoint[] weightedObservedPointArr) {
            double x;
            int m67564b = m67564b(weightedObservedPointArr);
            double y = weightedObservedPointArr[m67564b].getY();
            double x2 = weightedObservedPointArr[m67564b].getX();
            double d = y + ((x2 - y) / 2.0d);
            try {
                x = m67566d(weightedObservedPointArr, m67564b, 1, d) - m67566d(weightedObservedPointArr, m67564b, -1, d);
            } catch (OutOfRangeException unused) {
                x = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
            }
            return new double[]{y, x2, x / (FastMath.sqrt(FastMath.log(2.0d) * 2.0d) * 2.0d)};
        }

        /* renamed from: b */
        public final int m67564b(WeightedObservedPoint[] weightedObservedPointArr) {
            int i = 0;
            for (int i2 = 1; i2 < weightedObservedPointArr.length; i2++) {
                if (weightedObservedPointArr[i2].getY() > weightedObservedPointArr[i].getY()) {
                    i = i2;
                }
            }
            return i;
        }

        /* renamed from: c */
        public final WeightedObservedPoint[] m67565c(WeightedObservedPoint[] weightedObservedPointArr, int i, int i2, double d) throws OutOfRangeException {
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
            } while (!m67567e(d, weightedObservedPoint.getY(), weightedObservedPoint2.getY()));
            return i2 < 0 ? new WeightedObservedPoint[]{weightedObservedPoint2, weightedObservedPoint} : new WeightedObservedPoint[]{weightedObservedPoint, weightedObservedPoint2};
        }

        /* renamed from: d */
        public final double m67566d(WeightedObservedPoint[] weightedObservedPointArr, int i, int i2, double d) throws OutOfRangeException {
            if (i2 == 0) {
                throw new ZeroException();
            }
            WeightedObservedPoint[] m67565c = m67565c(weightedObservedPointArr, i, i2, d);
            WeightedObservedPoint weightedObservedPoint = m67565c[0];
            WeightedObservedPoint weightedObservedPoint2 = m67565c[1];
            return weightedObservedPoint.getY() == d ? weightedObservedPoint.getX() : weightedObservedPoint2.getY() == d ? weightedObservedPoint2.getX() : weightedObservedPoint.getX() + (((d - weightedObservedPoint.getY()) * (weightedObservedPoint2.getX() - weightedObservedPoint.getX())) / (weightedObservedPoint2.getY() - weightedObservedPoint.getY()));
        }

        /* renamed from: e */
        public final boolean m67567e(double d, double d2, double d3) {
            return (d >= d2 && d <= d3) || (d >= d3 && d <= d2);
        }

        /* renamed from: f */
        public final List<WeightedObservedPoint> m67568f(Collection<WeightedObservedPoint> collection) {
            ArrayList arrayList = new ArrayList(collection);
            Collections.sort(arrayList, new C19084a());
            return arrayList;
        }

        public double[] guess() {
            return new double[]{this.f108119a, this.f108120b, this.f108121c};
        }
    }

    /* renamed from: org.apache.commons.math3.fitting.GaussianCurveFitter$a */
    /* loaded from: classes12.dex */
    public static class C19085a extends Gaussian.Parametric {
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

    public GaussianCurveFitter(double[] dArr, int i) {
        this.f108117a = dArr;
        this.f108118b = i;
    }

    public static GaussianCurveFitter create() {
        return new GaussianCurveFitter(null, Integer.MAX_VALUE);
    }

    @Override // org.apache.commons.math3.fitting.AbstractCurveFitter
    public LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection) {
        int size = collection.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i = 0;
        for (WeightedObservedPoint weightedObservedPoint : collection) {
            dArr[i] = weightedObservedPoint.getY();
            dArr2[i] = weightedObservedPoint.getWeight();
            i++;
        }
        AbstractCurveFitter.TheoreticalValuesFunction theoreticalValuesFunction = new AbstractCurveFitter.TheoreticalValuesFunction(f108116c, collection);
        double[] dArr3 = this.f108117a;
        if (dArr3 == null) {
            dArr3 = new ParameterGuesser(collection).guess();
        }
        return new LeastSquaresBuilder().maxEvaluations(Integer.MAX_VALUE).maxIterations(this.f108118b).start(dArr3).target(dArr).weight(new DiagonalMatrix(dArr2)).model(theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian()).build();
    }

    public GaussianCurveFitter withMaxIterations(int i) {
        return new GaussianCurveFitter(this.f108117a, i);
    }

    public GaussianCurveFitter withStartPoint(double[] dArr) {
        return new GaussianCurveFitter((double[]) dArr.clone(), this.f108118b);
    }
}
