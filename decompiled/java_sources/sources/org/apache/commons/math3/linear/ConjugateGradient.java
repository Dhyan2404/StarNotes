package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.util.IterationManager;

/* loaded from: classes12.dex */
public class ConjugateGradient extends PreconditionedIterativeLinearSolver {
    public static final String OPERATOR = "operator";
    public static final String VECTOR = "vector";

    /* renamed from: b */
    public boolean f108470b;

    /* renamed from: c */
    public final double f108471c;

    public ConjugateGradient(int i, double d, boolean z) {
        super(i);
        this.f108471c = d;
        this.f108470b = z;
    }

    public final boolean getCheck() {
        return this.f108470b;
    }

    @Override // org.apache.commons.math3.linear.PreconditionedIterativeLinearSolver
    public RealVector solveInPlace(RealLinearOperator realLinearOperator, RealLinearOperator realLinearOperator2, RealVector realVector, RealVector realVector2) throws NullArgumentException, NonPositiveDefiniteOperatorException, NonSquareOperatorException, DimensionMismatchException, MaxCountExceededException {
        RealVector realVector3;
        double d;
        String str;
        RealLinearOperator realLinearOperator3;
        RealLinearOperator realLinearOperator4 = realLinearOperator2;
        PreconditionedIterativeLinearSolver.checkParameters(realLinearOperator, realLinearOperator2, realVector, realVector2);
        IterationManager iterationManager = getIterationManager();
        iterationManager.resetIterationCount();
        double norm = this.f108471c * realVector.getNorm();
        RealVector unmodifiableRealVector = RealVector.unmodifiableRealVector(realVector);
        iterationManager.incrementIterationCount();
        RealVector unmodifiableRealVector2 = RealVector.unmodifiableRealVector(realVector2);
        RealVector copy = realVector2.copy();
        RealVector combine = realVector.combine(1.0d, -1.0d, realLinearOperator.operate(copy));
        RealVector unmodifiableRealVector3 = RealVector.unmodifiableRealVector(combine);
        double norm2 = combine.getNorm();
        RealVector realVector4 = realLinearOperator4 == null ? combine : null;
        RealVector realVector5 = copy;
        RealVector realVector6 = combine;
        DefaultIterativeLinearSolverEvent defaultIterativeLinearSolverEvent = new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), unmodifiableRealVector2, unmodifiableRealVector, unmodifiableRealVector3, norm2);
        iterationManager.fireInitializationEvent(defaultIterativeLinearSolverEvent);
        if (norm2 <= norm) {
            iterationManager.fireTerminationEvent(defaultIterativeLinearSolverEvent);
            return realVector2;
        }
        double d2 = norm2;
        double d3 = 0.0d;
        while (true) {
            iterationManager.incrementIterationCount();
            iterationManager.fireIterationStartedEvent(new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), unmodifiableRealVector2, unmodifiableRealVector, unmodifiableRealVector3, d2));
            RealVector operate = realLinearOperator4 != null ? realLinearOperator4.operate(realVector6) : realVector4;
            double dotProduct = realVector6.dotProduct(operate);
            RealVector realVector7 = realVector6;
            if (this.f108470b && dotProduct <= 0.0d) {
                NonPositiveDefiniteOperatorException nonPositiveDefiniteOperatorException = new NonPositiveDefiniteOperatorException();
                ExceptionContext context = nonPositiveDefiniteOperatorException.getContext();
                context.setValue("operator", realLinearOperator4);
                context.setValue("vector", realVector7);
                throw nonPositiveDefiniteOperatorException;
            }
            if (iterationManager.getIterations() == 2) {
                RealVector realVector8 = realVector5;
                realVector8.setSubVector(0, operate);
                realVector3 = realVector8;
                d = norm;
                realLinearOperator3 = realLinearOperator;
                str = "operator";
            } else {
                RealVector realVector9 = realVector5;
                realVector3 = realVector9;
                d = norm;
                str = "operator";
                realVector9.combineToSelf(dotProduct / d3, 1.0d, operate);
                realLinearOperator3 = realLinearOperator;
            }
            RealVector operate2 = realLinearOperator3.operate(realVector3);
            double dotProduct2 = realVector3.dotProduct(operate2);
            if (this.f108470b && dotProduct2 <= 0.0d) {
                NonPositiveDefiniteOperatorException nonPositiveDefiniteOperatorException2 = new NonPositiveDefiniteOperatorException();
                ExceptionContext context2 = nonPositiveDefiniteOperatorException2.getContext();
                context2.setValue(str, realLinearOperator3);
                context2.setValue("vector", realVector3);
                throw nonPositiveDefiniteOperatorException2;
            }
            double d4 = dotProduct / dotProduct2;
            realVector2.combineToSelf(1.0d, d4, realVector3);
            realVector7.combineToSelf(1.0d, -d4, operate2);
            double norm3 = realVector7.getNorm();
            DefaultIterativeLinearSolverEvent defaultIterativeLinearSolverEvent2 = new DefaultIterativeLinearSolverEvent(this, iterationManager.getIterations(), unmodifiableRealVector2, unmodifiableRealVector, unmodifiableRealVector3, norm3);
            iterationManager.fireIterationPerformedEvent(defaultIterativeLinearSolverEvent2);
            if (norm3 <= d) {
                iterationManager.fireTerminationEvent(defaultIterativeLinearSolverEvent2);
                return realVector2;
            }
            realVector5 = realVector3;
            d2 = norm3;
            realVector6 = realVector7;
            d3 = dotProduct;
            norm = d;
            realLinearOperator4 = realLinearOperator2;
            realVector4 = operate;
        }
    }

    public ConjugateGradient(IterationManager iterationManager, double d, boolean z) throws NullArgumentException {
        super(iterationManager);
        this.f108471c = d;
        this.f108470b = z;
    }
}
