package org.apache.commons.math3.optim.nonlinear.scalar.gradient;

import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.GradientMultivariateOptimizer;
import org.apache.commons.math3.optim.nonlinear.scalar.LineSearch;

/* loaded from: classes12.dex */
public class NonLinearConjugateGradientOptimizer extends GradientMultivariateOptimizer {

    /* renamed from: h */
    public final Formula f109121h;

    /* renamed from: i */
    public final Preconditioner f109122i;

    /* renamed from: j */
    public final LineSearch f109123j;

    @Deprecated
    /* loaded from: classes12.dex */
    public static class BracketingStep implements OptimizationData {

        /* renamed from: e */
        public final double f109124e;

        public BracketingStep(double d) {
            this.f109124e = d;
        }

        public double getBracketingStep() {
            return this.f109124e;
        }
    }

    /* loaded from: classes12.dex */
    public enum Formula {
        FLETCHER_REEVES,
        POLAK_RIBIERE
    }

    /* loaded from: classes12.dex */
    public static class IdentityPreconditioner implements Preconditioner {
        @Override // org.apache.commons.math3.optim.nonlinear.scalar.gradient.Preconditioner
        public double[] precondition(double[] dArr, double[] dArr2) {
            return (double[]) dArr2.clone();
        }
    }

    /* renamed from: org.apache.commons.math3.optim.nonlinear.scalar.gradient.NonLinearConjugateGradientOptimizer$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19227a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109125a;

        static {
            int[] iArr = new int[Formula.values().length];
            f109125a = iArr;
            try {
                iArr[Formula.FLETCHER_REEVES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109125a[Formula.POLAK_RIBIERE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(formula, convergenceChecker, 1.0E-8d, 1.0E-8d, 1.0E-8d, new IdentityPreconditioner());
    }

    /* renamed from: a */
    private void m67914a() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.GradientMultivariateOptimizer, org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        m67914a();
    }

    @Deprecated
    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver) {
        this(formula, convergenceChecker, univariateSolver, new IdentityPreconditioner());
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() {
        double d;
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        double[] startPoint = getStartPoint();
        GoalType goalType = getGoalType();
        int length = startPoint.length;
        double[] computeObjectiveGradient = computeObjectiveGradient(startPoint);
        if (goalType == GoalType.MINIMIZE) {
            for (int i = 0; i < length; i++) {
                computeObjectiveGradient[i] = -computeObjectiveGradient[i];
            }
        }
        double[] precondition = this.f109122i.precondition(startPoint, computeObjectiveGradient);
        double[] dArr = (double[]) precondition.clone();
        double d2 = 0.0d;
        for (int i2 = 0; i2 < length; i2++) {
            d2 += computeObjectiveGradient[i2] * dArr[i2];
        }
        PointValuePair pointValuePair = null;
        while (true) {
            incrementIterationCount();
            PointValuePair pointValuePair2 = new PointValuePair(startPoint, computeObjectiveValue(startPoint));
            if (pointValuePair != null && convergenceChecker.converged(getIterations(), pointValuePair, pointValuePair2)) {
                return pointValuePair2;
            }
            double point = this.f109123j.search(startPoint, dArr).getPoint();
            for (int i3 = 0; i3 < startPoint.length; i3++) {
                startPoint[i3] = startPoint[i3] + (dArr[i3] * point);
            }
            double[] computeObjectiveGradient2 = computeObjectiveGradient(startPoint);
            if (goalType == GoalType.MINIMIZE) {
                for (int i4 = 0; i4 < length; i4++) {
                    computeObjectiveGradient2[i4] = -computeObjectiveGradient2[i4];
                }
            }
            double[] precondition2 = this.f109122i.precondition(startPoint, computeObjectiveGradient2);
            double d3 = 0.0d;
            for (int i5 = 0; i5 < length; i5++) {
                d3 += computeObjectiveGradient2[i5] * precondition2[i5];
            }
            int i6 = C19227a.f109125a[this.f109121h.ordinal()];
            if (i6 == 1) {
                d = d3 / d2;
            } else if (i6 == 2) {
                double d4 = 0.0d;
                for (int i7 = 0; i7 < computeObjectiveGradient2.length; i7++) {
                    d4 += computeObjectiveGradient2[i7] * precondition[i7];
                }
                d = (d3 - d4) / d2;
            } else {
                throw new MathInternalError();
            }
            if (getIterations() % length != 0 && d >= 0.0d) {
                for (int i8 = 0; i8 < length; i8++) {
                    dArr[i8] = precondition2[i8] + (dArr[i8] * d);
                }
                precondition = precondition2;
                pointValuePair = pointValuePair2;
                d2 = d3;
            }
            dArr = (double[]) precondition2.clone();
            precondition = precondition2;
            pointValuePair = pointValuePair2;
            d2 = d3;
        }
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.GradientMultivariateOptimizer, org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return super.optimize(optimizationDataArr);
    }

    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, double d, double d2, double d3) {
        this(formula, convergenceChecker, d, d2, d3, new IdentityPreconditioner());
    }

    @Deprecated
    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver, Preconditioner preconditioner) {
        this(formula, convergenceChecker, univariateSolver.getRelativeAccuracy(), univariateSolver.getAbsoluteAccuracy(), univariateSolver.getAbsoluteAccuracy(), preconditioner);
    }

    public NonLinearConjugateGradientOptimizer(Formula formula, ConvergenceChecker<PointValuePair> convergenceChecker, double d, double d2, double d3, Preconditioner preconditioner) {
        super(convergenceChecker);
        this.f109121h = formula;
        this.f109122i = preconditioner;
        this.f109123j = new LineSearch(this, d, d2, d3);
    }
}
