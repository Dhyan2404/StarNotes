package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;
import java.util.function.DoubleUnaryOperator;

/* renamed from: com.sunia.HTREnginev2.u1 */
/* loaded from: classes10.dex */
public class C14483u1 implements InterfaceC14329r0 {

    /* renamed from: a */
    public final DoubleUnaryOperator f85985a;

    /* renamed from: b */
    public final DoubleUnaryOperator f85986b;

    public C14483u1(DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2) {
        this.f85985a = doubleUnaryOperator;
        this.f85986b = doubleUnaryOperator2;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        return C14735z0.m58559a(this.f85985a.applyAsDouble(c14735z0Arr[0].m58582i()));
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        return new C14735z0[]{C14735z0.m58559a(this.f85986b.applyAsDouble(c14735z0.m58582i()))};
    }
}
