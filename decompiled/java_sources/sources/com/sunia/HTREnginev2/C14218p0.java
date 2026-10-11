package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;

/* renamed from: com.sunia.HTREnginev2.p0 */
/* loaded from: classes10.dex */
public class C14218p0 implements InterfaceC14329r0 {
    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        if (c14735z0Arr.length <= 1) {
            return C14735z0.f91240h;
        }
        C14735z0 c14735z0 = C14735z0.f91237e;
        for (C14735z0 c14735z02 : c14735z0Arr) {
            c14735z0 = c14735z0.m58574c(c14735z02);
        }
        return c14735z0;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        C14735z0 m58575d;
        C14735z0[] c14735z0Arr2 = new C14735z0[c14735z0Arr.length];
        int i = 0;
        for (C14735z0 c14735z02 : c14735z0Arr) {
            if (c14735z02.m58578e()) {
                i++;
            } else {
                c14735z0 = c14735z0.m58572b(c14735z02);
            }
        }
        boolean z = true;
        if (i == 1) {
            m58575d = C14735z0.f91237e;
        } else {
            m58575d = c14735z0.m58569a().m58575d(C14735z0.m58561a(1L, i));
            c14735z0 = c14735z0.m58581h() >= 0 ? m58575d : m58575d.m58580g();
        }
        for (int i2 = 0; i2 < c14735z0Arr.length; i2++) {
            if (!c14735z0Arr[i2].m58578e()) {
                c14735z0Arr2[i2] = C14735z0.f91240h;
            } else if (z) {
                c14735z0Arr2[i2] = c14735z0;
                z = false;
            } else {
                c14735z0Arr2[i2] = m58575d;
            }
        }
        return c14735z0Arr2;
    }
}
