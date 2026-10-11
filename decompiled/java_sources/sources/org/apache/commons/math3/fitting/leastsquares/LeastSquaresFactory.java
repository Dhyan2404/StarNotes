package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.AbstractOptimizationProblem;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class LeastSquaresFactory {

    /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$a */
    /* loaded from: classes12.dex */
    public static class C19093a extends LeastSquaresAdapter {

        /* renamed from: b */
        public final /* synthetic */ RealMatrix f108162b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19093a(LeastSquaresProblem leastSquaresProblem, RealMatrix realMatrix) {
            super(leastSquaresProblem);
            this.f108162b = realMatrix;
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresAdapter, org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
        public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
            return new C19099a(super.evaluate(realVector), this.f108162b);
        }
    }

    /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$b */
    /* loaded from: classes12.dex */
    public static class C19094b extends LeastSquaresAdapter {

        /* renamed from: b */
        public final /* synthetic */ Incrementor f108163b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19094b(LeastSquaresProblem leastSquaresProblem, Incrementor incrementor) {
            super(leastSquaresProblem);
            this.f108163b = incrementor;
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresAdapter, org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
        public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
            this.f108163b.incrementCount();
            return super.evaluate(realVector);
        }
    }

    /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$c */
    /* loaded from: classes12.dex */
    public static class C19095c implements ConvergenceChecker<LeastSquaresProblem.Evaluation> {

        /* renamed from: a */
        public final /* synthetic */ ConvergenceChecker f108164a;

        public C19095c(ConvergenceChecker convergenceChecker) {
            this.f108164a = convergenceChecker;
        }

        @Override // org.apache.commons.math3.optim.ConvergenceChecker
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean converged(int i, LeastSquaresProblem.Evaluation evaluation, LeastSquaresProblem.Evaluation evaluation2) {
            return this.f108164a.converged(i, new PointVectorValuePair(evaluation.getPoint().toArray(), evaluation.getResiduals().toArray(), false), new PointVectorValuePair(evaluation2.getPoint().toArray(), evaluation2.getResiduals().toArray(), false));
        }
    }

    /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$d */
    /* loaded from: classes12.dex */
    public static class C19096d extends AbstractOptimizationProblem<LeastSquaresProblem.Evaluation> implements LeastSquaresProblem {

        /* renamed from: f */
        public final RealVector f108165f;

        /* renamed from: g */
        public final MultivariateJacobianFunction f108166g;

        /* renamed from: h */
        public final RealVector f108167h;

        /* renamed from: i */
        public final boolean f108168i;

        /* renamed from: j */
        public final ParameterValidator f108169j;

        /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$d$a */
        /* loaded from: classes12.dex */
        public static class a extends AbstractEvaluation {

            /* renamed from: b */
            public final RealVector f108170b;

            /* renamed from: c */
            public final ValueAndJacobianFunction f108171c;

            /* renamed from: d */
            public final RealVector f108172d;

            public /* synthetic */ a(ValueAndJacobianFunction valueAndJacobianFunction, RealVector realVector, RealVector realVector2, C19093a c19093a) {
                this(valueAndJacobianFunction, realVector, realVector2);
            }

            @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
            public RealMatrix getJacobian() {
                return this.f108171c.computeJacobian(this.f108170b.toArray());
            }

            @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
            public RealVector getPoint() {
                return this.f108170b;
            }

            @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
            public RealVector getResiduals() {
                return this.f108172d.subtract(this.f108171c.computeValue(this.f108170b.toArray()));
            }

            public a(ValueAndJacobianFunction valueAndJacobianFunction, RealVector realVector, RealVector realVector2) {
                super(realVector.getDimension());
                this.f108171c = valueAndJacobianFunction;
                this.f108170b = realVector2;
                this.f108172d = realVector;
            }
        }

        /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$d$b */
        /* loaded from: classes12.dex */
        public static class b extends AbstractEvaluation {

            /* renamed from: b */
            public final RealVector f108173b;

            /* renamed from: c */
            public final RealMatrix f108174c;

            /* renamed from: d */
            public final RealVector f108175d;

            public /* synthetic */ b(RealVector realVector, RealMatrix realMatrix, RealVector realVector2, RealVector realVector3, C19093a c19093a) {
                this(realVector, realMatrix, realVector2, realVector3);
            }

            @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
            public RealMatrix getJacobian() {
                return this.f108174c;
            }

            @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
            public RealVector getPoint() {
                return this.f108173b;
            }

            @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
            public RealVector getResiduals() {
                return this.f108175d;
            }

            public b(RealVector realVector, RealMatrix realMatrix, RealVector realVector2, RealVector realVector3) {
                super(realVector2.getDimension());
                this.f108174c = realMatrix;
                this.f108173b = realVector3;
                this.f108175d = realVector2.subtract(realVector);
            }
        }

        public C19096d(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i, int i2, boolean z, ParameterValidator parameterValidator) {
            super(i, i2, convergenceChecker);
            this.f108165f = realVector;
            this.f108166g = multivariateJacobianFunction;
            this.f108167h = realVector2;
            this.f108168i = z;
            this.f108169j = parameterValidator;
            if (z && !(multivariateJacobianFunction instanceof ValueAndJacobianFunction)) {
                throw new MathIllegalStateException(LocalizedFormats.INVALID_IMPLEMENTATION, multivariateJacobianFunction.getClass().getName());
            }
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
        public LeastSquaresProblem.Evaluation evaluate(RealVector realVector) {
            ParameterValidator parameterValidator = this.f108169j;
            RealVector copy = realVector.copy();
            if (parameterValidator != null) {
                copy = parameterValidator.validate(copy);
            }
            RealVector realVector2 = copy;
            if (this.f108168i) {
                return new a((ValueAndJacobianFunction) this.f108166g, this.f108165f, realVector2, null);
            }
            Pair<RealVector, RealMatrix> value = this.f108166g.value(realVector2);
            return new b(value.getFirst(), value.getSecond(), this.f108165f, realVector2, null);
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
        public int getObservationSize() {
            return this.f108165f.getDimension();
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
        public int getParameterSize() {
            return this.f108167h.getDimension();
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem
        public RealVector getStart() {
            RealVector realVector = this.f108167h;
            if (realVector == null) {
                return null;
            }
            return realVector.copy();
        }
    }

    /* renamed from: org.apache.commons.math3.fitting.leastsquares.LeastSquaresFactory$e */
    /* loaded from: classes12.dex */
    public static class C19097e implements ValueAndJacobianFunction {

        /* renamed from: a */
        public final MultivariateVectorFunction f108176a;

        /* renamed from: b */
        public final MultivariateMatrixFunction f108177b;

        public C19097e(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction) {
            this.f108176a = multivariateVectorFunction;
            this.f108177b = multivariateMatrixFunction;
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.ValueAndJacobianFunction
        public RealMatrix computeJacobian(double[] dArr) {
            return new Array2DRowRealMatrix(this.f108177b.value(dArr), false);
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.ValueAndJacobianFunction
        public RealVector computeValue(double[] dArr) {
            return new ArrayRealVector(this.f108176a.value(dArr), false);
        }

        @Override // org.apache.commons.math3.fitting.leastsquares.MultivariateJacobianFunction
        public Pair<RealVector, RealMatrix> value(RealVector realVector) {
            double[] array = realVector.toArray();
            return new Pair<>(computeValue(array), computeJacobian(array));
        }
    }

    /* renamed from: a */
    public static RealMatrix m67585a(RealMatrix realMatrix) {
        if (!(realMatrix instanceof DiagonalMatrix)) {
            return new EigenDecomposition(realMatrix).getSquareRoot();
        }
        int rowDimension = realMatrix.getRowDimension();
        DiagonalMatrix diagonalMatrix = new DiagonalMatrix(rowDimension);
        for (int i = 0; i < rowDimension; i++) {
            diagonalMatrix.setEntry(i, i, FastMath.sqrt(realMatrix.getEntry(i, i)));
        }
        return diagonalMatrix;
    }

    public static LeastSquaresProblem countEvaluations(LeastSquaresProblem leastSquaresProblem, Incrementor incrementor) {
        return new C19094b(leastSquaresProblem, incrementor);
    }

    public static LeastSquaresProblem create(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, RealMatrix realMatrix, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i, int i2, boolean z, ParameterValidator parameterValidator) {
        C19096d c19096d = new C19096d(multivariateJacobianFunction, realVector, realVector2, convergenceChecker, i, i2, z, parameterValidator);
        return realMatrix != null ? weightMatrix(c19096d, realMatrix) : c19096d;
    }

    public static ConvergenceChecker<LeastSquaresProblem.Evaluation> evaluationChecker(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        return new C19095c(convergenceChecker);
    }

    public static MultivariateJacobianFunction model(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction) {
        return new C19097e(multivariateVectorFunction, multivariateMatrixFunction);
    }

    public static LeastSquaresProblem weightDiagonal(LeastSquaresProblem leastSquaresProblem, RealVector realVector) {
        return weightMatrix(leastSquaresProblem, new DiagonalMatrix(realVector.toArray()));
    }

    public static LeastSquaresProblem weightMatrix(LeastSquaresProblem leastSquaresProblem, RealMatrix realMatrix) {
        return new C19093a(leastSquaresProblem, m67585a(realMatrix));
    }

    public static LeastSquaresProblem create(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i, int i2) {
        return create(multivariateJacobianFunction, realVector, realVector2, null, convergenceChecker, i, i2, false, null);
    }

    public static LeastSquaresProblem create(MultivariateJacobianFunction multivariateJacobianFunction, RealVector realVector, RealVector realVector2, RealMatrix realMatrix, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i, int i2) {
        return weightMatrix(create(multivariateJacobianFunction, realVector, realVector2, convergenceChecker, i, i2), realMatrix);
    }

    public static LeastSquaresProblem create(MultivariateVectorFunction multivariateVectorFunction, MultivariateMatrixFunction multivariateMatrixFunction, double[] dArr, double[] dArr2, RealMatrix realMatrix, ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker, int i, int i2) {
        return create(model(multivariateVectorFunction, multivariateMatrixFunction), new ArrayRealVector(dArr, false), new ArrayRealVector(dArr2, false), realMatrix, convergenceChecker, i, i2);
    }
}
