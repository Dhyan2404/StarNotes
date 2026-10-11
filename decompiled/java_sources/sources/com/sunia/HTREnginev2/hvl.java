package com.sunia.HTREnginev2;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public abstract class hvl<T extends RealFieldElement<T>> extends AbstractFieldStepInterpolator<T> {

    /* renamed from: g */
    public final Field<T> f72597g;

    /* renamed from: h */
    public final T[][] f72598h;

    public hvl(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(z, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        this.f72597g = field;
        this.f72598h = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(field, tArr.length, -1));
        for (int i = 0; i < tArr.length; i++) {
            ((T[][]) this.f72598h)[i] = (RealFieldElement[]) tArr[i].clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final T[] m54634a(T[] tArr, T... tArr2) {
        for (int i = 0; i < tArr.length; i++) {
            for (int i2 = 0; i2 < tArr2.length; i2++) {
                tArr[i] = (RealFieldElement) tArr[i].add((Decimal64) tArr2[i2].multiply(this.f72598h[i2][i]));
            }
        }
        return tArr;
    }

    /* renamed from: b */
    public abstract hvl<T> mo53934b(Field<T> field, boolean z, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper);

    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public hvl<T> create(boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return mo53934b(this.f72597g, z, this.f72598h, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* renamed from: d */
    public T[] m54636d(T... tArr) {
        return m54634a(getCurrentState().getState(), tArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public T[] m54637e(T... tArr) {
        return (T[]) m54634a((RealFieldElement[]) MathArrays.buildArray(this.f72597g, this.f72598h[0].length), tArr);
    }

    /* renamed from: f */
    public final T[] m54638f(T... tArr) {
        return m54634a(getPreviousState().getState(), tArr);
    }
}
