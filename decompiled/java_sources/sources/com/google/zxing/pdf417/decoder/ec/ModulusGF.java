package com.google.zxing.pdf417.decoder.ec;

import com.google.zxing.pdf417.PDF417Common;
import com.sunia.HTREnginev2.soj;

/* loaded from: classes4.dex */
public final class ModulusGF {
    public static final ModulusGF PDF417_GF = new ModulusGF(PDF417Common.NUMBER_OF_CODEWORDS, 3);

    /* renamed from: a */
    public final int[] f38699a;

    /* renamed from: b */
    public final int[] f38700b;

    /* renamed from: c */
    public final soj f38701c;

    /* renamed from: d */
    public final soj f38702d;

    /* renamed from: e */
    public final int f38703e;

    public ModulusGF(int i, int i2) {
        this.f38703e = i;
        this.f38699a = new int[i];
        this.f38700b = new int[i];
        int i3 = 1;
        for (int i4 = 0; i4 < i; i4++) {
            this.f38699a[i4] = i3;
            i3 = (i3 * i2) % i;
        }
        for (int i5 = 0; i5 < i - 1; i5++) {
            this.f38700b[this.f38699a[i5]] = i5;
        }
        this.f38701c = new soj(this, new int[]{0});
        this.f38702d = new soj(this, new int[]{1});
    }

    /* renamed from: a */
    public int m30724a(int i, int i2) {
        return (i + i2) % this.f38703e;
    }

    /* renamed from: b */
    public soj m30725b(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f38701c;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new soj(this, iArr);
    }

    /* renamed from: c */
    public int m30726c(int i) {
        return this.f38699a[i];
    }

    /* renamed from: d */
    public soj m30727d() {
        return this.f38702d;
    }

    /* renamed from: e */
    public int m30728e() {
        return this.f38703e;
    }

    /* renamed from: f */
    public soj m30729f() {
        return this.f38701c;
    }

    /* renamed from: g */
    public int m30730g(int i) {
        if (i != 0) {
            return this.f38699a[(this.f38703e - this.f38700b[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* renamed from: h */
    public int m30731h(int i) {
        if (i != 0) {
            return this.f38700b[i];
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: i */
    public int m30732i(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f38699a;
        int[] iArr2 = this.f38700b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f38703e - 1)];
    }

    /* renamed from: j */
    public int m30733j(int i, int i2) {
        int i3 = this.f38703e;
        return ((i + i3) - i2) % i3;
    }
}
