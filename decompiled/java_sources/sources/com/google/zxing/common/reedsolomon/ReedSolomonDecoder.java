package com.google.zxing.common.reedsolomon;

import com.sunia.HTREnginev2.yyg;

/* loaded from: classes4.dex */
public final class ReedSolomonDecoder {

    /* renamed from: a */
    public final GenericGF f38436a;

    public ReedSolomonDecoder(GenericGF genericGF) {
        this.f38436a = genericGF;
    }

    /* renamed from: a */
    public final int[] m30532a(yyg yygVar) throws ReedSolomonException {
        int m58506f = yygVar.m58506f();
        if (m58506f == 1) {
            return new int[]{yygVar.m58504d(1)};
        }
        int[] iArr = new int[m58506f];
        int i = 0;
        for (int i2 = 1; i2 < this.f38436a.getSize() && i < m58506f; i2++) {
            if (yygVar.m58503c(i2) == 0) {
                iArr[i] = this.f38436a.m30529f(i2);
                i++;
            }
        }
        if (i == m58506f) {
            return iArr;
        }
        throw new ReedSolomonException("Error locator degree does not match number of roots");
    }

    /* renamed from: b */
    public final int[] m30533b(yyg yygVar, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int m30529f = this.f38436a.m30529f(iArr[i]);
            int i2 = 1;
            for (int i3 = 0; i3 < length; i3++) {
                if (i != i3) {
                    int m30531h = this.f38436a.m30531h(iArr[i3], m30529f);
                    i2 = this.f38436a.m30531h(i2, (m30531h & 1) == 0 ? m30531h | 1 : m30531h & (-2));
                }
            }
            iArr2[i] = this.f38436a.m30531h(yygVar.m58503c(m30529f), this.f38436a.m30529f(i2));
            if (this.f38436a.getGeneratorBase() != 0) {
                iArr2[i] = this.f38436a.m30531h(iArr2[i], m30529f);
            }
        }
        return iArr2;
    }

    /* renamed from: c */
    public final yyg[] m30534c(yyg yygVar, yyg yygVar2, int i) throws ReedSolomonException {
        if (yygVar.m58506f() < yygVar2.m58506f()) {
            yygVar2 = yygVar;
            yygVar = yygVar2;
        }
        yyg m30528e = this.f38436a.m30528e();
        yyg m30527d = this.f38436a.m30527d();
        do {
            yyg yygVar3 = yygVar2;
            yygVar2 = yygVar;
            yygVar = yygVar3;
            yyg yygVar4 = m30527d;
            yyg yygVar5 = m30528e;
            m30528e = yygVar4;
            if (yygVar.m58506f() < i / 2) {
                int m58504d = m30528e.m58504d(0);
                if (m58504d == 0) {
                    throw new ReedSolomonException("sigmaTilde(0) was zero");
                }
                int m30529f = this.f38436a.m30529f(m58504d);
                return new yyg[]{m30528e.m58508h(m30529f), yygVar.m58508h(m30529f)};
            }
            if (yygVar.m58507g()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            yyg m30528e2 = this.f38436a.m30528e();
            int m30529f2 = this.f38436a.m30529f(yygVar.m58504d(yygVar.m58506f()));
            while (yygVar2.m58506f() >= yygVar.m58506f() && !yygVar2.m58507g()) {
                int m58506f = yygVar2.m58506f() - yygVar.m58506f();
                int m30531h = this.f38436a.m30531h(yygVar2.m58504d(yygVar2.m58506f()), m30529f2);
                m30528e2 = m30528e2.m58501a(this.f38436a.m30525b(m58506f, m30531h));
                yygVar2 = yygVar2.m58501a(yygVar.m58510j(m58506f, m30531h));
            }
            m30527d = m30528e2.m58509i(m30528e).m58501a(yygVar5);
        } while (yygVar2.m58506f() < yygVar.m58506f());
        throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
    }

    public void decode(int[] iArr, int i) throws ReedSolomonException {
        yyg yygVar = new yyg(this.f38436a, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            GenericGF genericGF = this.f38436a;
            int m58503c = yygVar.m58503c(genericGF.m30526c(genericGF.getGeneratorBase() + i2));
            iArr2[(i - 1) - i2] = m58503c;
            if (m58503c != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        yyg[] m30534c = m30534c(this.f38436a.m30525b(i, 1), new yyg(this.f38436a, iArr2), i);
        yyg yygVar2 = m30534c[0];
        yyg yygVar3 = m30534c[1];
        int[] m30532a = m30532a(yygVar2);
        int[] m30533b = m30533b(yygVar3, m30532a);
        for (int i3 = 0; i3 < m30532a.length; i3++) {
            int length = (iArr.length - 1) - this.f38436a.m30530g(m30532a[i3]);
            if (length < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[length] = GenericGF.m30524a(iArr[length], m30533b[i3]);
        }
    }
}
