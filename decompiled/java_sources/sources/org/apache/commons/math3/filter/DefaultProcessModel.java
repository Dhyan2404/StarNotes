package org.apache.commons.math3.filter;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;

/* loaded from: classes12.dex */
public class DefaultProcessModel implements ProcessModel {

    /* renamed from: a */
    public RealMatrix f108092a;

    /* renamed from: b */
    public RealMatrix f108093b;

    /* renamed from: c */
    public RealMatrix f108094c;

    /* renamed from: d */
    public RealVector f108095d;

    /* renamed from: e */
    public RealMatrix f108096e;

    public DefaultProcessModel(double[][] dArr, double[][] dArr2, double[][] dArr3, double[] dArr4, double[][] dArr5) throws NullArgumentException, NoDataException, DimensionMismatchException {
        this(new Array2DRowRealMatrix(dArr), new Array2DRowRealMatrix(dArr2), new Array2DRowRealMatrix(dArr3), new ArrayRealVector(dArr4), new Array2DRowRealMatrix(dArr5));
    }

    @Override // org.apache.commons.math3.filter.ProcessModel
    public RealMatrix getControlMatrix() {
        return this.f108093b;
    }

    @Override // org.apache.commons.math3.filter.ProcessModel
    public RealMatrix getInitialErrorCovariance() {
        return this.f108096e;
    }

    @Override // org.apache.commons.math3.filter.ProcessModel
    public RealVector getInitialStateEstimate() {
        return this.f108095d;
    }

    @Override // org.apache.commons.math3.filter.ProcessModel
    public RealMatrix getProcessNoise() {
        return this.f108094c;
    }

    @Override // org.apache.commons.math3.filter.ProcessModel
    public RealMatrix getStateTransitionMatrix() {
        return this.f108092a;
    }

    public DefaultProcessModel(double[][] dArr, double[][] dArr2, double[][] dArr3) throws NullArgumentException, NoDataException, DimensionMismatchException {
        this(new Array2DRowRealMatrix(dArr), new Array2DRowRealMatrix(dArr2), new Array2DRowRealMatrix(dArr3), (RealVector) null, (RealMatrix) null);
    }

    public DefaultProcessModel(RealMatrix realMatrix, RealMatrix realMatrix2, RealMatrix realMatrix3, RealVector realVector, RealMatrix realMatrix4) {
        this.f108092a = realMatrix;
        this.f108093b = realMatrix2;
        this.f108094c = realMatrix3;
        this.f108095d = realVector;
        this.f108096e = realMatrix4;
    }
}
