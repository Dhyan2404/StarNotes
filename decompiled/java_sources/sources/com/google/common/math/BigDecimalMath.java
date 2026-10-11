package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.uin;
import com.sunia.HTREnginev2.znf;
import java.math.BigDecimal;
import java.math.RoundingMode;

@znf
@GwtIncompatible
/* loaded from: classes6.dex */
public class BigDecimalMath {

    /* renamed from: com.google.common.math.BigDecimalMath$a */
    /* loaded from: classes6.dex */
    public static class C6239a extends uin<BigDecimal> {

        /* renamed from: a */
        public static final C6239a f34943a = new C6239a();

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public BigDecimal mo27247a(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
            return bigDecimal.subtract(bigDecimal2);
        }

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public double mo27248c(BigDecimal bigDecimal) {
            return bigDecimal.doubleValue();
        }

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public int mo27249d(BigDecimal bigDecimal) {
            return bigDecimal.signum();
        }

        @Override // com.sunia.HTREnginev2.uin
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public BigDecimal mo27250e(double d, RoundingMode roundingMode) {
            return new BigDecimal(d);
        }
    }

    public static double roundToDouble(BigDecimal bigDecimal, RoundingMode roundingMode) {
        return C6239a.f34943a.m57626b(bigDecimal, roundingMode);
    }
}
