package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.s0 */
/* loaded from: classes10.dex */
public abstract class AbstractC14375s0 {

    /* renamed from: com.sunia.HTREnginev2.s0$b */
    /* loaded from: classes10.dex */
    public static class b extends AbstractC14375s0 {

        /* renamed from: a */
        public final C14735z0 f83661a;

        @Override // com.sunia.HTREnginev2.AbstractC14375s0
        /* renamed from: a */
        public void mo57114a(C14735z0 c14735z0, Map<Integer, C14735z0> map, SolverContext solverContext) {
        }

        public String toString() {
            return this.f83661a.toString();
        }

        public b(C14735z0 c14735z0) {
            this.f83661a = c14735z0;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14375s0
        /* renamed from: a */
        public C14735z0 mo57113a() {
            return this.f83661a;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.s0$c */
    /* loaded from: classes10.dex */
    public static class c extends AbstractC14375s0 {

        /* renamed from: a */
        public final C14735z0 f83662a;

        /* renamed from: b */
        public final InterfaceC14329r0 f83663b;

        /* renamed from: c */
        public final AbstractC14375s0[] f83664c;

        @Override // com.sunia.HTREnginev2.AbstractC14375s0
        /* renamed from: a */
        public C14735z0 mo57113a() {
            return this.f83662a;
        }

        /* renamed from: b */
        public AbstractC14375s0[] m57115b() {
            return this.f83664c;
        }

        /* renamed from: c */
        public InterfaceC14329r0 m57116c() {
            return this.f83663b;
        }

        public String toString() {
            return MotionUtils.f31761c + this.f83663b + " " + Arrays.toString(this.f83664c) + MotionUtils.f31762d;
        }

        public c(C14735z0 c14735z0, InterfaceC14329r0 interfaceC14329r0, AbstractC14375s0... abstractC14375s0Arr) {
            this.f83662a = c14735z0;
            this.f83663b = interfaceC14329r0;
            this.f83664c = abstractC14375s0Arr;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14375s0
        /* renamed from: a */
        public void mo57114a(C14735z0 c14735z0, Map<Integer, C14735z0> map, SolverContext solverContext) {
            if (this.f83662a.m58578e()) {
                C14735z0[] c14735z0Arr = new C14735z0[this.f83664c.length];
                int i = 0;
                while (true) {
                    AbstractC14375s0[] abstractC14375s0Arr = this.f83664c;
                    if (i >= abstractC14375s0Arr.length) {
                        break;
                    }
                    c14735z0Arr[i] = abstractC14375s0Arr[i].mo57113a();
                    i++;
                }
                C14735z0[] mo52908a = this.f83663b.mo52908a(solverContext, c14735z0, c14735z0Arr);
                for (int i2 = 0; i2 < mo52908a.length; i2++) {
                    C14735z0 c14735z02 = mo52908a[i2];
                    if (!c14735z02.m58578e()) {
                        this.f83664c[i2].mo57114a(c14735z02, map, solverContext);
                    }
                }
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.s0$d */
    /* loaded from: classes10.dex */
    public static class d extends AbstractC14375s0 {

        /* renamed from: a */
        public final int f83665a;

        @Override // com.sunia.HTREnginev2.AbstractC14375s0
        /* renamed from: a */
        public C14735z0 mo57113a() {
            return C14735z0.f91240h;
        }

        public String toString() {
            return "?" + this.f83665a;
        }

        public d(int i) {
            this.f83665a = i;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14375s0
        /* renamed from: a */
        public void mo57114a(C14735z0 c14735z0, Map<Integer, C14735z0> map, SolverContext solverContext) {
            map.put(Integer.valueOf(this.f83665a), c14735z0);
        }
    }

    /* renamed from: a */
    public static b m57109a(C14735z0 c14735z0) {
        return new b(c14735z0);
    }

    /* renamed from: b */
    public static AbstractC14375s0 m57112b(InterfaceC14329r0 interfaceC14329r0) {
        return new c(C14735z0.f91240h, interfaceC14329r0, new AbstractC14375s0[0]);
    }

    /* renamed from: a */
    public abstract C14735z0 mo57113a();

    /* renamed from: a */
    public abstract void mo57114a(C14735z0 c14735z0, Map<Integer, C14735z0> map, SolverContext solverContext);

    /* renamed from: a */
    public static d m57110a(int i) {
        return new d(i);
    }

    /* renamed from: a */
    public static AbstractC14375s0 m57111a(SolverContext solverContext, InterfaceC14329r0 interfaceC14329r0, AbstractC14375s0... abstractC14375s0Arr) {
        C14735z0[] c14735z0Arr = new C14735z0[abstractC14375s0Arr.length];
        int i = 0;
        while (true) {
            if (i < abstractC14375s0Arr.length) {
                C14735z0 mo57113a = abstractC14375s0Arr[i].mo57113a();
                if (mo57113a.m58578e() && !(interfaceC14329r0 instanceof C14429t)) {
                    return new c(C14735z0.f91240h, interfaceC14329r0, abstractC14375s0Arr);
                }
                c14735z0Arr[i] = mo57113a;
                i++;
            } else {
                return new c(interfaceC14329r0.mo52907a(solverContext, c14735z0Arr), interfaceC14329r0, abstractC14375s0Arr);
            }
        }
    }
}
