package org.apache.commons.math3.fitting;

import java.util.Collection;
import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.fitting.AbstractCurveFitter;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresBuilder;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.DiagonalMatrix;

/* loaded from: classes12.dex */
public class PolynomialCurveFitter extends AbstractCurveFitter {

    /* renamed from: c */
    public static final PolynomialFunction.Parametric f108137c = new PolynomialFunction.Parametric();

    /* renamed from: a */
    public final double[] f108138a;

    /* renamed from: b */
    public final int f108139b;

    public PolynomialCurveFitter(double[] dArr, int i) {
        this.f108138a = dArr;
        this.f108139b = i;
    }

    public static PolynomialCurveFitter create(int i) {
        return new PolynomialCurveFitter(new double[i + 1], Integer.MAX_VALUE);
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
        AbstractCurveFitter.TheoreticalValuesFunction theoreticalValuesFunction = new AbstractCurveFitter.TheoreticalValuesFunction(f108137c, collection);
        if (this.f108138a != null) {
            return new LeastSquaresBuilder().maxEvaluations(Integer.MAX_VALUE).maxIterations(this.f108139b).start(this.f108138a).target(dArr).weight(new DiagonalMatrix(dArr2)).model(theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian()).build();
        }
        throw new MathInternalError();
    }

    public PolynomialCurveFitter withMaxIterations(int i) {
        return new PolynomialCurveFitter(this.f108138a, i);
    }

    public PolynomialCurveFitter withStartPoint(double[] dArr) {
        return new PolynomialCurveFitter((double[]) dArr.clone(), this.f108139b);
    }
}
