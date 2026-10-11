package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class HermiteRuleFactory extends BaseRuleFactory<Double> {

    /* renamed from: c */
    public static final double f107843c = 1.772453850905516d;

    /* renamed from: d */
    public static final double f107844d = 0.7511255444649425d;

    /* renamed from: e */
    public static final double f107845e = 1.0622519320271968d;

    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    public Pair<Double[], Double[]> computeRule(int i) throws DimensionMismatchException {
        double d;
        Double valueOf = Double.valueOf(0.0d);
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new Double[]{valueOf}, new Double[]{Double.valueOf(1.772453850905516d)});
        }
        int i3 = i - 1;
        Double[] first = getRuleInternal(i3).getFirst();
        Double[] dArr = new Double[i];
        Double[] dArr2 = new Double[i];
        double sqrt = FastMath.sqrt(i3 * 2);
        double sqrt2 = FastMath.sqrt(i * 2);
        int i4 = i / 2;
        int i5 = 0;
        while (true) {
            d = 0.7511255444649425d;
            if (i5 >= i4) {
                break;
            }
            double doubleValue = i5 == 0 ? -sqrt : first[i5 - 1].doubleValue();
            double doubleValue2 = i4 == i2 ? -0.5d : first[i5].doubleValue();
            double d2 = doubleValue * 1.0622519320271968d;
            int i6 = i2;
            double d3 = 0.7511255444649425d;
            while (i6 < i) {
                int i7 = i6 + 1;
                double d4 = sqrt;
                double d5 = i7;
                double sqrt3 = ((FastMath.sqrt(2.0d / d5) * doubleValue) * d2) - (FastMath.sqrt(i6 / d5) * d3);
                d3 = d2;
                sqrt = d4;
                d2 = sqrt3;
                i6 = i7;
            }
            double d6 = sqrt;
            double d7 = (doubleValue + doubleValue2) * 0.5d;
            double d8 = 0.7511255444649425d;
            boolean z = false;
            while (!z) {
                z = doubleValue2 - doubleValue <= Math.ulp(d7);
                double d9 = d7 * 1.0622519320271968d;
                double d10 = 0.7511255444649425d;
                int i8 = 1;
                while (i8 < i) {
                    int i9 = i8 + 1;
                    double d11 = doubleValue;
                    double d12 = i9;
                    double sqrt4 = ((FastMath.sqrt(2.0d / d12) * d7) * d9) - (FastMath.sqrt(i8 / d12) * d10);
                    i8 = i9;
                    d10 = d9;
                    d9 = sqrt4;
                    doubleValue = d11;
                }
                double d13 = doubleValue;
                if (z) {
                    d8 = d10;
                    doubleValue = d13;
                } else {
                    if (d2 * d9 < 0.0d) {
                        doubleValue2 = d7;
                        doubleValue = d13;
                    } else {
                        doubleValue = d7;
                        d2 = d9;
                    }
                    d7 = (doubleValue + doubleValue2) * 0.5d;
                    d8 = d10;
                }
            }
            double d14 = d8 * sqrt2;
            double d15 = 2.0d / (d14 * d14);
            dArr[i5] = Double.valueOf(d7);
            dArr2[i5] = Double.valueOf(d15);
            int i10 = i3 - i5;
            dArr[i10] = Double.valueOf(-d7);
            dArr2[i10] = Double.valueOf(d15);
            i5++;
            sqrt = d6;
            i2 = 1;
        }
        if (i % 2 != 0) {
            for (int i11 = 1; i11 < i; i11 += 2) {
                d *= -FastMath.sqrt(i11 / (i11 + 1));
            }
            double d16 = sqrt2 * d;
            dArr[i4] = valueOf;
            dArr2[i4] = Double.valueOf(2.0d / (d16 * d16));
        }
        return new Pair<>(dArr, dArr2);
    }
}
