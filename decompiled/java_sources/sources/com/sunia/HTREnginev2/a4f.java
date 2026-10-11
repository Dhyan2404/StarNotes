package com.sunia.HTREnginev2;

import java.util.Formatter;

/* loaded from: classes4.dex */
public class a4f {

    /* renamed from: c */
    public static final int f64315c = 5;

    /* renamed from: a */
    public final C14368ru f64316a;

    /* renamed from: b */
    public final twd[] f64317b;

    public a4f(C14368ru c14368ru) {
        this.f64316a = new C14368ru(c14368ru);
        this.f64317b = new twd[(c14368ru.m57013f() - c14368ru.m57015h()) + 1];
    }

    /* renamed from: a */
    public final C14368ru m52956a() {
        return this.f64316a;
    }

    /* renamed from: b */
    public final twd m52957b(int i) {
        return this.f64317b[m52960e(i)];
    }

    /* renamed from: c */
    public final twd m52958c(int i) {
        twd twdVar;
        twd twdVar2;
        twd m52957b = m52957b(i);
        if (m52957b != null) {
            return m52957b;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            int m52960e = m52960e(i) - i2;
            if (m52960e >= 0 && (twdVar2 = this.f64317b[m52960e]) != null) {
                return twdVar2;
            }
            int m52960e2 = m52960e(i) + i2;
            twd[] twdVarArr = this.f64317b;
            if (m52960e2 < twdVarArr.length && (twdVar = twdVarArr[m52960e2]) != null) {
                return twdVar;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final twd[] m52959d() {
        return this.f64317b;
    }

    /* renamed from: e */
    public final int m52960e(int i) {
        return i - this.f64316a.m57015h();
    }

    /* renamed from: f */
    public final void m52961f(int i, twd twdVar) {
        this.f64317b[m52960e(i)] = twdVar;
    }

    public String toString() {
        Formatter formatter = new Formatter();
        int i = 0;
        for (twd twdVar : this.f64317b) {
            if (twdVar == null) {
                formatter.format("%3d:    |   %n", Integer.valueOf(i));
                i++;
            } else {
                formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i), Integer.valueOf(twdVar.m57468c()), Integer.valueOf(twdVar.m57470e()));
                i++;
            }
        }
        String formatter2 = formatter.toString();
        formatter.close();
        return formatter2;
    }
}
