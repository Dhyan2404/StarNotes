package org.apache.commons.math3.fitting.leastsquares;

import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class AbstractEvaluation implements LeastSquaresProblem.Evaluation {

    /* renamed from: a */
    public final int f108145a;

    public AbstractEvaluation(int i) {
        this.f108145a = i;
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public double getCost() {
        RealVector arrayRealVector = new ArrayRealVector(getResiduals());
        return FastMath.sqrt(arrayRealVector.dotProduct(arrayRealVector));
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealMatrix getCovariances(double d) {
        RealMatrix jacobian = getJacobian();
        return new QRDecomposition(jacobian.transpose().multiply(jacobian), d).getSolver().getInverse();
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public double getRMS() {
        double cost = getCost();
        return FastMath.sqrt((cost * cost) / this.f108145a);
    }

    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem.Evaluation
    public RealVector getSigma(double d) {
        RealMatrix covariances = getCovariances(d);
        int columnDimension = covariances.getColumnDimension();
        ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
        for (int i = 0; i < columnDimension; i++) {
            arrayRealVector.setEntry(i, FastMath.sqrt(covariances.getEntry(i, i)));
        }
        return arrayRealVector;
    }
}
