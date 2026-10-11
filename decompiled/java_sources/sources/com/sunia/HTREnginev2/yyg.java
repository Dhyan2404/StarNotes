package com.sunia.HTREnginev2;

import com.google.zxing.common.reedsolomon.GenericGF;

/* loaded from: classes4.dex */
public final class yyg {

    /* renamed from: a */
    public final GenericGF f91185a;

    /* renamed from: b */
    public final int[] f91186b;

    public yyg(GenericGF genericGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f91185a = genericGF;
        int length = iArr.length;
        int i = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f91186b = iArr;
            return;
        }
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f91186b = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.f91186b = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    /* renamed from: a */
    public yyg m58501a(yyg yygVar) {
        if (!this.f91185a.equals(yygVar.f91185a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m58507g()) {
            return yygVar;
        }
        if (yygVar.m58507g()) {
            return this;
        }
        int[] iArr = this.f91186b;
        int[] iArr2 = yygVar.f91186b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = GenericGF.m30524a(iArr2[i - length], iArr[i]);
        }
        return new yyg(this.f91185a, iArr3);
    }

    /* renamed from: b */
    public yyg[] m58502b(yyg yygVar) {
        if (!this.f91185a.equals(yygVar.f91185a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (yygVar.m58507g()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        yyg m30528e = this.f91185a.m30528e();
        int m30529f = this.f91185a.m30529f(yygVar.m58504d(yygVar.m58506f()));
        yyg yygVar2 = this;
        while (yygVar2.m58506f() >= yygVar.m58506f() && !yygVar2.m58507g()) {
            int m58506f = yygVar2.m58506f() - yygVar.m58506f();
            int m30531h = this.f91185a.m30531h(yygVar2.m58504d(yygVar2.m58506f()), m30529f);
            yyg m58510j = yygVar.m58510j(m58506f, m30531h);
            m30528e = m30528e.m58501a(this.f91185a.m30525b(m58506f, m30531h));
            yygVar2 = yygVar2.m58501a(m58510j);
        }
        return new yyg[]{m30528e, yygVar2};
    }

    /* renamed from: c */
    public int m58503c(int i) {
        if (i == 0) {
            return m58504d(0);
        }
        if (i == 1) {
            int i2 = 0;
            for (int i3 : this.f91186b) {
                i2 = GenericGF.m30524a(i2, i3);
            }
            return i2;
        }
        int[] iArr = this.f91186b;
        int i4 = iArr[0];
        int length = iArr.length;
        for (int i5 = 1; i5 < length; i5++) {
            i4 = GenericGF.m30524a(this.f91185a.m30531h(i, i4), this.f91186b[i5]);
        }
        return i4;
    }

    /* renamed from: d */
    public int m58504d(int i) {
        return this.f91186b[(r1.length - 1) - i];
    }

    /* renamed from: e */
    public int[] m58505e() {
        return this.f91186b;
    }

    /* renamed from: f */
    public int m58506f() {
        return this.f91186b.length - 1;
    }

    /* renamed from: g */
    public boolean m58507g() {
        return this.f91186b[0] == 0;
    }

    /* renamed from: h */
    public yyg m58508h(int i) {
        if (i == 0) {
            return this.f91185a.m30528e();
        }
        if (i == 1) {
            return this;
        }
        int length = this.f91186b.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.f91185a.m30531h(this.f91186b[i2], i);
        }
        return new yyg(this.f91185a, iArr);
    }

    /* renamed from: i */
    public yyg m58509i(yyg yygVar) {
        if (!this.f91185a.equals(yygVar.f91185a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m58507g() || yygVar.m58507g()) {
            return this.f91185a.m30528e();
        }
        int[] iArr = this.f91186b;
        int length = iArr.length;
        int[] iArr2 = yygVar.f91186b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = GenericGF.m30524a(iArr3[i4], this.f91185a.m30531h(i2, iArr2[i3]));
            }
        }
        return new yyg(this.f91185a, iArr3);
    }

    /* renamed from: j */
    public yyg m58510j(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f91185a.m30528e();
        }
        int length = this.f91186b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.f91185a.m30531h(this.f91186b[i3], i2);
        }
        return new yyg(this.f91185a, iArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(m58506f() * 8);
        for (int m58506f = m58506f(); m58506f >= 0; m58506f--) {
            int m58504d = m58504d(m58506f);
            if (m58504d != 0) {
                if (m58504d < 0) {
                    sb.append(" - ");
                    m58504d = -m58504d;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (m58506f == 0 || m58504d != 1) {
                    int m30530g = this.f91185a.m30530g(m58504d);
                    if (m30530g == 0) {
                        sb.append('1');
                    } else if (m30530g == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(m30530g);
                    }
                }
                if (m58506f != 0) {
                    if (m58506f == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(m58506f);
                    }
                }
            }
        }
        return sb.toString();
    }
}
