package com.sunia.HTREnginev2;

import java.util.Arrays;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.util.MathArrays;

/* renamed from: com.sunia.HTREnginev2.a8 */
/* loaded from: classes12.dex */
public class C13475a8<T extends RealFieldElement<T>> extends AbstractFieldStepInterpolator<T> {

    /* renamed from: g */
    public T f64430g;

    /* renamed from: h */
    public final FieldODEStateAndDerivative<T> f64431h;

    /* renamed from: i */
    public final T[] f64432i;

    /* renamed from: j */
    public final Array2DRowFieldMatrix<T> f64433j;

    public C13475a8(T t, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T[] tArr, Array2DRowFieldMatrix<T> array2DRowFieldMatrix, boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldEquationsMapper<T> fieldEquationsMapper) {
        this(t, fieldODEStateAndDerivative, tArr, array2DRowFieldMatrix, z, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldEquationsMapper);
    }

    /* renamed from: b */
    public static <S extends RealFieldElement<S>> FieldODEStateAndDerivative<S> m52978b(FieldODEStateAndDerivative<S> fieldODEStateAndDerivative, S s, S s2, S[] sArr, Array2DRowFieldMatrix<S> array2DRowFieldMatrix) {
        int i;
        RealFieldElement realFieldElement = (RealFieldElement) s.subtract(fieldODEStateAndDerivative.getTime());
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.divide(s2);
        RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(s.getField(), sArr.length);
        Arrays.fill(realFieldElementArr, s.getField().getZero());
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(s.getField(), sArr.length);
        Arrays.fill(realFieldElementArr2, s.getField().getZero());
        S[][] dataRef = array2DRowFieldMatrix.getDataRef();
        int length = dataRef.length;
        while (true) {
            length--;
            i = 0;
            if (length < 0) {
                break;
            }
            int i2 = length + 2;
            S[] sArr2 = dataRef[length];
            RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement2.pow(i2);
            while (i < sArr2.length) {
                RealFieldElement realFieldElement4 = (RealFieldElement) sArr2[i].multiply(realFieldElement3);
                realFieldElementArr[i] = (RealFieldElement) realFieldElementArr[i].add(realFieldElement4);
                realFieldElementArr2[i] = (RealFieldElement) realFieldElementArr2[i].add((RealFieldElement) realFieldElement4.multiply(i2));
                i++;
            }
        }
        S[] state = fieldODEStateAndDerivative.getState();
        while (i < realFieldElementArr.length) {
            RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElementArr[i].add((RealFieldElement) sArr[i].multiply(realFieldElement2));
            realFieldElementArr[i] = realFieldElement5;
            state[i] = (RealFieldElement) state[i].add(realFieldElement5);
            realFieldElementArr2[i] = (RealFieldElement) ((RealFieldElement) realFieldElementArr2[i].add((RealFieldElement) sArr[i].multiply(realFieldElement2))).divide(realFieldElement);
            i++;
        }
        return new FieldODEStateAndDerivative<>(s, state, realFieldElementArr2);
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C13475a8<T> create(boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new C13475a8<>(this.f64430g, this.f64431h, this.f64432i, this.f64433j, z, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t, T t2, T t3, T t4) {
        return m52978b(this.f64431h, t, this.f64430g, this.f64432i, this.f64433j);
    }

    public C13475a8(T t, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T[] tArr, Array2DRowFieldMatrix<T> array2DRowFieldMatrix, boolean z, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative5, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(z, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldODEStateAndDerivative5, fieldEquationsMapper);
        this.f64430g = t;
        this.f64431h = fieldODEStateAndDerivative;
        this.f64432i = (T[]) ((RealFieldElement[]) tArr.clone());
        this.f64433j = new Array2DRowFieldMatrix<>((FieldElement[][]) array2DRowFieldMatrix.getData(), false);
    }
}
