package org.apache.commons.math3.optimization;

import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;

@Deprecated
/* loaded from: classes12.dex */
public class Weight implements OptimizationData {

    /* renamed from: a */
    public final RealMatrix f109338a;

    public Weight(double[] dArr) {
        this.f109338a = new DiagonalMatrix(dArr);
    }

    public RealMatrix getWeight() {
        return this.f109338a.copy();
    }

    public Weight(RealMatrix realMatrix) {
        if (realMatrix.getColumnDimension() == realMatrix.getRowDimension()) {
            this.f109338a = realMatrix.copy();
            return;
        }
        throw new NonSquareMatrixException(realMatrix.getColumnDimension(), realMatrix.getRowDimension());
    }
}
