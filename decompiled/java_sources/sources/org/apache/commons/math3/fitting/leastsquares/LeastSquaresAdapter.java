package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.Incrementor;

/* loaded from: classes12.dex */
public class LeastSquaresAdapter implements LeastSquaresProblem {

    /* renamed from: a */
    public final LeastSquaresProblem f108152a;

    public LeastSquaresAdapter(LeastSquaresProblem leastSquaresProblem) {
        this.f108152a = leastSquaresProblem;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
    public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
        return this.f108152a.evaluate(realVector);
    }

    @Override // org.apache.commons.math3.optim.OptimizationProblem
    public ConvergenceChecker<LeastSquaresProblem.Evaluation> getConvergenceChecker() {
        return this.f108152a.getConvergenceChecker();
    }

    @Override // org.apache.commons.math3.optim.OptimizationProblem
    public Incrementor getEvaluationCounter() {
        return this.f108152a.getEvaluationCounter();
    }

    @Override // org.apache.commons.math3.optim.OptimizationProblem
    public Incrementor getIterationCounter() {
        return this.f108152a.getIterationCounter();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
    public int getObservationSize() {
        return this.f108152a.getObservationSize();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
    public int getParameterSize() {
        return this.f108152a.getParameterSize();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
    public RealVector getStart() {
        return this.f108152a.getStart();
    }
}
