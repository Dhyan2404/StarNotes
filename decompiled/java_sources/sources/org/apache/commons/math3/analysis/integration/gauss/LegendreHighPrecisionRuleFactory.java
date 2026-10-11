package org.apache.commons.math3.analysis.integration.gauss;

import com.sun.imageio.plugins.jpeg.JPEG;
import java.math.BigDecimal;
import java.math.MathContext;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;

/* loaded from: classes12.dex */
public class LegendreHighPrecisionRuleFactory extends BaseRuleFactory<BigDecimal> {

    /* renamed from: c */
    public final MathContext f107846c;

    /* renamed from: d */
    public final BigDecimal f107847d;

    /* renamed from: e */
    public final BigDecimal f107848e;

    /* renamed from: f */
    public final BigDecimal f107849f;

    public LegendreHighPrecisionRuleFactory() {
        this(MathContext.DECIMAL128);
    }

    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    public Pair<BigDecimal[], BigDecimal[]> computeRule(int i) throws DimensionMismatchException {
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new BigDecimal[]{BigDecimal.ZERO}, new BigDecimal[]{this.f107847d});
        }
        BigDecimal[] first = getRuleInternal(i - 1).getFirst();
        BigDecimal[] bigDecimalArr = new BigDecimal[i];
        BigDecimal[] bigDecimalArr2 = new BigDecimal[i];
        int i3 = i / 2;
        int i4 = 0;
        while (i4 < i3) {
            BigDecimal bigDecimal = i4 == 0 ? this.f107848e : first[i4 - 1];
            BigDecimal bigDecimal2 = i3 == i2 ? BigDecimal.ONE : first[i4];
            int i5 = i2;
            BigDecimal bigDecimal3 = bigDecimal2;
            BigDecimal bigDecimal4 = BigDecimal.ONE;
            BigDecimal bigDecimal5 = bigDecimal4;
            BigDecimal bigDecimal6 = bigDecimal;
            while (i5 < i) {
                BigDecimal[] bigDecimalArr3 = first;
                BigDecimal bigDecimal7 = new BigDecimal((i5 * 2) + 1, this.f107846c);
                BigDecimal bigDecimal8 = new BigDecimal(i5, this.f107846c);
                int i6 = i5 + 1;
                BigDecimal bigDecimal9 = new BigDecimal(i6, this.f107846c);
                BigDecimal divide = bigDecimal6.multiply(bigDecimal.multiply(bigDecimal7, this.f107846c), this.f107846c).subtract(bigDecimal4.multiply(bigDecimal8, this.f107846c), this.f107846c).divide(bigDecimal9, this.f107846c);
                BigDecimal divide2 = bigDecimal3.multiply(bigDecimal2.multiply(bigDecimal7, this.f107846c), this.f107846c).subtract(bigDecimal5.multiply(bigDecimal8, this.f107846c), this.f107846c).divide(bigDecimal9, this.f107846c);
                bigDecimal4 = bigDecimal6;
                bigDecimal5 = bigDecimal3;
                first = bigDecimalArr3;
                i3 = i3;
                bigDecimal6 = divide;
                bigDecimal3 = divide2;
                i5 = i6;
            }
            BigDecimal[] bigDecimalArr4 = first;
            int i7 = i3;
            BigDecimal multiply = bigDecimal.add(bigDecimal2, this.f107846c).multiply(this.f107849f, this.f107846c);
            BigDecimal bigDecimal10 = BigDecimal.ONE;
            boolean z = false;
            BigDecimal bigDecimal11 = multiply;
            while (!z) {
                z = bigDecimal2.subtract(bigDecimal, this.f107846c).compareTo(multiply.ulp().multiply(BigDecimal.TEN, this.f107846c)) <= 0;
                bigDecimal10 = BigDecimal.ONE;
                int i8 = 1;
                bigDecimal11 = multiply;
                while (i8 < i) {
                    BigDecimal bigDecimal12 = new BigDecimal((i8 * 2) + 1, this.f107846c);
                    BigDecimal bigDecimal13 = new BigDecimal(i8, this.f107846c);
                    i8++;
                    BigDecimal divide3 = bigDecimal11.multiply(multiply.multiply(bigDecimal12, this.f107846c), this.f107846c).subtract(bigDecimal10.multiply(bigDecimal13, this.f107846c), this.f107846c).divide(new BigDecimal(i8, this.f107846c), this.f107846c);
                    bigDecimal = bigDecimal;
                    bigDecimal10 = bigDecimal11;
                    bigDecimal11 = divide3;
                }
                BigDecimal bigDecimal14 = bigDecimal;
                if (z) {
                    bigDecimal = bigDecimal14;
                } else {
                    if (bigDecimal6.signum() * bigDecimal11.signum() <= 0) {
                        bigDecimal2 = multiply;
                        multiply = bigDecimal14;
                    } else {
                        bigDecimal6 = bigDecimal11;
                    }
                    bigDecimal = multiply;
                    multiply = multiply.add(bigDecimal2, this.f107846c).multiply(this.f107849f, this.f107846c);
                }
            }
            BigDecimal divide4 = BigDecimal.ONE.subtract(multiply.pow(2, this.f107846c), this.f107846c).multiply(this.f107847d, this.f107846c).divide(bigDecimal10.subtract(multiply.multiply(bigDecimal11, this.f107846c), this.f107846c).multiply(new BigDecimal(i, this.f107846c)).pow(2, this.f107846c), this.f107846c);
            bigDecimalArr[i4] = multiply;
            bigDecimalArr2[i4] = divide4;
            int i9 = (i - i4) - 1;
            bigDecimalArr[i9] = multiply.negate(this.f107846c);
            bigDecimalArr2[i9] = divide4;
            i4++;
            i2 = 1;
            first = bigDecimalArr4;
            i3 = i7;
        }
        int i10 = i3;
        int i11 = i2;
        if (i % 2 != 0) {
            BigDecimal bigDecimal15 = BigDecimal.ONE;
            for (int i12 = i11; i12 < i; i12 += 2) {
                bigDecimal15 = bigDecimal15.multiply(new BigDecimal(i12, this.f107846c), this.f107846c).divide(new BigDecimal(i12 + 1, this.f107846c), this.f107846c).negate(this.f107846c);
            }
            BigDecimal divide5 = this.f107847d.divide(bigDecimal15.multiply(new BigDecimal(i, this.f107846c), this.f107846c).pow(2, this.f107846c), this.f107846c);
            bigDecimalArr[i10] = BigDecimal.ZERO;
            bigDecimalArr2[i10] = divide5;
        }
        return new Pair<>(bigDecimalArr, bigDecimalArr2);
    }

    public LegendreHighPrecisionRuleFactory(MathContext mathContext) {
        this.f107846c = mathContext;
        this.f107847d = new BigDecimal("2", mathContext);
        this.f107848e = new BigDecimal("-1", mathContext);
        this.f107849f = new BigDecimal(JPEG.version, mathContext);
    }
}
