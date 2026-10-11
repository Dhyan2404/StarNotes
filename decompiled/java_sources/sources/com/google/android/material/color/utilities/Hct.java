package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class Hct {

    /* renamed from: a */
    public double f30943a;

    /* renamed from: b */
    public double f30944b;

    /* renamed from: c */
    public double f30945c;

    /* renamed from: d */
    public int f30946d;

    public Hct(int i) {
        m23544a(i);
    }

    public static Hct from(double d, double d2, double d3) {
        return new Hct(HctSolver.solveToInt(d, d2, d3));
    }

    public static Hct fromInt(int i) {
        return new Hct(i);
    }

    /* renamed from: a */
    public final void m23544a(int i) {
        this.f30946d = i;
        Cam16 fromInt = Cam16.fromInt(i);
        this.f30943a = fromInt.getHue();
        this.f30944b = fromInt.getChroma();
        this.f30945c = ColorUtils.lstarFromArgb(i);
    }

    public double getChroma() {
        return this.f30944b;
    }

    public double getHue() {
        return this.f30943a;
    }

    public double getTone() {
        return this.f30945c;
    }

    public Hct inViewingConditions(ViewingConditions viewingConditions) {
        double[] m23536g = Cam16.fromInt(toInt()).m23536g(viewingConditions, null);
        Cam16 m23533e = Cam16.m23533e(m23536g[0], m23536g[1], m23536g[2], ViewingConditions.DEFAULT);
        return from(m23533e.getHue(), m23533e.getChroma(), ColorUtils.lstarFromY(m23536g[1]));
    }

    public void setChroma(double d) {
        m23544a(HctSolver.solveToInt(this.f30943a, d, this.f30945c));
    }

    public void setHue(double d) {
        m23544a(HctSolver.solveToInt(d, this.f30944b, this.f30945c));
    }

    public void setTone(double d) {
        m23544a(HctSolver.solveToInt(this.f30943a, this.f30944b, d));
    }

    public int toInt() {
        return this.f30946d;
    }
}
