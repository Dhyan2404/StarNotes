package org.apache.commons.math3.filter;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.CholeskyDecomposition;
import org.apache.commons.math3.linear.MatrixDimensionMismatchException;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class KalmanFilter {

    /* renamed from: a */
    public final ProcessModel f108097a;

    /* renamed from: b */
    public final MeasurementModel f108098b;

    /* renamed from: c */
    public RealMatrix f108099c;

    /* renamed from: d */
    public RealMatrix f108100d;

    /* renamed from: e */
    public RealMatrix f108101e;

    /* renamed from: f */
    public RealMatrix f108102f;

    /* renamed from: g */
    public RealMatrix f108103g;

    /* renamed from: h */
    public RealVector f108104h;

    /* renamed from: i */
    public RealMatrix f108105i;

    public KalmanFilter(ProcessModel processModel, MeasurementModel measurementModel) throws NullArgumentException, NonSquareMatrixException, DimensionMismatchException, MatrixDimensionMismatchException {
        MathUtils.checkNotNull(processModel);
        MathUtils.checkNotNull(measurementModel);
        this.f108097a = processModel;
        this.f108098b = measurementModel;
        RealMatrix stateTransitionMatrix = processModel.getStateTransitionMatrix();
        this.f108099c = stateTransitionMatrix;
        MathUtils.checkNotNull(stateTransitionMatrix);
        this.f108100d = this.f108099c.transpose();
        if (processModel.getControlMatrix() == null) {
            this.f108101e = new Array2DRowRealMatrix();
        } else {
            this.f108101e = processModel.getControlMatrix();
        }
        RealMatrix measurementMatrix = measurementModel.getMeasurementMatrix();
        this.f108102f = measurementMatrix;
        MathUtils.checkNotNull(measurementMatrix);
        this.f108103g = this.f108102f.transpose();
        RealMatrix processNoise = processModel.getProcessNoise();
        MathUtils.checkNotNull(processNoise);
        RealMatrix measurementNoise = measurementModel.getMeasurementNoise();
        MathUtils.checkNotNull(measurementNoise);
        if (processModel.getInitialStateEstimate() == null) {
            this.f108104h = new ArrayRealVector(this.f108099c.getColumnDimension());
        } else {
            this.f108104h = processModel.getInitialStateEstimate();
        }
        if (this.f108099c.getColumnDimension() != this.f108104h.getDimension()) {
            throw new DimensionMismatchException(this.f108099c.getColumnDimension(), this.f108104h.getDimension());
        }
        if (processModel.getInitialErrorCovariance() == null) {
            this.f108105i = processNoise.copy();
        } else {
            this.f108105i = processModel.getInitialErrorCovariance();
        }
        if (!this.f108099c.isSquare()) {
            throw new NonSquareMatrixException(this.f108099c.getRowDimension(), this.f108099c.getColumnDimension());
        }
        RealMatrix realMatrix = this.f108101e;
        if (realMatrix != null && realMatrix.getRowDimension() > 0 && this.f108101e.getColumnDimension() > 0 && this.f108101e.getRowDimension() != this.f108099c.getRowDimension()) {
            throw new MatrixDimensionMismatchException(this.f108101e.getRowDimension(), this.f108101e.getColumnDimension(), this.f108099c.getRowDimension(), this.f108101e.getColumnDimension());
        }
        MatrixUtils.checkAdditionCompatible(this.f108099c, processNoise);
        if (this.f108102f.getColumnDimension() != this.f108099c.getRowDimension()) {
            throw new MatrixDimensionMismatchException(this.f108102f.getRowDimension(), this.f108102f.getColumnDimension(), this.f108102f.getRowDimension(), this.f108099c.getRowDimension());
        }
        if (measurementNoise.getRowDimension() != this.f108102f.getRowDimension()) {
            throw new MatrixDimensionMismatchException(measurementNoise.getRowDimension(), measurementNoise.getColumnDimension(), this.f108102f.getRowDimension(), measurementNoise.getColumnDimension());
        }
    }

    public void correct(double[] dArr) throws NullArgumentException, DimensionMismatchException, SingularMatrixException {
        correct(new ArrayRealVector(dArr, false));
    }

    public double[][] getErrorCovariance() {
        return this.f108105i.getData();
    }

    public RealMatrix getErrorCovarianceMatrix() {
        return this.f108105i.copy();
    }

    public int getMeasurementDimension() {
        return this.f108102f.getRowDimension();
    }

    public int getStateDimension() {
        return this.f108104h.getDimension();
    }

    public double[] getStateEstimation() {
        return this.f108104h.toArray();
    }

    public RealVector getStateEstimationVector() {
        return this.f108104h.copy();
    }

    public void predict() {
        predict((RealVector) null);
    }

    public void correct(RealVector realVector) throws NullArgumentException, DimensionMismatchException, SingularMatrixException {
        MathUtils.checkNotNull(realVector);
        if (realVector.getDimension() == this.f108102f.getRowDimension()) {
            RealMatrix add = this.f108102f.multiply(this.f108105i).multiply(this.f108103g).add(this.f108098b.getMeasurementNoise());
            RealVector subtract = realVector.subtract(this.f108102f.operate(this.f108104h));
            RealMatrix transpose = new CholeskyDecomposition(add).getSolver().solve(this.f108102f.multiply(this.f108105i.transpose())).transpose();
            this.f108104h = this.f108104h.add(transpose.operate(subtract));
            this.f108105i = MatrixUtils.createRealIdentityMatrix(transpose.getRowDimension()).subtract(transpose.multiply(this.f108102f)).multiply(this.f108105i);
            return;
        }
        throw new DimensionMismatchException(realVector.getDimension(), this.f108102f.getRowDimension());
    }

    public void predict(double[] dArr) throws DimensionMismatchException {
        predict(new ArrayRealVector(dArr, false));
    }

    public void predict(RealVector realVector) throws DimensionMismatchException {
        if (realVector != null && realVector.getDimension() != this.f108101e.getColumnDimension()) {
            throw new DimensionMismatchException(realVector.getDimension(), this.f108101e.getColumnDimension());
        }
        RealVector operate = this.f108099c.operate(this.f108104h);
        this.f108104h = operate;
        if (realVector != null) {
            this.f108104h = operate.add(this.f108101e.operate(realVector));
        }
        this.f108105i = this.f108099c.multiply(this.f108105i).multiply(this.f108100d).add(this.f108097a.getProcessNoise());
    }
}
