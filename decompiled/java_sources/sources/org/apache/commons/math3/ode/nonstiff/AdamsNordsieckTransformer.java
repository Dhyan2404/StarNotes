package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayFieldVector;
import org.apache.commons.math3.linear.FieldDecompositionSolver;
import org.apache.commons.math3.linear.FieldLUDecomposition;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;

/* loaded from: classes12.dex */
public class AdamsNordsieckTransformer {

    /* renamed from: c */
    public static final Map<Integer, AdamsNordsieckTransformer> f108870c = new HashMap();

    /* renamed from: a */
    public final Array2DRowRealMatrix f108871a;

    /* renamed from: b */
    public final double[] f108872b;

    public AdamsNordsieckTransformer(int i) {
        int i2 = i - 1;
        FieldMatrix<BigFraction> m67891a = m67891a(i2);
        FieldDecompositionSolver solver = new FieldLUDecomposition(m67891a).getSolver();
        BigFraction[] bigFractionArr = new BigFraction[i2];
        Arrays.fill(bigFractionArr, BigFraction.ONE);
        BigFraction[] bigFractionArr2 = (BigFraction[]) solver.solve(new ArrayFieldVector((FieldElement[]) bigFractionArr, false)).toArray();
        BigFraction[][] data = m67891a.getData();
        for (int length = data.length - 1; length > 0; length--) {
            data[length] = data[length - 1];
        }
        BigFraction[] bigFractionArr3 = new BigFraction[i2];
        data[0] = bigFractionArr3;
        Arrays.fill(bigFractionArr3, BigFraction.ZERO);
        this.f108871a = MatrixUtils.bigFractionMatrixToRealMatrix(solver.solve(new Array2DRowFieldMatrix((FieldElement[][]) data, false)));
        this.f108872b = new double[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.f108872b[i3] = bigFractionArr2[i3].doubleValue();
        }
    }

    public static AdamsNordsieckTransformer getInstance(int i) {
        AdamsNordsieckTransformer adamsNordsieckTransformer;
        Map<Integer, AdamsNordsieckTransformer> map = f108870c;
        synchronized (map) {
            adamsNordsieckTransformer = map.get(Integer.valueOf(i));
            if (adamsNordsieckTransformer == null) {
                adamsNordsieckTransformer = new AdamsNordsieckTransformer(i);
                map.put(Integer.valueOf(i), adamsNordsieckTransformer);
            }
        }
        return adamsNordsieckTransformer;
    }

    /* renamed from: a */
    public final FieldMatrix<BigFraction> m67891a(int i) {
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i, i);
        for (int i2 = 1; i2 <= bigFractionArr.length; i2++) {
            BigFraction[] bigFractionArr2 = bigFractionArr[i2 - 1];
            int i3 = -i2;
            int i4 = 1;
            int i5 = i3;
            while (i4 <= bigFractionArr2.length) {
                int i6 = i4 - 1;
                i4++;
                bigFractionArr2[i6] = new BigFraction(i5 * i4);
                i5 *= i3;
            }
        }
        return new Array2DRowFieldMatrix((FieldElement[][]) bigFractionArr, false);
    }

    @Deprecated
    public int getNSteps() {
        return this.f108872b.length;
    }

    public Array2DRowRealMatrix initializeHighOrderDerivatives(double d, double[] dArr, double[][] dArr2, double[][] dArr3) {
        double d2;
        double[] dArr4 = this.f108872b;
        int i = 1;
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr4.length + 1, dArr4.length + 1);
        char c = 0;
        double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f108872b.length + 1, dArr2[0].length);
        double[] dArr7 = dArr2[0];
        double[] dArr8 = dArr3[0];
        int i2 = 1;
        while (i2 < dArr2.length) {
            double d3 = dArr[i2] - dArr[c];
            double d4 = d3 / d;
            double d5 = 1.0d / d;
            int i3 = i2 * 2;
            int i4 = i3 - 2;
            double[] dArr9 = dArr5[i4];
            int i5 = i3 - i;
            double[] dArr10 = i5 < dArr5.length ? dArr5[i5] : null;
            double[][] dArr11 = dArr5;
            double[] dArr12 = dArr8;
            int i6 = 0;
            while (i6 < dArr9.length) {
                d5 *= d4;
                dArr9[i6] = d3 * d5;
                if (dArr10 != null) {
                    d2 = d4;
                    dArr10[i6] = (i6 + 2) * d5;
                } else {
                    d2 = d4;
                }
                i6++;
                d4 = d2;
            }
            double[] dArr13 = dArr2[i2];
            double[] dArr14 = dArr3[i2];
            double[] dArr15 = dArr6[i4];
            double[] dArr16 = i5 < dArr6.length ? dArr6[i5] : null;
            for (int i7 = 0; i7 < dArr13.length; i7++) {
                dArr15[i7] = (dArr13[i7] - dArr7[i7]) - (dArr12[i7] * d3);
                if (dArr16 != null) {
                    dArr16[i7] = dArr14[i7] - dArr12[i7];
                }
            }
            i2++;
            dArr5 = dArr11;
            dArr8 = dArr12;
            c = 0;
            i = 1;
        }
        RealMatrix solve = new QRDecomposition(new Array2DRowRealMatrix(dArr5, false)).getSolver().solve(new Array2DRowRealMatrix(dArr6, false));
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(solve.getRowDimension() - 1, solve.getColumnDimension());
        for (int i8 = 0; i8 < array2DRowRealMatrix.getRowDimension(); i8++) {
            for (int i9 = 0; i9 < array2DRowRealMatrix.getColumnDimension(); i9++) {
                array2DRowRealMatrix.setEntry(i8, i9, solve.getEntry(i8, i9));
            }
        }
        return array2DRowRealMatrix;
    }

    public Array2DRowRealMatrix updateHighOrderDerivativesPhase1(Array2DRowRealMatrix array2DRowRealMatrix) {
        return this.f108871a.multiply(array2DRowRealMatrix);
    }

    public void updateHighOrderDerivativesPhase2(double[] dArr, double[] dArr2, Array2DRowRealMatrix array2DRowRealMatrix) {
        double[][] dataRef = array2DRowRealMatrix.getDataRef();
        for (int i = 0; i < dataRef.length; i++) {
            double[] dArr3 = dataRef[i];
            double d = this.f108872b[i];
            for (int i2 = 0; i2 < dArr3.length; i2++) {
                dArr3[i2] = dArr3[i2] + ((dArr[i2] - dArr2[i2]) * d);
            }
        }
    }
}
