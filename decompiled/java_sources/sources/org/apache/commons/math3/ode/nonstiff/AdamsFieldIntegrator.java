package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.FieldExpandableODE;
import org.apache.commons.math3.ode.FieldODEState;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.MultistepFieldIntegrator;

/* loaded from: classes12.dex */
public abstract class AdamsFieldIntegrator<T extends RealFieldElement<T>> extends MultistepFieldIntegrator<T> {

    /* renamed from: w */
    public final AdamsNordsieckFieldTransformer<T> f108852w;

    public AdamsFieldIntegrator(Field<T> field, String str, int i, int i2, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super(field, str, i, i2, d, d2, d3, d4);
        this.f108852w = AdamsNordsieckFieldTransformer.getInstance(field, i);
    }

    @Override // org.apache.commons.math3.ode.MultistepFieldIntegrator
    public Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t, T[] tArr, T[][] tArr2, T[][] tArr3) {
        return this.f108852w.initializeHighOrderDerivatives(t, tArr, tArr2, tArr3);
    }

    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    public abstract FieldODEStateAndDerivative<T> integrate(FieldExpandableODE<T> fieldExpandableODE, FieldODEState<T> fieldODEState, T t) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;

    public Array2DRowFieldMatrix<T> updateHighOrderDerivativesPhase1(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        return this.f108852w.updateHighOrderDerivativesPhase1(array2DRowFieldMatrix);
    }

    public void updateHighOrderDerivativesPhase2(T[] tArr, T[] tArr2, Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        this.f108852w.updateHighOrderDerivativesPhase2(tArr, tArr2, array2DRowFieldMatrix);
    }

    public AdamsFieldIntegrator(Field<T> field, String str, int i, int i2, double d, double d2, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, str, i, i2, d, d2, dArr, dArr2);
        this.f108852w = AdamsNordsieckFieldTransformer.getInstance(field, i);
    }
}
