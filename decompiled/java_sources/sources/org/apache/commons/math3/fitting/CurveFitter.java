package org.apache.commons.math3.fitting;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.optim.InitialGuess;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.nonlinear.vector.ModelFunction;
import org.apache.commons.math3.optim.nonlinear.vector.ModelFunctionJacobian;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.optim.nonlinear.vector.Target;
import org.apache.commons.math3.optim.nonlinear.vector.Weight;

@Deprecated
/* loaded from: classes12.dex */
public class CurveFitter<T extends ParametricUnivariateFunction> {

    /* renamed from: a */
    public final MultivariateVectorOptimizer f108110a;

    /* renamed from: b */
    public final List<WeightedObservedPoint> f108111b = new ArrayList();

    /* renamed from: org.apache.commons.math3.fitting.CurveFitter$a */
    /* loaded from: classes12.dex */
    public class C19083a {

        /* renamed from: a */
        public final ParametricUnivariateFunction f108112a;

        /* renamed from: org.apache.commons.math3.fitting.CurveFitter$a$a */
        /* loaded from: classes12.dex */
        public class a implements MultivariateVectorFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
            public double[] value(double[] dArr) {
                double[] dArr2 = new double[CurveFitter.this.f108111b.size()];
                Iterator it2 = CurveFitter.this.f108111b.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    dArr2[i] = C19083a.this.f108112a.value(((WeightedObservedPoint) it2.next()).getX(), dArr);
                    i++;
                }
                return dArr2;
            }
        }

        /* renamed from: org.apache.commons.math3.fitting.CurveFitter$a$b */
        /* loaded from: classes12.dex */
        public class b implements MultivariateMatrixFunction {
            public b() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
            public double[][] value(double[] dArr) {
                double[][] dArr2 = new double[CurveFitter.this.f108111b.size()];
                Iterator it2 = CurveFitter.this.f108111b.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    dArr2[i] = C19083a.this.f108112a.gradient(((WeightedObservedPoint) it2.next()).getX(), dArr);
                    i++;
                }
                return dArr2;
            }
        }

        public C19083a(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f108112a = parametricUnivariateFunction;
        }

        /* renamed from: b */
        public ModelFunction m67561b() {
            return new ModelFunction(new a());
        }

        /* renamed from: c */
        public ModelFunctionJacobian m67562c() {
            return new ModelFunctionJacobian(new b());
        }
    }

    public CurveFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        this.f108110a = multivariateVectorOptimizer;
    }

    public void addObservedPoint(double d, double d2) {
        addObservedPoint(1.0d, d, d2);
    }

    public void clearObservations() {
        this.f108111b.clear();
    }

    public double[] fit(T t, double[] dArr) {
        return fit(Integer.MAX_VALUE, t, dArr);
    }

    public WeightedObservedPoint[] getObservations() {
        List<WeightedObservedPoint> list = this.f108111b;
        return (WeightedObservedPoint[]) list.toArray(new WeightedObservedPoint[list.size()]);
    }

    public void addObservedPoint(double d, double d2, double d3) {
        this.f108111b.add(new WeightedObservedPoint(d, d2, d3));
    }

    public double[] fit(int i, T t, double[] dArr) {
        double[] dArr2 = new double[this.f108111b.size()];
        double[] dArr3 = new double[this.f108111b.size()];
        int i2 = 0;
        for (WeightedObservedPoint weightedObservedPoint : this.f108111b) {
            dArr2[i2] = weightedObservedPoint.getY();
            dArr3[i2] = weightedObservedPoint.getWeight();
            i2++;
        }
        C19083a c19083a = new C19083a(t);
        return this.f108110a.optimize(new MaxEval(i), c19083a.m67561b(), c19083a.m67562c(), new Target(dArr2), new Weight(dArr3), new InitialGuess(dArr)).getPointRef();
    }

    public void addObservedPoint(WeightedObservedPoint weightedObservedPoint) {
        this.f108111b.add(weightedObservedPoint);
    }
}
