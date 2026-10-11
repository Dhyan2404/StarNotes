package com.google.zxing.common.reedsolomon;

import com.sunia.HTREnginev2.yyg;

/* loaded from: classes4.dex */
public final class GenericGF {
    public static final GenericGF AZTEC_DATA_6;
    public static final GenericGF AZTEC_DATA_8;
    public static final GenericGF AZTEC_PARAM;
    public static final GenericGF DATA_MATRIX_FIELD_256;
    public static final GenericGF MAXICODE_FIELD_64;
    public static final GenericGF QR_CODE_FIELD_256;

    /* renamed from: a */
    public final int[] f38429a;

    /* renamed from: b */
    public final int[] f38430b;

    /* renamed from: c */
    public final yyg f38431c;

    /* renamed from: d */
    public final yyg f38432d;

    /* renamed from: e */
    public final int f38433e;

    /* renamed from: f */
    public final int f38434f;

    /* renamed from: g */
    public final int f38435g;
    public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096, 1);
    public static final GenericGF AZTEC_DATA_10 = new GenericGF(1033, 1024, 1);

    static {
        GenericGF genericGF = new GenericGF(67, 64, 1);
        AZTEC_DATA_6 = genericGF;
        AZTEC_PARAM = new GenericGF(19, 16, 1);
        QR_CODE_FIELD_256 = new GenericGF(285, 256, 0);
        GenericGF genericGF2 = new GenericGF(301, 256, 1);
        DATA_MATRIX_FIELD_256 = genericGF2;
        AZTEC_DATA_8 = genericGF2;
        MAXICODE_FIELD_64 = genericGF;
    }

    public GenericGF(int i, int i2, int i3) {
        this.f38434f = i;
        this.f38433e = i2;
        this.f38435g = i3;
        this.f38429a = new int[i2];
        this.f38430b = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f38429a[i5] = i4;
            i4 <<= 1;
            if (i4 >= i2) {
                i4 = (i4 ^ i) & (i2 - 1);
            }
        }
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.f38430b[this.f38429a[i6]] = i6;
        }
        this.f38431c = new yyg(this, new int[]{0});
        this.f38432d = new yyg(this, new int[]{1});
    }

    /* renamed from: a */
    public static int m30524a(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: b */
    public yyg m30525b(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f38431c;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new yyg(this, iArr);
    }

    /* renamed from: c */
    public int m30526c(int i) {
        return this.f38429a[i];
    }

    /* renamed from: d */
    public yyg m30527d() {
        return this.f38432d;
    }

    /* renamed from: e */
    public yyg m30528e() {
        return this.f38431c;
    }

    /* renamed from: f */
    public int m30529f(int i) {
        if (i != 0) {
            return this.f38429a[(this.f38433e - this.f38430b[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* renamed from: g */
    public int m30530g(int i) {
        if (i != 0) {
            return this.f38430b[i];
        }
        throw new IllegalArgumentException();
    }

    public int getGeneratorBase() {
        return this.f38435g;
    }

    public int getSize() {
        return this.f38433e;
    }

    /* renamed from: h */
    public int m30531h(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f38429a;
        int[] iArr2 = this.f38430b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f38433e - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f38434f) + ',' + this.f38433e + ')';
    }
}
