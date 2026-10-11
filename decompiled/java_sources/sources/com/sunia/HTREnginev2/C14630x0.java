package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;

/* renamed from: com.sunia.HTREnginev2.x0 */
/* loaded from: classes10.dex */
public class C14630x0 implements InterfaceC14329r0 {
    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        return c14735z0Arr[0].m58575d(c14735z0Arr[1]);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        C14735z0 m58575d;
        if (!c14735z0Arr[0].m58578e()) {
            return new C14735z0[]{C14735z0.f91240h, C14735z0.m58559a(Math.log(c14735z0.m58582i()) / Math.log(c14735z0Arr[0].m58582i()))};
        }
        if (c14735z0Arr[1].m58578e()) {
            return new C14735z0[]{c14735z0, C14735z0.f91237e};
        }
        if (c14735z0.m58581h() < 0) {
            if (c14735z0Arr[1].m58579f() && c14735z0Arr[1].m58571b() % 2 == 1 && Math.abs(c14735z0Arr[1].m58573c()) % 2 == 1) {
                m58575d = c14735z0.m58580g().m58575d(C14735z0.f91237e.m58572b(c14735z0Arr[1])).m58580g();
            } else {
                m58575d = C14735z0.f91240h;
            }
        } else {
            m58575d = c14735z0.m58575d(C14735z0.f91237e.m58572b(c14735z0Arr[1]));
        }
        return new C14735z0[]{m58575d, C14735z0.f91240h};
    }
}
