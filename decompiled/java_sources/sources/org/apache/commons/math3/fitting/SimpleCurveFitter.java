package org.apache.commons.math3.fitting;

import java.util.Collection;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.fitting.AbstractCurveFitter;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresBuilder;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.DiagonalMatrix;

/* loaded from: classes12.dex */
public class SimpleCurveFitter extends AbstractCurveFitter {

    /* renamed from: a */
    public final ParametricUnivariateFunction f108140a;

    /* renamed from: b */
    public final double[] f108141b;

    /* renamed from: c */
    public final int f108142c;

    public SimpleCurveFitter(ParametricUnivariateFunction parametricUnivariateFunction, double[] dArr, int i) {
        this.f108140a = parametricUnivariateFunction;
        this.f108141b = dArr;
        this.f108142c = i;
    }

    public static SimpleCurveFitter create(ParametricUnivariateFunction parametricUnivariateFunction, double[] dArr) {
        return new SimpleCurveFitter(parametricUnivariateFunction, dArr, Integer.MAX_VALUE);
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
        AbstractCurveFitter.TheoreticalValuesFunction theoreticalValuesFunction = new AbstractCurveFitter.TheoreticalValuesFunction(this.f108140a, collection);
        return new LeastSquaresBuilder().maxEvaluations(Integer.MAX_VALUE).maxIterations(this.f108142c).start(this.f108141b).target(dArr).weight(new DiagonalMatrix(dArr2)).model(theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian()).build();
    }

    public SimpleCurveFitter withMaxIterations(int i) {
        return new SimpleCurveFitter(this.f108140a, this.f108141b, i);
    }

    public SimpleCurveFitter withStartPoint(double[] dArr) {
        return new SimpleCurveFitter(this.f108140a, (double[]) dArr.clone(), this.f108142c);
    }
}
