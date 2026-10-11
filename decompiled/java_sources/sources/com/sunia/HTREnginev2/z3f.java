package com.sunia.HTREnginev2;

import java.util.Formatter;

/* loaded from: classes4.dex */
public final class z3f {

    /* renamed from: e */
    public static final int f91380e = 2;

    /* renamed from: a */
    public final C14510um f91381a;

    /* renamed from: b */
    public final a4f[] f91382b;

    /* renamed from: c */
    public C14368ru f91383c;

    /* renamed from: d */
    public final int f91384d;

    public z3f(C14510um c14510um, C14368ru c14368ru) {
        this.f91381a = c14510um;
        int m57641a = c14510um.m57641a();
        this.f91384d = m57641a;
        this.f91383c = c14368ru;
        this.f91382b = new a4f[m57641a + 2];
    }

    /* renamed from: b */
    public static boolean m58609b(twd twdVar, twd twdVar2) {
        if (twdVar2 == null || !twdVar2.m57472g() || twdVar2.m57466a() != twdVar.m57466a()) {
            return false;
        }
        twdVar.m57474i(twdVar2.m57468c());
        return true;
    }

    /* renamed from: c */
    public static int m58610c(int i, int i2, twd twdVar) {
        if (twdVar == null || twdVar.m57472g()) {
            return i2;
        }
        if (!twdVar.m57473h(i)) {
            return i2 + 1;
        }
        twdVar.m57474i(i);
        return 0;
    }

    /* renamed from: a */
    public final void m58611a(a4f a4fVar) {
        if (a4fVar != null) {
            ((b4f) a4fVar).m53165g(this.f91381a);
        }
    }

    /* renamed from: d */
    public final int m58612d() {
        int m58614f = m58614f();
        if (m58614f == 0) {
            return 0;
        }
        for (int i = 1; i < this.f91384d + 1; i++) {
            twd[] m52959d = this.f91382b[i].m52959d();
            for (int i2 = 0; i2 < m52959d.length; i2++) {
                twd twdVar = m52959d[i2];
                if (twdVar != null && !twdVar.m57472g()) {
                    m58613e(i, i2, m52959d);
                }
            }
        }
        return m58614f;
    }

    /* renamed from: e */
    public final void m58613e(int i, int i2, twd[] twdVarArr) {
        twd twdVar = twdVarArr[i2];
        twd[] m52959d = this.f91382b[i - 1].m52959d();
        a4f a4fVar = this.f91382b[i + 1];
        twd[] m52959d2 = a4fVar != null ? a4fVar.m52959d() : m52959d;
        twd[] twdVarArr2 = new twd[14];
        twdVarArr2[2] = m52959d[i2];
        twdVarArr2[3] = m52959d2[i2];
        if (i2 > 0) {
            int i3 = i2 - 1;
            twdVarArr2[0] = twdVarArr[i3];
            twdVarArr2[4] = m52959d[i3];
            twdVarArr2[5] = m52959d2[i3];
        }
        if (i2 > 1) {
            int i4 = i2 - 2;
            twdVarArr2[8] = twdVarArr[i4];
            twdVarArr2[10] = m52959d[i4];
            twdVarArr2[11] = m52959d2[i4];
        }
        if (i2 < twdVarArr.length - 1) {
            int i5 = i2 + 1;
            twdVarArr2[1] = twdVarArr[i5];
            twdVarArr2[6] = m52959d[i5];
            twdVarArr2[7] = m52959d2[i5];
        }
        if (i2 < twdVarArr.length - 2) {
            int i6 = i2 + 2;
            twdVarArr2[9] = twdVarArr[i6];
            twdVarArr2[12] = m52959d[i6];
            twdVarArr2[13] = m52959d2[i6];
        }
        for (int i7 = 0; i7 < 14 && !m58609b(twdVar, twdVarArr2[i7]); i7++) {
        }
    }

    /* renamed from: f */
    public final int m58614f() {
        m58615g();
        return m58616h() + m58617i();
    }

    /* renamed from: g */
    public final void m58615g() {
        a4f[] a4fVarArr = this.f91382b;
        a4f a4fVar = a4fVarArr[0];
        if (a4fVar == null || a4fVarArr[this.f91384d + 1] == null) {
            return;
        }
        twd[] m52959d = a4fVar.m52959d();
        twd[] m52959d2 = this.f91382b[this.f91384d + 1].m52959d();
        for (int i = 0; i < m52959d.length; i++) {
            twd twdVar = m52959d[i];
            if (twdVar != null && m52959d2[i] != null && twdVar.m57468c() == m52959d2[i].m57468c()) {
                for (int i2 = 1; i2 <= this.f91384d; i2++) {
                    twd twdVar2 = this.f91382b[i2].m52959d()[i];
                    if (twdVar2 != null) {
                        twdVar2.m57474i(m52959d[i].m57468c());
                        if (!twdVar2.m57472g()) {
                            this.f91382b[i2].m52959d()[i] = null;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public final int m58616h() {
        a4f a4fVar = this.f91382b[0];
        if (a4fVar == null) {
            return 0;
        }
        twd[] m52959d = a4fVar.m52959d();
        int i = 0;
        for (int i2 = 0; i2 < m52959d.length; i2++) {
            twd twdVar = m52959d[i2];
            if (twdVar != null) {
                int m57468c = twdVar.m57468c();
                int i3 = 0;
                for (int i4 = 1; i4 < this.f91384d + 1 && i3 < 2; i4++) {
                    twd twdVar2 = this.f91382b[i4].m52959d()[i2];
                    if (twdVar2 != null) {
                        i3 = m58610c(m57468c, i3, twdVar2);
                        if (!twdVar2.m57472g()) {
                            i++;
                        }
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: i */
    public final int m58617i() {
        a4f[] a4fVarArr = this.f91382b;
        int i = this.f91384d;
        if (a4fVarArr[i + 1] == null) {
            return 0;
        }
        twd[] m52959d = a4fVarArr[i + 1].m52959d();
        int i2 = 0;
        for (int i3 = 0; i3 < m52959d.length; i3++) {
            twd twdVar = m52959d[i3];
            if (twdVar != null) {
                int m57468c = twdVar.m57468c();
                int i4 = 0;
                for (int i5 = this.f91384d + 1; i5 > 0 && i4 < 2; i5--) {
                    twd twdVar2 = this.f91382b[i5].m52959d()[i3];
                    if (twdVar2 != null) {
                        i4 = m58610c(m57468c, i4, twdVar2);
                        if (!twdVar2.m57472g()) {
                            i2++;
                        }
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: j */
    public int m58618j() {
        return this.f91384d;
    }

    /* renamed from: k */
    public int m58619k() {
        return this.f91381a.m57642b();
    }

    /* renamed from: l */
    public int m58620l() {
        return this.f91381a.m57643c();
    }

    /* renamed from: m */
    public C14368ru m58621m() {
        return this.f91383c;
    }

    /* renamed from: n */
    public a4f m58622n(int i) {
        return this.f91382b[i];
    }

    /* renamed from: o */
    public a4f[] m58623o() {
        m58611a(this.f91382b[0]);
        m58611a(this.f91382b[this.f91384d + 1]);
        int i = 928;
        while (true) {
            int m58612d = m58612d();
            if (m58612d <= 0 || m58612d >= i) {
                break;
            }
            i = m58612d;
        }
        return this.f91382b;
    }

    /* renamed from: p */
    public void m58624p(C14368ru c14368ru) {
        this.f91383c = c14368ru;
    }

    /* renamed from: q */
    public void m58625q(int i, a4f a4fVar) {
        this.f91382b[i] = a4fVar;
    }

    public String toString() {
        a4f[] a4fVarArr = this.f91382b;
        a4f a4fVar = a4fVarArr[0];
        if (a4fVar == null) {
            a4fVar = a4fVarArr[this.f91384d + 1];
        }
        Formatter formatter = new Formatter();
        for (int i = 0; i < a4fVar.m52959d().length; i++) {
            formatter.format("CW %3d:", Integer.valueOf(i));
            for (int i2 = 0; i2 < this.f91384d + 2; i2++) {
                a4f a4fVar2 = this.f91382b[i2];
                if (a4fVar2 == null) {
                    formatter.format("    |   ", new Object[0]);
                } else {
                    twd twdVar = a4fVar2.m52959d()[i];
                    if (twdVar == null) {
                        formatter.format("    |   ", new Object[0]);
                    } else {
                        formatter.format(" %3d|%3d", Integer.valueOf(twdVar.m57468c()), Integer.valueOf(twdVar.m57470e()));
                    }
                }
            }
            formatter.format("%n", new Object[0]);
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
