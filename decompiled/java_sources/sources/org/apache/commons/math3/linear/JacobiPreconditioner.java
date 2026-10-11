package org.apache.commons.math3.linear;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Sqrt;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class JacobiPreconditioner extends RealLinearOperator {

    /* renamed from: e */
    public final ArrayRealVector f108505e;

    /* renamed from: org.apache.commons.math3.linear.JacobiPreconditioner$a */
    /* loaded from: classes12.dex */
    public class C19165a extends RealLinearOperator {

        /* renamed from: e */
        public final /* synthetic */ RealVector f108506e;

        public C19165a(RealVector realVector) {
            this.f108506e = realVector;
        }

        @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
        public int getColumnDimension() {
            return this.f108506e.getDimension();
        }

        @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
        public int getRowDimension() {
            return this.f108506e.getDimension();
        }

        @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.RealMatrix
        public RealVector operate(RealVector realVector) {
            return new ArrayRealVector(MathArrays.ebeDivide(realVector.toArray(), this.f108506e.toArray()), false);
        }
    }

    public JacobiPreconditioner(double[] dArr, boolean z) {
        this.f108505e = new ArrayRealVector(dArr, z);
    }

    public static JacobiPreconditioner create(RealLinearOperator realLinearOperator) throws NonSquareOperatorException {
        int columnDimension = realLinearOperator.getColumnDimension();
        if (realLinearOperator.getRowDimension() != columnDimension) {
            throw new NonSquareOperatorException(realLinearOperator.getRowDimension(), columnDimension);
        }
        double[] dArr = new double[columnDimension];
        if (realLinearOperator instanceof AbstractRealMatrix) {
            AbstractRealMatrix abstractRealMatrix = (AbstractRealMatrix) realLinearOperator;
            for (int i = 0; i < columnDimension; i++) {
                dArr[i] = abstractRealMatrix.getEntry(i, i);
            }
        } else {
            ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
            for (int i2 = 0; i2 < columnDimension; i2++) {
                arrayRealVector.set(0.0d);
                arrayRealVector.setEntry(i2, 1.0d);
                dArr[i2] = realLinearOperator.operate(arrayRealVector).getEntry(i2);
            }
        }
        return new JacobiPreconditioner(dArr, false);
    }

    @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
    public int getColumnDimension() {
        return this.f108505e.getDimension();
    }

    @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.AnyMatrix
    public int getRowDimension() {
        return this.f108505e.getDimension();
    }

    @Override // org.apache.commons.math3.linear.RealLinearOperator, org.apache.commons.math3.linear.RealMatrix
    public RealVector operate(RealVector realVector) {
        return new ArrayRealVector(MathArrays.ebeDivide(realVector.toArray(), this.f108505e.toArray()), false);
    }

    public RealLinearOperator sqrt() {
        return new C19165a(this.f108505e.map((UnivariateFunction) new Sqrt()));
    }
}
