package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.MathUnsupportedOperationException;

/* loaded from: classes12.dex */
public class DefaultIterativeLinearSolverEvent extends IterativeLinearSolverEvent {
    private static final long serialVersionUID = 20120129;

    /* renamed from: b */
    private final RealVector f108474b;

    /* renamed from: r */
    private final RealVector f108475r;
    private final double rnorm;

    /* renamed from: x */
    private final RealVector f108476x;

    public DefaultIterativeLinearSolverEvent(Object obj, int i, RealVector realVector, RealVector realVector2, RealVector realVector3, double d) {
        super(obj, i);
        this.f108476x = realVector;
        this.f108474b = realVector2;
        this.f108475r = realVector3;
        this.rnorm = d;
    }

    @Override // org.apache.commons.math3.linear.IterativeLinearSolverEvent
    public double getNormOfResidual() {
        return this.rnorm;
    }

    @Override // org.apache.commons.math3.linear.IterativeLinearSolverEvent
    public RealVector getResidual() {
        RealVector realVector = this.f108475r;
        if (realVector != null) {
            return realVector;
        }
        throw new MathUnsupportedOperationException();
    }

    @Override // org.apache.commons.math3.linear.IterativeLinearSolverEvent
    public RealVector getRightHandSideVector() {
        return this.f108474b;
    }

    @Override // org.apache.commons.math3.linear.IterativeLinearSolverEvent
    public RealVector getSolution() {
        return this.f108476x;
    }

    @Override // org.apache.commons.math3.linear.IterativeLinearSolverEvent
    public boolean providesResidual() {
        return this.f108475r != null;
    }

    public DefaultIterativeLinearSolverEvent(Object obj, int i, RealVector realVector, RealVector realVector2, double d) {
        super(obj, i);
        this.f108476x = realVector;
        this.f108474b = realVector2;
        this.f108475r = null;
        this.rnorm = d;
    }
}
