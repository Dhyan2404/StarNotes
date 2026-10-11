package org.apache.commons.math3.filter;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;

/* loaded from: classes12.dex */
public class DefaultMeasurementModel implements MeasurementModel {

    /* renamed from: a */
    public RealMatrix f108090a;

    /* renamed from: b */
    public RealMatrix f108091b;

    public DefaultMeasurementModel(double[][] dArr, double[][] dArr2) throws NullArgumentException, NoDataException, DimensionMismatchException {
        this(new Array2DRowRealMatrix(dArr), new Array2DRowRealMatrix(dArr2));
    }

    @Override // org.apache.commons.math3.filter.MeasurementModel
    public RealMatrix getMeasurementMatrix() {
        return this.f108090a;
    }

    @Override // org.apache.commons.math3.filter.MeasurementModel
    public RealMatrix getMeasurementNoise() {
        return this.f108091b;
    }

    public DefaultMeasurementModel(RealMatrix realMatrix, RealMatrix realMatrix2) {
        this.f108090a = realMatrix;
        this.f108091b = realMatrix2;
    }
}
