package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;
import java.util.function.Function;

/* renamed from: com.sunia.HTREnginev2.v1 */
/* loaded from: classes10.dex */
public class C14529v1 implements InterfaceC14329r0 {

    /* renamed from: a */
    public final Function<C14735z0, C14735z0> f87021a;

    /* renamed from: b */
    public final Function<C14735z0, C14735z0> f87022b;

    public C14529v1(Function<C14735z0, C14735z0> function, Function<C14735z0, C14735z0> function2) {
        this.f87021a = function;
        this.f87022b = function2;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        return this.f87021a.apply(c14735z0Arr[0]);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        return new C14735z0[]{this.f87022b.apply(c14735z0)};
    }
}
