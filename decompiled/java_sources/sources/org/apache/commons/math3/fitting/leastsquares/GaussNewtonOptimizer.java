package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.CholeskyDecomposition;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.NonPositiveDefiniteMatrixException;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.linear.SingularValueDecomposition;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class GaussNewtonOptimizer implements LeastSquaresOptimizer {

    /* renamed from: b */
    public static final double f108148b = 1.0E-11d;

    /* renamed from: a */
    public final Decomposition f108149a;

    /* loaded from: classes12.dex */
    public enum Decomposition {
        LU { // from class: org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition.1
            @Override // org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                try {
                    Pair m67584b = GaussNewtonOptimizer.m67584b(realMatrix, realVector);
                    RealMatrix realMatrix2 = (RealMatrix) m67584b.getFirst();
                    return new LUDecomposition(realMatrix2, 1.0E-11d).getSolver().solve((RealVector) m67584b.getSecond());
                } catch (SingularMatrixException e) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, e);
                }
            }
        },
        QR { // from class: org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition.2
            @Override // org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                try {
                    return new QRDecomposition(realMatrix, 1.0E-11d).getSolver().solve(realVector);
                } catch (SingularMatrixException e) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, e);
                }
            }
        },
        CHOLESKY { // from class: org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition.3
            @Override // org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                try {
                    Pair m67584b = GaussNewtonOptimizer.m67584b(realMatrix, realVector);
                    RealMatrix realMatrix2 = (RealMatrix) m67584b.getFirst();
                    return new CholeskyDecomposition(realMatrix2, 1.0E-11d, 1.0E-11d).getSolver().solve((RealVector) m67584b.getSecond());
                } catch (NonPositiveDefiniteMatrixException e) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, e);
                }
            }
        },
        SVD { // from class: org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition.4
            @Override // org.apache.commons.math3.fitting.leastsquares.GaussNewtonOptimizer.Decomposition
            public RealVector solve(RealMatrix realMatrix, RealVector realVector) {
                return new SingularValueDecomposition(realMatrix).getSolver().solve(realVector);
            }
        };

        public abstract RealVector solve(RealMatrix realMatrix, RealVector realVector);
    }

    public GaussNewtonOptimizer() {
        this(Decomposition.QR);
    }

    /* renamed from: b */
    public static Pair<RealMatrix, RealVector> m67584b(RealMatrix realMatrix, RealVector realVector) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        RealMatrix createRealMatrix = MatrixUtils.createRealMatrix(columnDimension, columnDimension);
        ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < columnDimension; i2++) {
                arrayRealVector.setEntry(i2, arrayRealVector.getEntry(i2) + (realVector.getEntry(i) * realMatrix.getEntry(i, i2)));
            }
            for (int i3 = 0; i3 < columnDimension; i3++) {
                for (int i4 = i3; i4 < columnDimension; i4++) {
                    createRealMatrix.setEntry(i3, i4, createRealMatrix.getEntry(i3, i4) + (realMatrix.getEntry(i, i3) * realMatrix.getEntry(i, i4)));
                }
            }
        }
        for (int i5 = 0; i5 < columnDimension; i5++) {
            for (int i6 = 0; i6 < i5; i6++) {
                createRealMatrix.setEntry(i5, i6, createRealMatrix.getEntry(i6, i5));
            }
        }
        return new Pair<>(createRealMatrix, arrayRealVector);
    }

    public Decomposition getDecomposition() {
        return this.f108149a;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer
    public LeastSquaresOptimizer.Optimum optimize(LeastSquaresProblem leastSquaresProblem) {
        Incrementor evaluationCounter = leastSquaresProblem.getEvaluationCounter();
        Incrementor iterationCounter = leastSquaresProblem.getIterationCounter();
        ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker = leastSquaresProblem.getConvergenceChecker();
        if (convergenceChecker == null) {
            throw new NullArgumentException();
        }
        RealVector start = leastSquaresProblem.getStart();
        LeastSquaresProblem.Evaluation evaluation = null;
        while (true) {
            iterationCounter.incrementCount();
            evaluationCounter.incrementCount();
            LeastSquaresProblem.Evaluation evaluate = leastSquaresProblem.evaluate(start);
            RealVector residuals = evaluate.getResiduals();
            RealMatrix jacobian = evaluate.getJacobian();
            RealVector point = evaluate.getPoint();
            if (evaluation != null && convergenceChecker.converged(iterationCounter.getCount(), evaluation, evaluate)) {
                return new C19100b(evaluate, evaluationCounter.getCount(), iterationCounter.getCount());
            }
            evaluation = evaluate;
            start = point.add(this.f108149a.solve(jacobian, residuals));
        }
    }

    public String toString() {
        return "GaussNewtonOptimizer{decomposition=" + this.f108149a + '}';
    }

    public GaussNewtonOptimizer withDecomposition(Decomposition decomposition) {
        return new GaussNewtonOptimizer(decomposition);
    }

    public GaussNewtonOptimizer(Decomposition decomposition) {
        this.f108149a = decomposition;
    }
}
