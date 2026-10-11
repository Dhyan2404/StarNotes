package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.MultistepIntegrator;

/* loaded from: classes12.dex */
public abstract class AdamsIntegrator extends MultistepIntegrator {

    /* renamed from: o */
    public final AdamsNordsieckTransformer f108853o;

    public AdamsIntegrator(String str, int i, int i2, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super(str, i, i2, d, d2, d3, d4);
        this.f108853o = AdamsNordsieckTransformer.getInstance(i);
    }

    @Override // org.apache.commons.math3.ode.MultistepIntegrator
    public Array2DRowRealMatrix initializeHighOrderDerivatives(double d, double[] dArr, double[][] dArr2, double[][] dArr3) {
        return this.f108853o.initializeHighOrderDerivatives(d, dArr, dArr2, dArr3);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeIntegrator, org.apache.commons.math3.ode.AbstractIntegrator
    public abstract void integrate(ExpandableStatefulODE expandableStatefulODE, double d) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public Array2DRowRealMatrix updateHighOrderDerivativesPhase1(Array2DRowRealMatrix array2DRowRealMatrix) {
        return this.f108853o.updateHighOrderDerivativesPhase1(array2DRowRealMatrix);
    }

    public void updateHighOrderDerivativesPhase2(double[] dArr, double[] dArr2, Array2DRowRealMatrix array2DRowRealMatrix) {
        this.f108853o.updateHighOrderDerivativesPhase2(dArr, dArr2, array2DRowRealMatrix);
    }

    public AdamsIntegrator(String str, int i, int i2, double d, double d2, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(str, i, i2, d, d2, dArr, dArr2);
        this.f108853o = AdamsNordsieckTransformer.getInstance(i);
    }
}
