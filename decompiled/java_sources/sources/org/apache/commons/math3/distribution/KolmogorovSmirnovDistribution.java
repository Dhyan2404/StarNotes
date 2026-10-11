package org.apache.commons.math3.distribution;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.BigFractionField;
import org.apache.commons.math3.fraction.FractionConversionException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class KolmogorovSmirnovDistribution implements Serializable {
    private static final long serialVersionUID = -4670676796862967187L;

    /* renamed from: n */
    private int f108057n;

    public KolmogorovSmirnovDistribution(int i) throws NotStrictlyPositiveException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        this.f108057n = i;
    }

    private FieldMatrix<BigFraction> createH(double d) throws NumberIsTooLargeException, FractionConversionException {
        BigFraction bigFraction;
        int i;
        int ceil = (int) FastMath.ceil(this.f108057n * d);
        int i2 = (ceil * 2) - 1;
        double d2 = ceil - (this.f108057n * d);
        if (d2 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(1.0d), false);
        }
        try {
            try {
                bigFraction = new BigFraction(d2, 1.0E-20d, 10000);
            } catch (FractionConversionException unused) {
                bigFraction = new BigFraction(d2, 1.0E-5d, 10000);
            }
        } catch (FractionConversionException unused2) {
            bigFraction = new BigFraction(d2, 1.0E-10d, 10000);
        }
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i2, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                if ((i3 - i4) + 1 < 0) {
                    bigFractionArr[i3][i4] = BigFraction.ZERO;
                } else {
                    bigFractionArr[i3][i4] = BigFraction.ONE;
                }
            }
        }
        BigFraction[] bigFractionArr2 = new BigFraction[i2];
        bigFractionArr2[0] = bigFraction;
        for (int i5 = 1; i5 < i2; i5++) {
            bigFractionArr2[i5] = bigFraction.multiply(bigFractionArr2[i5 - 1]);
        }
        for (int i6 = 0; i6 < i2; i6++) {
            BigFraction[] bigFractionArr3 = bigFractionArr[i6];
            bigFractionArr3[0] = bigFractionArr3[0].subtract(bigFractionArr2[i6]);
            BigFraction[] bigFractionArr4 = bigFractionArr[i2 - 1];
            bigFractionArr4[i6] = bigFractionArr4[i6].subtract(bigFractionArr2[(i2 - i6) - 1]);
        }
        if (bigFraction.compareTo(BigFraction.ONE_HALF) == 1) {
            BigFraction[] bigFractionArr5 = bigFractionArr[i2 - 1];
            bigFractionArr5[0] = bigFractionArr5[0].add(bigFraction.multiply(2).subtract(1).pow(i2));
        }
        int i7 = 0;
        while (i7 < i2) {
            int i8 = 0;
            while (true) {
                i = i7 + 1;
                if (i8 < i) {
                    int i9 = (i7 - i8) + 1;
                    if (i9 > 0) {
                        for (int i10 = 2; i10 <= i9; i10++) {
                            BigFraction[] bigFractionArr6 = bigFractionArr[i7];
                            bigFractionArr6[i8] = bigFractionArr6[i8].divide(i10);
                        }
                    }
                    i8++;
                }
            }
            i7 = i;
        }
        return new Array2DRowFieldMatrix(BigFractionField.getInstance(), bigFractionArr);
    }

    private double exactK(double d) throws MathArithmeticException {
        int ceil = ((int) FastMath.ceil(this.f108057n * d)) - 1;
        BigFraction entry = createH(d).power(this.f108057n).getEntry(ceil, ceil);
        for (int i = 1; i <= this.f108057n; i++) {
            entry = entry.multiply(i).divide(this.f108057n);
        }
        return entry.bigDecimalValue(20, 4).doubleValue();
    }

    private double roundedK(double d) throws MathArithmeticException {
        int ceil = (int) FastMath.ceil(this.f108057n * d);
        FieldMatrix<BigFraction> createH = createH(d);
        int rowDimension = createH.getRowDimension();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(rowDimension, rowDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < rowDimension; i2++) {
                array2DRowRealMatrix.setEntry(i, i2, createH.getEntry(i, i2).doubleValue());
            }
        }
        int i3 = 1;
        int i4 = ceil - 1;
        double entry = array2DRowRealMatrix.power(this.f108057n).getEntry(i4, i4);
        while (true) {
            int i5 = this.f108057n;
            if (i3 > i5) {
                return entry;
            }
            entry *= i3 / i5;
            i3++;
        }
    }

    public double cdf(double d) throws MathArithmeticException {
        return cdf(d, false);
    }

    public double cdfExact(double d) throws MathArithmeticException {
        return cdf(d, true);
    }

    public double cdf(double d, boolean z) throws MathArithmeticException {
        int i = this.f108057n;
        double d2 = 1.0d;
        double d3 = 1.0d / i;
        double d4 = 0.5d * d3;
        if (d <= d4) {
            return 0.0d;
        }
        if (d4 >= d || d > d3) {
            if (1.0d - d3 <= d && d < 1.0d) {
                return 1.0d - (FastMath.pow(1.0d - d, i) * 2.0d);
            }
            if (1.0d <= d) {
                return 1.0d;
            }
            return z ? exactK(d) : roundedK(d);
        }
        double d5 = (d * 2.0d) - d3;
        for (int i2 = 1; i2 <= this.f108057n; i2++) {
            d2 *= i2 * d5;
        }
        return d2;
    }
}
