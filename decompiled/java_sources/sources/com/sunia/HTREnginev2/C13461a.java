package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;

/* renamed from: com.sunia.HTREnginev2.a */
/* loaded from: classes10.dex */
public class C13461a implements InterfaceC14329r0 {
    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        C14735z0 c14735z0 = C14735z0.f91236d;
        for (C14735z0 c14735z02 : c14735z0Arr) {
            c14735z0 = c14735z0.m58570a(c14735z02);
        }
        return c14735z0;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        C14735z0[] c14735z0Arr2 = new C14735z0[c14735z0Arr.length];
        int i = 0;
        for (C14735z0 c14735z02 : c14735z0Arr) {
            if (c14735z02.m58578e()) {
                i++;
            } else {
                c14735z0 = c14735z0.m58577e(c14735z02);
            }
        }
        C14735z0 m58572b = c14735z0.m58572b(C14735z0.m58560a(i));
        for (int i2 = 0; i2 < c14735z0Arr.length; i2++) {
            if (c14735z0Arr[i2].m58578e()) {
                c14735z0Arr2[i2] = m58572b;
            } else {
                c14735z0Arr2[i2] = C14735z0.f91240h;
            }
        }
        return c14735z0Arr2;
    }
}
