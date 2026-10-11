package org.apache.commons.math3.fitting;

import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.fitting.leastsquares.LevenbergMarquardtOptimizer;

/* loaded from: classes12.dex */
public abstract class AbstractCurveFitter {

    /* loaded from: classes12.dex */
    public static class TheoreticalValuesFunction {

        /* renamed from: a */
        public final ParametricUnivariateFunction f108106a;

        /* renamed from: b */
        public final double[] f108107b;

        /* renamed from: org.apache.commons.math3.fitting.AbstractCurveFitter$TheoreticalValuesFunction$a */
        /* loaded from: classes12.dex */
        public class C19081a implements MultivariateVectorFunction {
            public C19081a() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
            public double[] value(double[] dArr) {
                int length = TheoreticalValuesFunction.this.f108107b.length;
                double[] dArr2 = new double[length];
                for (int i = 0; i < length; i++) {
                    dArr2[i] = TheoreticalValuesFunction.this.f108106a.value(TheoreticalValuesFunction.this.f108107b[i], dArr);
                }
                return dArr2;
            }
        }

        /* renamed from: org.apache.commons.math3.fitting.AbstractCurveFitter$TheoreticalValuesFunction$b */
        /* loaded from: classes12.dex */
        public class C19082b implements MultivariateMatrixFunction {
            public C19082b() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
            public double[][] value(double[] dArr) {
                int length = TheoreticalValuesFunction.this.f108107b.length;
                double[][] dArr2 = new double[length];
                for (int i = 0; i < length; i++) {
                    dArr2[i] = TheoreticalValuesFunction.this.f108106a.gradient(TheoreticalValuesFunction.this.f108107b[i], dArr);
                }
                return dArr2;
            }
        }

        public TheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction, Collection<WeightedObservedPoint> collection) {
            this.f108106a = parametricUnivariateFunction;
            this.f108107b = new double[collection.size()];
            Iterator<WeightedObservedPoint> it2 = collection.iterator();
            int i = 0;
            while (it2.hasNext()) {
                this.f108107b[i] = it2.next().getX();
                i++;
            }
        }

        public MultivariateVectorFunction getModelFunction() {
            return new C19081a();
        }

        public MultivariateMatrixFunction getModelFunctionJacobian() {
            return new C19082b();
        }
    }

    public double[] fit(Collection<WeightedObservedPoint> collection) {
        return getOptimizer().optimize(getProblem(collection)).getPoint().toArray();
    }

    public LeastSquaresOptimizer getOptimizer() {
        return new LevenbergMarquardtOptimizer();
    }

    public abstract LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection);
}
