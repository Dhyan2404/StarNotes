package org.apache.commons.math3.dfp;

import org.apache.commons.math3.dfp.DfpField;

/* loaded from: classes12.dex */
public class DfpDec extends Dfp {

    /* renamed from: org.apache.commons.math3.dfp.DfpDec$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19076a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f108021a;

        static {
            int[] iArr = new int[DfpField.RoundingMode.values().length];
            f108021a = iArr;
            try {
                iArr[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f108021a[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public DfpDec(DfpField dfpField) {
        super(dfpField);
    }

    public int getDecimalDigits() {
        return (getRadixDigits() * 4) - 3;
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance() {
        return new DfpDec(getField());
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp nextAfter(Dfp dfp) {
        Dfp copysign;
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, Dfp.f108015o, dfp, newInstance);
        }
        boolean lessThan = lessThan(dfp);
        if (equals(dfp)) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            lessThan = !lessThan;
        }
        if (lessThan) {
            Dfp copysign2 = Dfp.copysign(power10((intLog10() - getDecimalDigits()) + 1), this);
            if (equals(getZero())) {
                copysign2 = power10K(((-32767) - this.mant.length) - 1);
            }
            copysign = copysign2.equals(getZero()) ? Dfp.copysign(newInstance(getZero()), this) : add(copysign2);
        } else {
            Dfp copysign3 = Dfp.copysign(power10(intLog10()), this);
            Dfp divide = equals(copysign3) ? copysign3.divide(power10(getDecimalDigits())) : copysign3.divide(power10(getDecimalDigits() - 1));
            if (equals(getZero())) {
                divide = power10K(((-32767) - this.mant.length) - 1);
            }
            copysign = divide.equals(getZero()) ? Dfp.copysign(newInstance(getZero()), this) : subtract(divide);
        }
        if (copysign.classify() == 1 && classify() != 1) {
            getField().setIEEEFlagsBits(16);
            copysign = dotrap(16, Dfp.f108015o, dfp, copysign);
        }
        if (!copysign.equals(getZero()) || equals(getZero())) {
            return copysign;
        }
        getField().setIEEEFlagsBits(16);
        return dotrap(16, Dfp.f108015o, dfp, copysign);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        if (r12 != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008c, code lost:
    
        if (r12 != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0094, code lost:
    
        if (r12 == 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x009c, code lost:
    
        if ((r7 & 1) != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00a3, code lost:
    
        if (r12 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ab, code lost:
    
        if ((r7 & 1) != 1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ae, code lost:
    
        if (r10 > 5) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00b1, code lost:
    
        if (r10 >= 5) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b6, code lost:
    
        if (r12 == 0) goto L59;
     */
    @Override // org.apache.commons.math3.dfp.Dfp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int round(int r12) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.dfp.DfpDec.round(int):int");
    }

    public DfpDec(DfpField dfpField, byte b) {
        super(dfpField, b);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(byte b) {
        return new DfpDec(getField(), b);
    }

    public DfpDec(DfpField dfpField, int i) {
        super(dfpField, i);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(int i) {
        return new DfpDec(getField(), i);
    }

    public DfpDec(DfpField dfpField, long j) {
        super(dfpField, j);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(long j) {
        return new DfpDec(getField(), j);
    }

    public DfpDec(DfpField dfpField, double d) {
        super(dfpField, d);
        round(0);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(double d) {
        return new DfpDec(getField(), d);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(Dfp dfp) {
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, Dfp.f108018r, dfp, newInstance);
        }
        return new DfpDec(dfp);
    }

    public DfpDec(Dfp dfp) {
        super(dfp);
        round(0);
    }

    public DfpDec(DfpField dfpField, String str) {
        super(dfpField, str);
        round(0);
    }

    public DfpDec(DfpField dfpField, byte b, byte b2) {
        super(dfpField, b, b2);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(String str) {
        return new DfpDec(getField(), str);
    }

    @Override // org.apache.commons.math3.dfp.Dfp
    public Dfp newInstance(byte b, byte b2) {
        return new DfpDec(getField(), b, b2);
    }
}
