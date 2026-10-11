package org.apache.commons.math3.ode;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class FieldODEState<T extends RealFieldElement<T>> {

    /* renamed from: a */
    public final T f108757a;

    /* renamed from: b */
    public final T[] f108758b;

    /* renamed from: c */
    public final T[][] f108759c;

    public FieldODEState(T t, T[] tArr) {
        this(t, tArr, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[][] copy(Field<T> field, T[][] tArr) {
        if (tArr == null) {
            return null;
        }
        T[][] tArr2 = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(field, tArr.length, -1));
        for (int i = 0; i < tArr.length; i++) {
            tArr2[i] = (RealFieldElement[]) tArr[i].clone();
        }
        return tArr2;
    }

    public int getNumberOfSecondaryStates() {
        T[][] tArr = this.f108759c;
        if (tArr == null) {
            return 0;
        }
        return tArr.length;
    }

    public T[] getSecondaryState(int i) {
        return (T[]) ((RealFieldElement[]) (i == 0 ? this.f108758b.clone() : this.f108759c[i - 1].clone()));
    }

    public int getSecondaryStateDimension(int i) {
        return i == 0 ? this.f108758b.length : this.f108759c[i - 1].length;
    }

    public T[] getState() {
        return (T[]) ((RealFieldElement[]) this.f108758b.clone());
    }

    public int getStateDimension() {
        return this.f108758b.length;
    }

    public T getTime() {
        return this.f108757a;
    }

    public FieldODEState(T t, T[] tArr, T[][] tArr2) {
        this.f108757a = t;
        this.f108758b = (T[]) ((RealFieldElement[]) tArr.clone());
        this.f108759c = copy(t.getField(), tArr2);
    }
}
