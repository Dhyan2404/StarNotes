package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.solvers.BrentSolver;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.util.FastMath;

@Deprecated
/* loaded from: classes12.dex */
public class NonLinearConjugateGradientOptimizer extends AbstractScalarDifferentiableOptimizer {

    /* renamed from: h */
    public final ConjugateGradientFormula f109520h;

    /* renamed from: i */
    public final Preconditioner f109521i;

    /* renamed from: j */
    public final UnivariateSolver f109522j;

    /* renamed from: k */
    public double f109523k;

    /* renamed from: l */
    public double[] f109524l;

    /* loaded from: classes12.dex */
    public static class IdentityPreconditioner implements Preconditioner {
        @Override // org.apache.commons.math3.optimization.general.Preconditioner
        public double[] precondition(double[] dArr, double[] dArr2) {
            return (double[]) dArr2.clone();
        }
    }

    /* renamed from: org.apache.commons.math3.optimization.general.NonLinearConjugateGradientOptimizer$a */
    /* loaded from: classes12.dex */
    public class C19251a implements UnivariateFunction {

        /* renamed from: e */
        public final double[] f109525e;

        public C19251a(double[] dArr) {
            this.f109525e = dArr;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            double[] dArr = (double[]) NonLinearConjugateGradientOptimizer.this.f109524l.clone();
            for (int i = 0; i < dArr.length; i++) {
                dArr[i] = dArr[i] + (this.f109525e[i] * d);
            }
            double[] computeObjectiveGradient = NonLinearConjugateGradientOptimizer.this.computeObjectiveGradient(dArr);
            double d2 = 0.0d;
            for (int i2 = 0; i2 < computeObjectiveGradient.length; i2++) {
                d2 += computeObjectiveGradient[i2] * this.f109525e[i2];
            }
            return d2;
        }
    }

    @Deprecated
    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula) {
        this(conjugateGradientFormula, new SimpleValueChecker());
    }

    /* renamed from: d */
    public final double m68077d(UnivariateFunction univariateFunction, double d, double d2) {
        double value = univariateFunction.value(d);
        while (d2 < Double.MAX_VALUE) {
            double d3 = d + d2;
            double value2 = univariateFunction.value(d3);
            if (value * value2 <= 0.0d) {
                return d3;
            }
            d2 *= FastMath.max(2.0d, value / value2);
        }
        throw new MathIllegalStateException(LocalizedFormats.UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH, new Object[0]);
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair doOptimize() {
        double[] dArr;
        double d;
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        this.f109524l = getStartPoint();
        GoalType goalType = getGoalType();
        double[] dArr2 = this.f109524l;
        int length = dArr2.length;
        double[] computeObjectiveGradient = computeObjectiveGradient(dArr2);
        if (goalType == GoalType.MINIMIZE) {
            for (int i = 0; i < length; i++) {
                computeObjectiveGradient[i] = -computeObjectiveGradient[i];
            }
        }
        double[] precondition = this.f109521i.precondition(this.f109524l, computeObjectiveGradient);
        double[] dArr3 = (double[]) precondition.clone();
        double d2 = 0.0d;
        for (int i2 = 0; i2 < length; i2++) {
            d2 += computeObjectiveGradient[i2] * dArr3[i2];
        }
        PointValuePair pointValuePair = null;
        int maxEvaluations = getMaxEvaluations();
        double[] dArr4 = precondition;
        double[] dArr5 = dArr3;
        double d3 = d2;
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            PointValuePair pointValuePair2 = new PointValuePair(this.f109524l, computeObjectiveValue(this.f109524l));
            if (pointValuePair != null && convergenceChecker.converged(i4, pointValuePair, pointValuePair2)) {
                return pointValuePair2;
            }
            C19251a c19251a = new C19251a(dArr5);
            double m68077d = m68077d(c19251a, 0.0d, this.f109523k);
            pointValuePair = pointValuePair2;
            double[] dArr6 = dArr5;
            double solve = this.f109522j.solve(maxEvaluations, c19251a, 0.0d, m68077d, 1.0E-15d);
            maxEvaluations -= this.f109522j.getEvaluations();
            int i5 = 0;
            while (true) {
                dArr = this.f109524l;
                if (i5 >= dArr.length) {
                    break;
                }
                dArr[i5] = dArr[i5] + (dArr6[i5] * solve);
                i5++;
            }
            double[] computeObjectiveGradient2 = computeObjectiveGradient(dArr);
            if (goalType == GoalType.MINIMIZE) {
                for (int i6 = 0; i6 < length; i6++) {
                    computeObjectiveGradient2[i6] = -computeObjectiveGradient2[i6];
                }
            }
            double[] precondition2 = this.f109521i.precondition(this.f109524l, computeObjectiveGradient2);
            double d4 = 0.0d;
            for (int i7 = 0; i7 < length; i7++) {
                d4 += computeObjectiveGradient2[i7] * precondition2[i7];
            }
            if (this.f109520h == ConjugateGradientFormula.FLETCHER_REEVES) {
                d = d4 / d3;
            } else {
                double d5 = 0.0d;
                for (int i8 = 0; i8 < computeObjectiveGradient2.length; i8++) {
                    d5 += computeObjectiveGradient2[i8] * dArr4[i8];
                }
                d = (d4 - d5) / d3;
            }
            if (i4 % length == 0 || d < 0.0d) {
                dArr5 = (double[]) precondition2.clone();
            } else {
                for (int i9 = 0; i9 < length; i9++) {
                    dArr6[i9] = precondition2[i9] + (dArr6[i9] * d);
                }
                dArr5 = dArr6;
            }
            dArr4 = precondition2;
            i3 = i4;
            d3 = d4;
        }
    }

    public void setInitialStep(double d) {
        if (d <= 0.0d) {
            this.f109523k = 1.0d;
        } else {
            this.f109523k = d;
        }
    }

    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(conjugateGradientFormula, convergenceChecker, new BrentSolver(), new IdentityPreconditioner());
    }

    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver) {
        this(conjugateGradientFormula, convergenceChecker, univariateSolver, new IdentityPreconditioner());
    }

    public NonLinearConjugateGradientOptimizer(ConjugateGradientFormula conjugateGradientFormula, ConvergenceChecker<PointValuePair> convergenceChecker, UnivariateSolver univariateSolver, Preconditioner preconditioner) {
        super(convergenceChecker);
        this.f109520h = conjugateGradientFormula;
        this.f109522j = univariateSolver;
        this.f109521i = preconditioner;
        this.f109523k = 1.0d;
    }
}
