package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.linear.FieldMatrix;

/* loaded from: classes12.dex */
public class AdamsBashforthFieldIntegrator<T extends RealFieldElement<T>> extends AdamsFieldIntegrator<T> {

    /* renamed from: x */
    public static final String f108850x = "Adams-Bashforth";

    public AdamsBashforthFieldIntegrator(Field<T> field, int i, double d, double d2, double d3, double d4) throws NumberIsTooSmallException {
        super(field, "Adams-Bashforth", i, i, d, d2, d3, d4);
    }

    /* renamed from: a */
    public final T m67886a(T[] tArr, T[] tArr2, T[] tArr3, FieldMatrix<T> fieldMatrix) {
        RealFieldElement realFieldElement;
        double d;
        T zero = getField().getZero();
        int i = 0;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return (T) ((RealFieldElement) zero.divide(i2)).sqrt();
            }
            RealFieldElement realFieldElement2 = (RealFieldElement) tArr2[i].abs();
            if (this.vecAbsoluteTolerance == null) {
                realFieldElement = (RealFieldElement) realFieldElement2.multiply(this.scalRelativeTolerance);
                d = this.scalAbsoluteTolerance;
            } else {
                realFieldElement = (RealFieldElement) realFieldElement2.multiply(this.vecRelativeTolerance[i]);
                d = this.vecAbsoluteTolerance[i];
            }
            RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement.add(d);
            T zero2 = getField().getZero();
            int i3 = fieldMatrix.getRowDimension() % 2 == 0 ? -1 : 1;
            for (int rowDimension = fieldMatrix.getRowDimension() - 1; rowDimension >= 0; rowDimension--) {
                zero2 = (T) zero2.add(fieldMatrix.getEntry(rowDimension, i).multiply(i3));
                i3 = -i3;
            }
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr2[i].subtract(tArr[i])).add((RealFieldElement) zero2.subtract(tArr3[i]))).divide(realFieldElement3);
            zero = (T) zero.add(realFieldElement4.multiply(realFieldElement4));
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x01c0, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r24)).getReal() >= 0.0d) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x01d5, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01d3, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01d1, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r7.subtract(r24)).getReal() <= 0.0d) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [int] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r15v1, types: [T extends org.apache.commons.math3.RealFieldElement<T>[], org.apache.commons.math3.RealFieldElement[]] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.apache.commons.math3.ode.nonstiff.AdamsBashforthFieldIntegrator<T extends org.apache.commons.math3.RealFieldElement<T>>, org.apache.commons.math3.ode.MultistepFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdamsBashforthFieldIntegrator, org.apache.commons.math3.ode.nonstiff.AdaptiveStepsizeFieldIntegrator, org.apache.commons.math3.ode.AbstractFieldIntegrator] */
    /* JADX WARN: Type inference failed for: r5v13, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v18, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v28, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r7v8, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    @Override // org.apache.commons.math3.ode.nonstiff.AdamsFieldIntegrator, org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.ode.FieldODEStateAndDerivative<T> integrate(org.apache.commons.math3.ode.FieldExpandableODE<T> r22, org.apache.commons.math3.ode.FieldODEState<T> r23, T r24) throws org.apache.commons.math3.exception.NumberIsTooSmallException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.exception.MaxCountExceededException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.ode.nonstiff.AdamsBashforthFieldIntegrator.integrate(org.apache.commons.math3.ode.FieldExpandableODE, org.apache.commons.math3.ode.FieldODEState, org.apache.commons.math3.RealFieldElement):org.apache.commons.math3.ode.FieldODEStateAndDerivative");
    }

    public AdamsBashforthFieldIntegrator(Field<T> field, int i, double d, double d2, double[] dArr, double[] dArr2) throws IllegalArgumentException {
        super(field, "Adams-Bashforth", i, i, d, d2, dArr, dArr2);
    }
}
