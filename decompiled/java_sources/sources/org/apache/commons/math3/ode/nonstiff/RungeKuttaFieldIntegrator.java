package org.apache.commons.math3.ode.nonstiff;

import com.sunia.HTREnginev2.hvl;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.AbstractFieldIntegrator;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.FirstOrderFieldDifferentialEquations;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public abstract class RungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends AbstractFieldIntegrator<T> implements FieldButcherArrayProvider<T> {

    /* renamed from: n */
    public final T[] f109006n;

    /* renamed from: o */
    public final T[][] f109007o;

    /* renamed from: p */
    public final T[] f109008p;

    /* renamed from: q */
    public final T f109009q;

    public RungeKuttaFieldIntegrator(Field<T> field, String str, T t) {
        super(field, str);
        this.f109006n = getC();
        this.f109007o = getA();
        this.f109008p = getB();
        this.f109009q = (T) t.abs();
    }

    public abstract hvl<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper);

    public T fraction(int i, int i2) {
        return (T) ((RealFieldElement) getField().getZero().add(i)).divide(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x01fb, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r0.subtract(r22)).getReal() >= 0.0d) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0210, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x020e, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x020c, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r0.subtract(r22)).getReal() <= 0.0d) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v36, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v55, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v13, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r2v26, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.ode.FieldODEStateAndDerivative<T> integrate(org.apache.commons.math3.ode.FieldExpandableODE<T> r20, org.apache.commons.math3.ode.FieldODEState<T> r21, T r22) throws org.apache.commons.math3.exception.NumberIsTooSmallException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.exception.MaxCountExceededException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.ode.nonstiff.RungeKuttaFieldIntegrator.integrate(org.apache.commons.math3.ode.FieldExpandableODE, org.apache.commons.math3.ode.FieldODEState, org.apache.commons.math3.RealFieldElement):org.apache.commons.math3.ode.FieldODEStateAndDerivative");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[] singleStep(FirstOrderFieldDifferentialEquations<T> firstOrderFieldDifferentialEquations, T t, T[] tArr, T t2) {
        T[] tArr2 = (T[]) ((RealFieldElement[]) tArr.clone());
        int i = 1;
        int length = this.f109006n.length + 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(getField(), length, -1);
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) tArr.clone();
        RealFieldElement realFieldElement = (RealFieldElement) t2.subtract(t);
        int i2 = 0;
        realFieldElementArr[0] = firstOrderFieldDifferentialEquations.computeDerivatives(t, tArr2);
        int i3 = 1;
        while (i3 < length) {
            int i4 = i2;
            while (i4 < tArr.length) {
                int i5 = i3 - 1;
                RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElementArr[i2][i4].multiply(this.f109007o[i5][i2]);
                for (int i6 = i; i6 < i3; i6++) {
                    realFieldElement2 = (RealFieldElement) realFieldElement2.add((RealFieldElement) realFieldElementArr[i6][i4].multiply(this.f109007o[i5][i6]));
                }
                realFieldElementArr2[i4] = (RealFieldElement) tArr2[i4].add((Decimal64) realFieldElement.multiply(realFieldElement2));
                i4++;
                i = 1;
                i2 = 0;
            }
            realFieldElementArr[i3] = firstOrderFieldDifferentialEquations.computeDerivatives((RealFieldElement) t.add(realFieldElement.multiply(this.f109006n[i3 - 1])), realFieldElementArr2);
            i3++;
            i = 1;
            i2 = 0;
        }
        for (int i7 = 0; i7 < tArr.length; i7++) {
            RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElementArr[0][i7].multiply(this.f109008p[0]);
            for (int i8 = 1; i8 < length; i8++) {
                realFieldElement3 = (RealFieldElement) realFieldElement3.add((RealFieldElement) realFieldElementArr[i8][i7].multiply(this.f109008p[i8]));
            }
            tArr2[i7] = (RealFieldElement) tArr2[i7].add((Decimal64) realFieldElement.multiply(realFieldElement3));
        }
        return tArr2;
    }
}
