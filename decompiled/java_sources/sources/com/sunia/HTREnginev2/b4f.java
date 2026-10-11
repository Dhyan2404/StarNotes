package com.sunia.HTREnginev2;

import com.google.zxing.ResultPoint;

/* loaded from: classes4.dex */
public final class b4f extends a4f {

    /* renamed from: d */
    public final boolean f65378d;

    public b4f(C14368ru c14368ru, boolean z) {
        super(c14368ru);
        this.f65378d = z;
    }

    /* renamed from: g */
    public void m53165g(C14510um c14510um) {
        twd[] m52959d = m52959d();
        m53171m();
        m53170l(m52959d, c14510um);
        C14368ru m52956a = m52956a();
        ResultPoint m57016i = this.f65378d ? m52956a.m57016i() : m52956a.m57017j();
        ResultPoint m57010c = this.f65378d ? m52956a.m57010c() : m52956a.m57011d();
        int m52960e = m52960e((int) m57016i.getY());
        int m52960e2 = m52960e((int) m57010c.getY());
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        while (m52960e < m52960e2) {
            twd twdVar = m52959d[m52960e];
            if (twdVar != null) {
                int m57468c = twdVar.m57468c() - i;
                if (m57468c == 0) {
                    i2++;
                } else {
                    if (m57468c == 1) {
                        i3 = Math.max(i3, i2);
                        i = twdVar.m57468c();
                    } else if (m57468c < 0 || twdVar.m57468c() >= c14510um.m57643c() || m57468c > m52960e) {
                        m52959d[m52960e] = null;
                    } else {
                        if (i3 > 2) {
                            m57468c *= i3 - 2;
                        }
                        boolean z = m57468c >= m52960e;
                        for (int i4 = 1; i4 <= m57468c && !z; i4++) {
                            z = m52959d[m52960e - i4] != null;
                        }
                        if (z) {
                            m52959d[m52960e] = null;
                        } else {
                            i = twdVar.m57468c();
                        }
                    }
                    i2 = 1;
                }
            }
            m52960e++;
        }
    }

    /* renamed from: h */
    public final void m53166h(C14510um c14510um) {
        C14368ru m52956a = m52956a();
        ResultPoint m57016i = this.f65378d ? m52956a.m57016i() : m52956a.m57017j();
        ResultPoint m57010c = this.f65378d ? m52956a.m57010c() : m52956a.m57011d();
        int m52960e = m52960e((int) m57010c.getY());
        twd[] m52959d = m52959d();
        int i = -1;
        int i2 = 0;
        int i3 = 1;
        for (int m52960e2 = m52960e((int) m57016i.getY()); m52960e2 < m52960e; m52960e2++) {
            twd twdVar = m52959d[m52960e2];
            if (twdVar != null) {
                twdVar.m57475j();
                int m57468c = twdVar.m57468c() - i;
                if (m57468c == 0) {
                    i2++;
                } else {
                    if (m57468c == 1) {
                        i3 = Math.max(i3, i2);
                        i = twdVar.m57468c();
                    } else if (twdVar.m57468c() >= c14510um.m57643c()) {
                        m52959d[m52960e2] = null;
                    } else {
                        i = twdVar.m57468c();
                    }
                    i2 = 1;
                }
            }
        }
    }

    /* renamed from: i */
    public C14510um m53167i() {
        twd[] m52959d = m52959d();
        C14609wm c14609wm = new C14609wm();
        C14609wm c14609wm2 = new C14609wm();
        C14609wm c14609wm3 = new C14609wm();
        C14609wm c14609wm4 = new C14609wm();
        for (twd twdVar : m52959d) {
            if (twdVar != null) {
                twdVar.m57475j();
                int m57470e = twdVar.m57470e() % 30;
                int m57468c = twdVar.m57468c();
                if (!this.f65378d) {
                    m57468c += 2;
                }
                int i = m57468c % 3;
                if (i == 0) {
                    c14609wm2.m58093c((m57470e * 3) + 1);
                } else if (i == 1) {
                    c14609wm4.m58093c(m57470e / 3);
                    c14609wm3.m58093c(m57470e % 3);
                } else if (i == 2) {
                    c14609wm.m58093c(m57470e + 1);
                }
            }
        }
        if (c14609wm.m58092b().length == 0 || c14609wm2.m58092b().length == 0 || c14609wm3.m58092b().length == 0 || c14609wm4.m58092b().length == 0 || c14609wm.m58092b()[0] <= 0 || c14609wm2.m58092b()[0] + c14609wm3.m58092b()[0] < 3 || c14609wm2.m58092b()[0] + c14609wm3.m58092b()[0] > 90) {
            return null;
        }
        C14510um c14510um = new C14510um(c14609wm.m58092b()[0], c14609wm2.m58092b()[0], c14609wm3.m58092b()[0], c14609wm4.m58092b()[0]);
        m53170l(m52959d, c14510um);
        return c14510um;
    }

    /* renamed from: j */
    public int[] m53168j() {
        int m57468c;
        C14510um m53167i = m53167i();
        if (m53167i == null) {
            return null;
        }
        m53166h(m53167i);
        int m57643c = m53167i.m57643c();
        int[] iArr = new int[m57643c];
        for (twd twdVar : m52959d()) {
            if (twdVar != null && (m57468c = twdVar.m57468c()) < m57643c) {
                iArr[m57468c] = iArr[m57468c] + 1;
            }
        }
        return iArr;
    }

    /* renamed from: k */
    public boolean m53169k() {
        return this.f65378d;
    }

    /* renamed from: l */
    public final void m53170l(twd[] twdVarArr, C14510um c14510um) {
        for (int i = 0; i < twdVarArr.length; i++) {
            twd twdVar = twdVarArr[i];
            if (twdVar != null) {
                int m57470e = twdVar.m57470e() % 30;
                int m57468c = twdVar.m57468c();
                if (m57468c > c14510um.m57643c()) {
                    twdVarArr[i] = null;
                } else {
                    if (!this.f65378d) {
                        m57468c += 2;
                    }
                    int i2 = m57468c % 3;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 == 2 && m57470e + 1 != c14510um.m57641a()) {
                                twdVarArr[i] = null;
                            }
                        } else if (m57470e / 3 != c14510um.m57642b() || m57470e % 3 != c14510um.m57644d()) {
                            twdVarArr[i] = null;
                        }
                    } else if ((m57470e * 3) + 1 != c14510um.m57645e()) {
                        twdVarArr[i] = null;
                    }
                }
            }
        }
    }

    /* renamed from: m */
    public final void m53171m() {
        for (twd twdVar : m52959d()) {
            if (twdVar != null) {
                twdVar.m57475j();
            }
        }
    }

    @Override // com.sunia.HTREnginev2.a4f
    public String toString() {
        return "IsLeft: " + this.f65378d + '\n' + super.toString();
    }
}
