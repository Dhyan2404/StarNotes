package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;

/* renamed from: com.sunia.HTREnginev2.j0 */
/* loaded from: classes10.dex */
public class C13902j0 implements InterfaceC14329r0 {
    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        return C14735z0.m58559a(Math.log(c14735z0Arr[0].m58582i()) / Math.log(c14735z0Arr[1].m58582i()));
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        if (!c14735z0Arr[0].m58578e()) {
            return new C14735z0[]{C14735z0.f91240h, c14735z0Arr[0].m58575d(C14735z0.f91237e.m58572b(c14735z0))};
        }
        if (!c14735z0Arr[1].m58578e()) {
            return new C14735z0[]{c14735z0Arr[1].m58575d(c14735z0), C14735z0.f91240h};
        }
        C14735z0 c14735z02 = C14735z0.f91238f;
        return new C14735z0[]{c14735z02.m58575d(c14735z0), c14735z02};
    }
}
