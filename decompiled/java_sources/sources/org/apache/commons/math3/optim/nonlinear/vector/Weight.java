package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.OptimizationData;

@Deprecated
/* loaded from: classes12.dex */
public class Weight implements OptimizationData {

    /* renamed from: e */
    public final RealMatrix f109248e;

    public Weight(double[] dArr) {
        this.f109248e = new DiagonalMatrix(dArr);
    }

    public RealMatrix getWeight() {
        return this.f109248e.copy();
    }

    public Weight(RealMatrix realMatrix) {
        if (realMatrix.getColumnDimension() == realMatrix.getRowDimension()) {
            this.f109248e = realMatrix.copy();
            return;
        }
        throw new NonSquareMatrixException(realMatrix.getColumnDimension(), realMatrix.getRowDimension());
    }
}
