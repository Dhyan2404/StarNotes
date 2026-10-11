package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;

/* renamed from: com.sunia.HTREnginev2.t */
/* loaded from: classes10.dex */
public class C14429t implements InterfaceC14329r0 {
    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        for (C14735z0 c14735z0 : c14735z0Arr) {
            if (!c14735z0.m58578e()) {
                return c14735z0;
            }
        }
        return C14735z0.f91240h;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        C14735z0[] c14735z0Arr2 = new C14735z0[c14735z0Arr.length];
        for (int i = 0; i < c14735z0Arr.length; i++) {
            if (c14735z0Arr[i].m58578e()) {
                c14735z0Arr2[i] = c14735z0;
            } else {
                c14735z0Arr2[i] = C14735z0.f91240h;
            }
        }
        return c14735z0Arr2;
    }
}
