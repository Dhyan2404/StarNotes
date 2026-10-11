package com.sunia.HTREnginev2;

import com.sunia.calculatorv2.ink.solver.SolverContext;
import java.util.function.DoubleUnaryOperator;

/* renamed from: com.sunia.HTREnginev2.t1 */
/* loaded from: classes10.dex */
public class C14431t1 implements InterfaceC14329r0 {

    /* renamed from: a */
    public final DoubleUnaryOperator f84751a;

    /* renamed from: b */
    public final DoubleUnaryOperator f84752b;

    /* renamed from: c */
    public final boolean f84753c;

    public C14431t1(DoubleUnaryOperator doubleUnaryOperator, DoubleUnaryOperator doubleUnaryOperator2, boolean z) {
        this.f84751a = doubleUnaryOperator;
        this.f84752b = doubleUnaryOperator2;
        this.f84753c = z;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0 mo52907a(SolverContext solverContext, C14735z0... c14735z0Arr) {
        double m58582i = c14735z0Arr[0].m58582i();
        if (solverContext.isDegree() && !this.f84753c) {
            m58582i = (m58582i * 3.141592653589793d) / 180.0d;
        }
        double applyAsDouble = this.f84751a.applyAsDouble(m58582i);
        if (solverContext.isDegree() && this.f84753c) {
            applyAsDouble = (applyAsDouble * 180.0d) / 3.141592653589793d;
        }
        return C14735z0.m58559a(applyAsDouble);
    }

    @Override // com.sunia.HTREnginev2.InterfaceC14329r0
    /* renamed from: a */
    public C14735z0[] mo52908a(SolverContext solverContext, C14735z0 c14735z0, C14735z0... c14735z0Arr) {
        double m58582i = c14735z0.m58582i();
        if (solverContext.isDegree() && this.f84753c) {
            m58582i = (m58582i * 3.141592653589793d) / 180.0d;
        }
        double applyAsDouble = this.f84752b.applyAsDouble(m58582i);
        if (solverContext.isDegree() && !this.f84753c) {
            applyAsDouble = (applyAsDouble * 180.0d) / 3.141592653589793d;
        }
        return new C14735z0[]{C14735z0.m58559a(applyAsDouble)};
    }
}
