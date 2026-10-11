package org.apache.commons.math3.ode.nonstiff;

import com.sunia.HTREnginev2.hvl;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

/* loaded from: classes12.dex */
public abstract class EmbeddedRungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends AdaptiveStepsizeFieldIntegrator<T> implements FieldButcherArrayProvider<T> {

    /* renamed from: q */
    public final int f108948q;

    /* renamed from: r */
    public final T[] f108949r;

    /* renamed from: s */
    public final T[][] f108950s;

    /* renamed from: t */
    public final T[] f108951t;

    /* renamed from: u */
    public final T f108952u;

    /* renamed from: v */
    public T f108953v;

    /* renamed from: w */
    public T f108954w;

    /* renamed from: x */
    public T f108955x;

    /* JADX WARN: Multi-variable type inference failed */
    public EmbeddedRungeKuttaFieldIntegrator(Field<T> field, String str, int i, double d, double d2, double d3, double d4) {
        super(field, str, d, d2, d3, d4);
        this.f108948q = i;
        this.f108949r = (T[]) getC();
        this.f108950s = (T[][]) getA();
        this.f108951t = (T[]) getB();
        this.f108952u = (T) field.getOne().divide(-getOrder());
        setSafety((RealFieldElement) field.getZero().add(0.9d));
        setMinReduction((RealFieldElement) field.getZero().add(0.2d));
        setMaxGrowth((RealFieldElement) field.getZero().add(10.0d));
    }

    public abstract hvl<T> createInterpolator(boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper);

    public abstract T estimateError(T[][] tArr, T[] tArr2, T[] tArr3, T t);

    public T fraction(int i, int i2) {
        return (T) ((RealFieldElement) getField().getOne().multiply(i)).divide(i2);
    }

    public T getMaxGrowth() {
        return this.f108955x;
    }

    public T getMinReduction() {
        return this.f108954w;
    }

    public abstract int getOrder();

    public T getSafety() {
        return this.f108953v;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x034e, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r1.subtract(r25)).getReal() >= 0.0d) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0363, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0361, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x035f, code lost:
    
        if (((org.apache.commons.math3.RealFieldElement) r1.subtract(r25)).getReal() <= 0.0d) goto L75;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v44, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v72, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v18, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v26, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v63, types: [org.apache.commons.math3.FieldElement, org.apache.commons.math3.RealFieldElement] */
    @Override // org.apache.commons.math3.ode.FirstOrderFieldIntegrator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.ode.FieldODEStateAndDerivative<T> integrate(org.apache.commons.math3.ode.FieldExpandableODE<T> r23, org.apache.commons.math3.ode.FieldODEState<T> r24, T r25) throws org.apache.commons.math3.exception.NumberIsTooSmallException, org.apache.commons.math3.exception.DimensionMismatchException, org.apache.commons.math3.exception.MaxCountExceededException, org.apache.commons.math3.exception.NoBracketingException {
        /*
            Method dump skipped, instructions count: 917
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaFieldIntegrator.integrate(org.apache.commons.math3.ode.FieldExpandableODE, org.apache.commons.math3.ode.FieldODEState, org.apache.commons.math3.RealFieldElement):org.apache.commons.math3.ode.FieldODEStateAndDerivative");
    }

    public void setMaxGrowth(T t) {
        this.f108955x = t;
    }

    public void setMinReduction(T t) {
        this.f108954w = t;
    }

    public void setSafety(T t) {
        this.f108953v = t;
    }

    public T fraction(double d, double d2) {
        return (T) ((RealFieldElement) getField().getOne().multiply(d)).divide(d2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EmbeddedRungeKuttaFieldIntegrator(Field<T> field, String str, int i, double d, double d2, double[] dArr, double[] dArr2) {
        super(field, str, d, d2, dArr, dArr2);
        this.f108948q = i;
        this.f108949r = (T[]) getC();
        this.f108950s = (T[][]) getA();
        this.f108951t = (T[]) getB();
        this.f108952u = (T) field.getOne().divide(-getOrder());
        setSafety((RealFieldElement) field.getZero().add(0.9d));
        setMinReduction((RealFieldElement) field.getZero().add(0.2d));
        setMaxGrowth((RealFieldElement) field.getZero().add(10.0d));
    }
}
