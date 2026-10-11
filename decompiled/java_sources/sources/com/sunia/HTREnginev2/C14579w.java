package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;

/* renamed from: com.sunia.HTREnginev2.w */
/* loaded from: classes10.dex */
public class C14579w implements InterfaceC14329r0 {
    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        int m58582i = (int) (c14735z0Arr[0].m58582i() + 0.5d);
        double d = m58582i;
        if (Math.abs(c14735z0Arr[0].m58582i() - d) <= 1.0E-7d && d >= -1.0E-7d) {
            C14735z0 c14735z0 = C14735z0.f91237e;
            for (int i = 1; i <= m58582i && C14629x.m58144a(c14735z0.m58582i()); i++) {
                c14735z0 = c14735z0.m58574c(C14735z0.m58560a(i));
            }
            return c14735z0;
        }
        return C14735z0.f91240h;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        double m58582i = c14735z0.m58582i();
        double d = 1.0d;
        double d2 = m58582i + 1.0d;
        if (C14629x.m58144a(d2)) {
            int i = 1;
            while (d < d2) {
                d *= i;
                if (Math.abs(m58582i - d) / d < 1.0E-4d) {
                    return new C14735z0[]{C14735z0.m58560a(i)};
                }
                i++;
            }
        }
        return new C14735z0[]{C14735z0.f91240h};
    }
}
