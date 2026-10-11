package com.sunia.HTREnginev2;

import com.google.zxing.pdf417.decoder.ec.ModulusGF;

/* loaded from: classes4.dex */
public final class soj {

    /* renamed from: a */
    public final ModulusGF f84401a;

    /* renamed from: b */
    public final int[] f84402b;

    public soj(ModulusGF modulusGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f84401a = modulusGF;
        int length = iArr.length;
        int i = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f84402b = iArr;
            return;
        }
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f84402b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.f84402b = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    /* renamed from: a */
    public soj m57214a(soj sojVar) {
        if (!this.f84401a.equals(sojVar.f84401a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (m57219f()) {
            return sojVar;
        }
        if (sojVar.m57219f()) {
            return this;
        }
        int[] iArr = this.f84402b;
        int[] iArr2 = sojVar.f84402b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = this.f84401a.m30724a(iArr2[i - length], iArr[i]);
        }
        return new soj(this.f84401a, iArr3);
    }

    /* renamed from: b */
    public int m57215b(int i) {
        if (i == 0) {
            return m57216c(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int i3 : this.f84402b) {
                i2 = this.f84401a.m30724a(i2, i3);
            }
            return i2;
        }
        int[] iArr = this.f84402b;
        int i4 = iArr[0];
        int length = iArr.length;
        for (int i5 = 1; i5 < length; i5++) {
            ModulusGF modulusGF = this.f84401a;
            i4 = modulusGF.m30724a(modulusGF.m30732i(i, i4), this.f84402b[i5]);
        }
        return i4;
    }

    /* renamed from: c */
    public int m57216c(int i) {
        return this.f84402b[(r1.length - 1) - i];
    }

    /* renamed from: d */
    public int[] m57217d() {
        return this.f84402b;
    }

    /* renamed from: e */
    public int m57218e() {
        return this.f84402b.length - 1;
    }

    /* renamed from: f */
    public boolean m57219f() {
        return this.f84402b[0] == 0;
    }

    /* renamed from: g */
    public soj m57220g(int i) {
        if (i == 0) {
            return this.f84401a.m30729f();
        }
        if (i == 1) {
            return this;
        }
        int length = this.f84402b.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f84401a.m30732i(this.f84402b[i2], i);
        }
        return new soj(this.f84401a, iArr);
    }

    /* renamed from: h */
    public soj m57221h(soj sojVar) {
        if (!this.f84401a.equals(sojVar.f84401a)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (m57219f() || sojVar.m57219f()) {
            return this.f84401a.m30729f();
        }
        int[] iArr = this.f84402b;
        int length = iArr.length;
        int[] iArr2 = sojVar.f84402b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                ModulusGF modulusGF = this.f84401a;
                iArr3[i4] = modulusGF.m30724a(iArr3[i4], modulusGF.m30732i(i2, iArr2[i3]));
            }
        }
        return new soj(this.f84401a, iArr3);
    }

    /* renamed from: i */
    public soj m57222i(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f84401a.m30729f();
        }
        int length = this.f84402b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f84401a.m30732i(this.f84402b[i3], i2);
        }
        return new soj(this.f84401a, iArr);
    }

    /* renamed from: j */
    public soj m57223j() {
        int length = this.f84402b.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.f84401a.m30733j(0, this.f84402b[i]);
        }
        return new soj(this.f84401a, iArr);
    }

    /* renamed from: k */
    public soj m57224k(soj sojVar) {
        if (this.f84401a.equals(sojVar.f84401a)) {
            return sojVar.m57219f() ? this : m57214a(sojVar.m57223j());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(m57218e() * 8);
        for (int m57218e = m57218e(); m57218e >= 0; m57218e--) {
            int m57216c = m57216c(m57218e);
            if (m57216c != 0) {
                if (m57216c < 0) {
                    sb.append(" - ");
                    m57216c = -m57216c;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (m57218e == 0 || m57216c != 1) {
                    sb.append(m57216c);
                }
                if (m57218e != 0) {
                    if (m57218e == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(m57218e);
                    }
                }
            }
        }
        return sb.toString();
    }
}
