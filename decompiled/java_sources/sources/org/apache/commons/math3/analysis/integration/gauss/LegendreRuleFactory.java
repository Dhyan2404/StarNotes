package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class LegendreRuleFactory extends BaseRuleFactory<Double> {
    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    public Pair<Double[], Double[]> computeRule(int i) throws DimensionMismatchException {
        Double valueOf = Double.valueOf(0.0d);
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new Double[]{valueOf}, new Double[]{Double.valueOf(2.0d)});
        }
        Double[] first = getRuleInternal(i - 1).getFirst();
        Double[] dArr = new Double[i];
        Double[] dArr2 = new Double[i];
        int i3 = i / 2;
        int i4 = 0;
        while (i4 < i3) {
            double doubleValue = i4 == 0 ? -1.0d : first[i4 - 1].doubleValue();
            double doubleValue2 = i3 == i2 ? 1.0d : first[i4].doubleValue();
            int i5 = i2;
            double d = doubleValue;
            double d2 = 1.0d;
            while (i5 < i) {
                int i6 = i5 + 1;
                double d3 = (((((i5 * 2) + 1) * doubleValue) * d) - (i5 * d2)) / i6;
                i5 = i6;
                d2 = d;
                d = d3;
            }
            double d4 = (doubleValue + doubleValue2) * 0.5d;
            double d5 = d4;
            int i7 = 0;
            double d6 = 1.0d;
            while (i7 == 0) {
                i7 = doubleValue2 - doubleValue <= Math.ulp(d4) ? i2 : 0;
                d5 = d4;
                int i8 = i2;
                d6 = 1.0d;
                while (i8 < i) {
                    double d7 = ((((i8 * 2) + i2) * d4) * d5) - (i8 * d6);
                    i8++;
                    d6 = d5;
                    valueOf = valueOf;
                    d5 = d7 / i8;
                    i2 = 1;
                    first = first;
                }
                Double d8 = valueOf;
                Double[] dArr3 = first;
                if (i7 == 0) {
                    if (d * d5 <= 0.0d) {
                        doubleValue2 = d4;
                    } else {
                        doubleValue = d4;
                        d = d5;
                    }
                    d4 = (doubleValue + doubleValue2) * 0.5d;
                    first = dArr3;
                    valueOf = d8;
                } else {
                    first = dArr3;
                    valueOf = d8;
                }
                i2 = 1;
            }
            double d9 = i * (d6 - (d5 * d4));
            double d10 = ((1.0d - (d4 * d4)) * 2.0d) / (d9 * d9);
            dArr[i4] = Double.valueOf(d4);
            dArr2[i4] = Double.valueOf(d10);
            int i9 = (i - i4) - 1;
            dArr[i9] = Double.valueOf(-d4);
            dArr2[i9] = Double.valueOf(d10);
            i4++;
            valueOf = valueOf;
            first = first;
            i2 = 1;
        }
        Double d11 = valueOf;
        int i10 = i2;
        double d12 = 1.0d;
        if (i % 2 != 0) {
            for (int i11 = i10; i11 < i; i11 += 2) {
                d12 = ((-i11) * d12) / (i11 + 1);
            }
            double d13 = i * d12;
            dArr[i3] = d11;
            dArr2[i3] = Double.valueOf(2.0d / (d13 * d13));
        }
        return new Pair<>(dArr, dArr2);
    }
}
