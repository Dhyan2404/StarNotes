package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.ArrayFieldVector;
import org.apache.commons.math3.linear.FieldDecompositionSolver;
import org.apache.commons.math3.linear.FieldLUDecomposition;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class AdamsNordsieckFieldTransformer<T extends RealFieldElement<T>> {

    /* renamed from: d */
    public static final Map<Integer, Map<Field<? extends RealFieldElement<?>>, AdamsNordsieckFieldTransformer<? extends RealFieldElement<?>>>> f108866d = new HashMap();

    /* renamed from: a */
    public final Field<T> f108867a;

    /* renamed from: b */
    public final Array2DRowFieldMatrix<T> f108868b;

    /* renamed from: c */
    public final T[] f108869c;

    public AdamsNordsieckFieldTransformer(Field<T> field, int i) {
        this.f108867a = field;
        int i2 = i - 1;
        FieldMatrix<T> m67890a = m67890a(i2);
        FieldDecompositionSolver solver = new FieldLUDecomposition(m67890a).getSolver();
        RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(field, i2);
        Arrays.fill(realFieldElementArr, field.getOne());
        this.f108869c = (T[]) ((RealFieldElement[]) solver.solve(new ArrayFieldVector((FieldElement[]) realFieldElementArr, false)).toArray());
        T[][] data = m67890a.getData();
        for (int length = data.length - 1; length > 0; length--) {
            data[length] = data[length - 1];
        }
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(field, i2);
        data[0] = realFieldElementArr2;
        Arrays.fill(realFieldElementArr2, field.getZero());
        this.f108868b = new Array2DRowFieldMatrix<>(solver.solve(new Array2DRowFieldMatrix((FieldElement[][]) data, false)).getData());
    }

    public static <T extends RealFieldElement<T>> AdamsNordsieckFieldTransformer<T> getInstance(Field<T> field, int i) {
        AdamsNordsieckFieldTransformer<T> adamsNordsieckFieldTransformer;
        Map<Integer, Map<Field<? extends RealFieldElement<?>>, AdamsNordsieckFieldTransformer<? extends RealFieldElement<?>>>> map = f108866d;
        synchronized (map) {
            Map<Field<? extends RealFieldElement<?>>, AdamsNordsieckFieldTransformer<? extends RealFieldElement<?>>> map2 = map.get(Integer.valueOf(i));
            if (map2 == null) {
                map2 = new HashMap<>();
                map.put(Integer.valueOf(i), map2);
            }
            adamsNordsieckFieldTransformer = (AdamsNordsieckFieldTransformer) map2.get(field);
            if (adamsNordsieckFieldTransformer == null) {
                adamsNordsieckFieldTransformer = new AdamsNordsieckFieldTransformer<>(field, i);
                map2.put(field, adamsNordsieckFieldTransformer);
            }
        }
        return adamsNordsieckFieldTransformer;
    }

    /* renamed from: a */
    public final FieldMatrix<T> m67890a(int i) {
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(this.f108867a, i, i);
        for (int i2 = 1; i2 <= realFieldElementArr.length; i2++) {
            RealFieldElement[] realFieldElementArr2 = realFieldElementArr[i2 - 1];
            int i3 = -i2;
            RealFieldElement realFieldElement = (RealFieldElement) this.f108867a.getZero().add(i3);
            int i4 = 1;
            while (i4 <= realFieldElementArr2.length) {
                int i5 = i4 - 1;
                i4++;
                realFieldElementArr2[i5] = (RealFieldElement) realFieldElement.multiply(i4);
                realFieldElement = (RealFieldElement) realFieldElement.multiply(i3);
            }
        }
        return new Array2DRowFieldMatrix((FieldElement[][]) realFieldElementArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t, T[] tArr, T[][] tArr2, T[][] tArr3) {
        Field<T> field = this.f108867a;
        T[] tArr4 = this.f108869c;
        int i = 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(field, tArr4.length + 1, tArr4.length + 1);
        int i2 = 0;
        RealFieldElement[][] realFieldElementArr2 = (RealFieldElement[][]) MathArrays.buildArray(this.f108867a, this.f108869c.length + 1, tArr2[0].length);
        T[] tArr5 = tArr2[0];
        T[] tArr6 = tArr3[0];
        int i3 = 1;
        while (i3 < tArr2.length) {
            RealFieldElement realFieldElement = (RealFieldElement) tArr[i3].subtract(tArr[i2]);
            RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.divide(t);
            RealFieldElement realFieldElement3 = (RealFieldElement) t.reciprocal();
            int i4 = i3 * 2;
            int i5 = i4 - 2;
            RealFieldElement[] realFieldElementArr3 = realFieldElementArr[i5];
            int i6 = i4 - i;
            RealFieldElement[] realFieldElementArr4 = i6 < realFieldElementArr.length ? realFieldElementArr[i6] : null;
            while (i2 < realFieldElementArr3.length) {
                realFieldElement3 = (RealFieldElement) realFieldElement3.multiply(realFieldElement2);
                realFieldElementArr3[i2] = (RealFieldElement) realFieldElement.multiply(realFieldElement3);
                if (realFieldElementArr4 != null) {
                    realFieldElementArr4[i2] = (RealFieldElement) realFieldElement3.multiply(i2 + 2);
                }
                i2++;
            }
            T[] tArr7 = tArr2[i3];
            T[] tArr8 = tArr3[i3];
            RealFieldElement[] realFieldElementArr5 = realFieldElementArr2[i5];
            RealFieldElement[] realFieldElementArr6 = i6 < realFieldElementArr2.length ? realFieldElementArr2[i6] : null;
            for (int i7 = 0; i7 < tArr7.length; i7++) {
                realFieldElementArr5[i7] = (RealFieldElement) ((RealFieldElement) tArr7[i7].subtract(tArr5[i7])).subtract((RealFieldElement) realFieldElement.multiply(tArr6[i7]));
                if (realFieldElementArr6 != null) {
                    realFieldElementArr6[i7] = (RealFieldElement) tArr8[i7].subtract(tArr6[i7]);
                }
            }
            i3++;
            i = 1;
            i2 = 0;
        }
        FieldMatrix solve = new FieldLUDecomposition(new Array2DRowFieldMatrix((FieldElement[][]) realFieldElementArr, false)).getSolver().solve(new Array2DRowFieldMatrix((FieldElement[][]) realFieldElementArr2, false));
        Array2DRowFieldMatrix<T> array2DRowFieldMatrix = (Array2DRowFieldMatrix<T>) new Array2DRowFieldMatrix(this.f108867a, solve.getRowDimension() - 1, solve.getColumnDimension());
        for (int i8 = 0; i8 < array2DRowFieldMatrix.getRowDimension(); i8++) {
            for (int i9 = 0; i9 < array2DRowFieldMatrix.getColumnDimension(); i9++) {
                array2DRowFieldMatrix.setEntry(i8, i9, solve.getEntry(i8, i9));
            }
        }
        return array2DRowFieldMatrix;
    }

    public Array2DRowFieldMatrix<T> updateHighOrderDerivativesPhase1(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        return this.f108868b.multiply(array2DRowFieldMatrix);
    }

    public void updateHighOrderDerivativesPhase2(T[] tArr, T[] tArr2, Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        T[][] dataRef = array2DRowFieldMatrix.getDataRef();
        for (int i = 0; i < dataRef.length; i++) {
            FieldElement[] fieldElementArr = dataRef[i];
            T t = this.f108869c[i];
            for (int i2 = 0; i2 < fieldElementArr.length; i2++) {
                fieldElementArr[i2] = (RealFieldElement) fieldElementArr[i2].add(t.multiply(tArr[i2].subtract(tArr2[i2])));
            }
        }
    }
}
