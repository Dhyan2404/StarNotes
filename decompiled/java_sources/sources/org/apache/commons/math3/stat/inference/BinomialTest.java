package org.apache.commons.math3.stat.inference;

/* loaded from: classes12.dex */
public class BinomialTest {

    /* renamed from: org.apache.commons.math3.stat.inference.BinomialTest$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19276a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f109755a;

        static {
            int[] iArr = new int[AlternativeHypothesis.values().length];
            f109755a = iArr;
            try {
                iArr[AlternativeHypothesis.GREATER_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f109755a[AlternativeHypothesis.LESS_THAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f109755a[AlternativeHypothesis.TWO_SIDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean binomialTest(int i, int i2, double d, AlternativeHypothesis alternativeHypothesis, double d2) {
        return binomialTest(i, i2, d, alternativeHypothesis) < d2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f A[EDGE_INSN: B:25:0x004f->B:22:0x004f BREAK  A[LOOP:0: B:15:0x002c->B:24:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double binomialTest(int r8, int r9, double r10, org.apache.commons.math3.stat.inference.AlternativeHypothesis r12) {
        /*
            r7 = this;
            if (r8 < 0) goto La2
            if (r9 < 0) goto L98
            r0 = 0
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            r2 = 0
            r3 = 1
            if (r7 < 0) goto L86
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r7 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r7 > 0) goto L86
            if (r8 < r9) goto L72
            if (r12 == 0) goto L6c
            org.apache.commons.math3.distribution.BinomialDistribution r7 = new org.apache.commons.math3.distribution.BinomialDistribution
            r6 = 0
            r7.<init>(r6, r8, r10)
            int[] r10 = org.apache.commons.math3.stat.inference.BinomialTest.C19276a.f109755a
            int r11 = r12.ordinal()
            r10 = r10[r11]
            if (r10 == r3) goto L65
            r11 = 2
            if (r10 == r11) goto L60
            r11 = 3
            if (r10 != r11) goto L50
        L2c:
            double r10 = r7.probability(r2)
            double r3 = r7.probability(r8)
            int r12 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r12 != 0) goto L41
            r3 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r10 = r10 * r3
            double r0 = r0 + r10
            int r2 = r2 + 1
        L3e:
            int r8 = r8 + (-1)
            goto L4b
        L41:
            int r12 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r12 >= 0) goto L49
            double r0 = r0 + r10
            int r2 = r2 + 1
            goto L4b
        L49:
            double r0 = r0 + r3
            goto L3e
        L4b:
            if (r2 > r9) goto L4f
            if (r8 >= r9) goto L2c
        L4f:
            return r0
        L50:
            org.apache.commons.math3.exception.MathInternalError r7 = new org.apache.commons.math3.exception.MathInternalError
            org.apache.commons.math3.exception.util.LocalizedFormats r8 = org.apache.commons.math3.exception.util.LocalizedFormats.OUT_OF_RANGE_SIMPLE
            org.apache.commons.math3.stat.inference.AlternativeHypothesis r9 = org.apache.commons.math3.stat.inference.AlternativeHypothesis.TWO_SIDED
            org.apache.commons.math3.stat.inference.AlternativeHypothesis r10 = org.apache.commons.math3.stat.inference.AlternativeHypothesis.LESS_THAN
            java.lang.Object[] r9 = new java.lang.Object[]{r12, r9, r10}
            r7.<init>(r8, r9)
            throw r7
        L60:
            double r7 = r7.cumulativeProbability(r9)
            return r7
        L65:
            int r9 = r9 - r3
            double r7 = r7.cumulativeProbability(r9)
            double r4 = r4 - r7
            return r4
        L6c:
            org.apache.commons.math3.exception.NullArgumentException r7 = new org.apache.commons.math3.exception.NullArgumentException
            r7.<init>()
            throw r7
        L72:
            org.apache.commons.math3.exception.MathIllegalArgumentException r7 = new org.apache.commons.math3.exception.MathIllegalArgumentException
            org.apache.commons.math3.exception.util.LocalizedFormats r10 = org.apache.commons.math3.exception.util.LocalizedFormats.BINOMIAL_INVALID_PARAMETERS_ORDER
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.Object[] r8 = new java.lang.Object[]{r8, r9}
            r7.<init>(r10, r8)
            throw r7
        L86:
            org.apache.commons.math3.exception.OutOfRangeException r7 = new org.apache.commons.math3.exception.OutOfRangeException
            java.lang.Double r8 = java.lang.Double.valueOf(r10)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r2)
            java.lang.Integer r10 = java.lang.Integer.valueOf(r3)
            r7.<init>(r8, r9, r10)
            throw r7
        L98:
            org.apache.commons.math3.exception.NotPositiveException r7 = new org.apache.commons.math3.exception.NotPositiveException
            java.lang.Integer r8 = java.lang.Integer.valueOf(r9)
            r7.<init>(r8)
            throw r7
        La2:
            org.apache.commons.math3.exception.NotPositiveException r7 = new org.apache.commons.math3.exception.NotPositiveException
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.stat.inference.BinomialTest.binomialTest(int, int, double, org.apache.commons.math3.stat.inference.AlternativeHypothesis):double");
    }
}
