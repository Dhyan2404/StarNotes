package org.apache.commons.math3.ode;

import org.apache.commons.math3.RealFieldElement;

/* loaded from: classes12.dex */
public class FieldODEStateAndDerivative<T extends RealFieldElement<T>> extends FieldODEState<T> {

    /* renamed from: d */
    public final T[] f108760d;

    /* renamed from: e */
    public final T[][] f108761e;

    public FieldODEStateAndDerivative(T t, T[] tArr, T[] tArr2) {
        this(t, tArr, tArr2, null, null);
    }

    public T[] getDerivative() {
        return (T[]) ((RealFieldElement[]) this.f108760d.clone());
    }

    public T[] getSecondaryDerivative(int i) {
        return (T[]) ((RealFieldElement[]) (i == 0 ? this.f108760d.clone() : this.f108761e[i - 1].clone()));
    }

    public FieldODEStateAndDerivative(T t, T[] tArr, T[] tArr2, T[][] tArr3, T[][] tArr4) {
        super(t, tArr, tArr3);
        this.f108760d = (T[]) ((RealFieldElement[]) tArr2.clone());
        this.f108761e = copy(t.getField(), tArr4);
    }
}
