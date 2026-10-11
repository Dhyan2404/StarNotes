package org.apache.commons.math3.optimization.fitting;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;
import org.apache.commons.math3.optimization.MultivariateDifferentiableVectorOptimizer;
import org.apache.commons.math3.optimization.PointVectorValuePair;

@Deprecated
/* loaded from: classes12.dex */
public class CurveFitter<T extends ParametricUnivariateFunction> {

    /* renamed from: a */
    @Deprecated
    public final DifferentiableMultivariateVectorOptimizer f109479a;

    /* renamed from: b */
    public final MultivariateDifferentiableVectorOptimizer f109480b;

    /* renamed from: c */
    public final List<WeightedObservedPoint> f109481c;

    @Deprecated
    /* renamed from: org.apache.commons.math3.optimization.fitting.CurveFitter$a */
    /* loaded from: classes12.dex */
    public class C19247a implements DifferentiableMultivariateVectorFunction {

        /* renamed from: a */
        public final ParametricUnivariateFunction f109482a;

        /* renamed from: org.apache.commons.math3.optimization.fitting.CurveFitter$a$a */
        /* loaded from: classes12.dex */
        public class a implements MultivariateMatrixFunction {
            public a() {
            }

            @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
            public double[][] value(double[] dArr) {
                double[][] dArr2 = new double[CurveFitter.this.f109481c.size()];
                Iterator it2 = CurveFitter.this.f109481c.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    dArr2[i] = C19247a.this.f109482a.gradient(((WeightedObservedPoint) it2.next()).getX(), dArr);
                    i++;
                }
                return dArr2;
            }
        }

        public C19247a(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f109482a = parametricUnivariateFunction;
        }

        @Override // org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction
        public MultivariateMatrixFunction jacobian() {
            return new a();
        }

        @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
        public double[] value(double[] dArr) {
            double[] dArr2 = new double[CurveFitter.this.f109481c.size()];
            Iterator it2 = CurveFitter.this.f109481c.iterator();
            int i = 0;
            while (it2.hasNext()) {
                dArr2[i] = this.f109482a.value(((WeightedObservedPoint) it2.next()).getX(), dArr);
                i++;
            }
            return dArr2;
        }
    }

    @Deprecated
    public CurveFitter(DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        this.f109479a = differentiableMultivariateVectorOptimizer;
        this.f109480b = null;
        this.f109481c = new ArrayList();
    }

    public void addObservedPoint(double d, double d2) {
        addObservedPoint(1.0d, d, d2);
    }

    public void clearObservations() {
        this.f109481c.clear();
    }

    public double[] fit(T t, double[] dArr) {
        return fit(Integer.MAX_VALUE, t, dArr);
    }

    public WeightedObservedPoint[] getObservations() {
        List<WeightedObservedPoint> list = this.f109481c;
        return (WeightedObservedPoint[]) list.toArray(new WeightedObservedPoint[list.size()]);
    }

    public void addObservedPoint(double d, double d2, double d3) {
        this.f109481c.add(new WeightedObservedPoint(d, d2, d3));
    }

    public double[] fit(int i, T t, double[] dArr) {
        PointVectorValuePair optimize;
        double[] dArr2 = new double[this.f109481c.size()];
        double[] dArr3 = new double[this.f109481c.size()];
        int i2 = 0;
        for (WeightedObservedPoint weightedObservedPoint : this.f109481c) {
            dArr2[i2] = weightedObservedPoint.getY();
            dArr3[i2] = weightedObservedPoint.getWeight();
            i2++;
        }
        MultivariateDifferentiableVectorOptimizer multivariateDifferentiableVectorOptimizer = this.f109480b;
        if (multivariateDifferentiableVectorOptimizer == null) {
            optimize = this.f109479a.optimize(i, new C19247a(t), dArr2, dArr3, dArr);
        } else {
            optimize = multivariateDifferentiableVectorOptimizer.optimize(i, new C19248b(t), dArr2, dArr3, dArr);
        }
        return optimize.getPointRef();
    }

    /* renamed from: org.apache.commons.math3.optimization.fitting.CurveFitter$b */
    /* loaded from: classes12.dex */
    public class C19248b implements MultivariateDifferentiableVectorFunction {

        /* renamed from: a */
        public final ParametricUnivariateFunction f109485a;

        public C19248b(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f109485a = parametricUnivariateFunction;
        }

        @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
        public double[] value(double[] dArr) {
            double[] dArr2 = new double[CurveFitter.this.f109481c.size()];
            Iterator it2 = CurveFitter.this.f109481c.iterator();
            int i = 0;
            while (it2.hasNext()) {
                dArr2[i] = this.f109485a.value(((WeightedObservedPoint) it2.next()).getX(), dArr);
                i++;
            }
            return dArr2;
        }

        @Override // org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction
        public DerivativeStructure[] value(DerivativeStructure[] derivativeStructureArr) {
            double[] dArr = new double[derivativeStructureArr.length];
            for (int i = 0; i < derivativeStructureArr.length; i++) {
                dArr[i] = derivativeStructureArr[i].getValue();
            }
            DerivativeStructure[] derivativeStructureArr2 = new DerivativeStructure[CurveFitter.this.f109481c.size()];
            Iterator it2 = CurveFitter.this.f109481c.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                DerivativeStructure derivativeStructure = new DerivativeStructure(derivativeStructureArr.length, 1, this.f109485a.value(((WeightedObservedPoint) it2.next()).getX(), dArr));
                for (int i3 = 0; i3 < derivativeStructureArr.length; i3++) {
                    derivativeStructure = derivativeStructure.add(new DerivativeStructure(derivativeStructureArr.length, 1, i3, 0.0d));
                }
                derivativeStructureArr2[i2] = derivativeStructure;
                i2++;
            }
            return derivativeStructureArr2;
        }
    }

    public void addObservedPoint(WeightedObservedPoint weightedObservedPoint) {
        this.f109481c.add(weightedObservedPoint);
    }

    public CurveFitter(MultivariateDifferentiableVectorOptimizer multivariateDifferentiableVectorOptimizer) {
        this.f109479a = null;
        this.f109480b = multivariateDifferentiableVectorOptimizer;
        this.f109481c = new ArrayList();
    }
}
