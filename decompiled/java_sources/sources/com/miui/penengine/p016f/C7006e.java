package com.miui.penengine.p016f;

import android.content.Context;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p014d.C6989c;
import com.miui.penengine.p015e.C6993b;
import java.util.List;

/* renamed from: com.miui.penengine.f.e */
/* loaded from: classes7.dex */
public class C7006e {

    /* renamed from: k */
    public static final String f39762k = "predictParam";

    /* renamed from: l */
    public static boolean f39763l = true;

    /* renamed from: m */
    public static C7006e f39764m;

    /* renamed from: a */
    public C6993b f39765a = C6993b.m31315c();

    /* renamed from: b */
    public float f39766b = 0.0f;

    /* renamed from: c */
    public float f39767c = 0.0f;

    /* renamed from: d */
    public double f39768d = 999.0d;

    /* renamed from: e */
    public float f39769e = 0.0f;

    /* renamed from: f */
    public int f39770f = 0;

    /* renamed from: g */
    public boolean f39771g = false;

    /* renamed from: h */
    public float f39772h = 1.0f;

    /* renamed from: i */
    public float f39773i = 0.0f;

    /* renamed from: j */
    public float[] f39774j;

    public C7006e(Context context) {
        m31395c();
    }

    /* renamed from: a */
    public final float m31388a(List<C6989c> list, int i, int i2) {
        int i3 = i;
        if (i2 <= i3) {
            return 1.0f;
        }
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        for (int i4 = i3; i4 < i2; i4 += 2) {
            C6989c c6989c = list.get(i4);
            f2 += c6989c.m31306f();
            f += c6989c.m31306f() * c6989c.m31306f();
            f3 += c6989c.m31307g() * c6989c.m31306f();
            f4 += c6989c.m31307g();
        }
        float f5 = i2 - i3;
        float f6 = (f5 * f) - (f2 * f2);
        float f7 = ((double) Math.abs(f6)) > 1.0E-5d ? ((f5 * f3) - (f2 * f4)) / f6 : 0.0f;
        float f8 = ((double) Math.abs(f6)) > 1.0E-5d ? ((f * f4) - (f2 * f3)) / f6 : 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        while (i3 < i2) {
            C6989c c6989c2 = list.get(i3);
            f9 += ((c6989c2.m31307g() - (c6989c2.m31306f() * f7)) - f8) * ((c6989c2.m31307g() - (c6989c2.m31306f() * f7)) - f8);
            float f11 = f4 / f5;
            f10 += (f11 - c6989c2.m31307g()) * (f11 - c6989c2.m31307g());
            i3++;
        }
        if (f9 > f10) {
            return 0.0f;
        }
        if (Math.abs(f10) > 1.0E-5d) {
            return 1.0f - (f9 / f10);
        }
        return 1.0f;
    }

    /* renamed from: b */
    public final float m31393b(List<C6989c> list, int i, int i2) {
        if (i >= i2) {
            return 1.0f;
        }
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i3 = i; i3 < i2; i3++) {
            float f3 = i2 - i;
            f += list.get(i3).m31306f() / f3;
            f2 += list.get(i3).m31307g() / f3;
        }
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        while (i < i2) {
            C6989c c6989c = list.get(i);
            f6 += (c6989c.m31307g() - f2) * (c6989c.m31306f() - f);
            f5 += (c6989c.m31306f() - f) * (c6989c.m31306f() - f);
            f4 += (c6989c.m31307g() - f2) * (c6989c.m31307g() - f2);
            i += 2;
        }
        double d = f5;
        double d2 = f4;
        if (Math.sqrt(d2) * Math.sqrt(d) < 1.0E-4d) {
            return 0.0f;
        }
        return (float) Math.abs(f6 / (Math.sqrt(d2) * Math.sqrt(d)));
    }

    /* renamed from: c */
    public void m31395c() {
        this.f39773i = 0.0f;
        this.f39766b = 0.0f;
        this.f39768d = 999.0d;
        this.f39771g = false;
        this.f39770f = 0;
        this.f39769e = 0.0f;
        this.f39772h = 1.0f;
    }

    /* renamed from: d */
    public void m31397d(List<C6989c> list) {
        m31399f(list);
        m31396c(list);
        float f = 1.0f;
        if (this.f39770f > 4) {
            f = ((((1.0f - Math.min(this.f39766b / 6.0f, 1.0f)) * 1.7f) + 3.0f) / 5.5f) + 0.76f;
        } else {
            float f2 = this.f39766b;
            if (f2 < 1.6f) {
                this.f39772h = ((f2 * 0.8f) / 3.2f) + 0.6f;
                return;
            }
        }
        this.f39772h = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003f  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m31398e(java.util.List<com.miui.penengine.p014d.C6989c> r5) {
        /*
            r4 = this;
            boolean r5 = r4.f39771g
            if (r5 != 0) goto Ld
            float r5 = r4.f39769e
            r0 = 1036831949(0x3dcccccd, float:0.1)
        L9:
            float r5 = r5 * r0
        La:
            r4.f39773i = r5
            goto L37
        Ld:
            int r5 = r4.f39770f
            r0 = 6
            if (r5 <= r0) goto L2e
            r0 = 7
            int r5 = java.lang.Math.min(r5, r0)
            double r0 = (double) r5
            r2 = 4593851763903000740(0x3fc0a3d70a3d70a4, double:0.13)
            double r0 = r0 * r2
            float r5 = r4.f39766b
            r2 = 1090519040(0x41000000, float:8.0)
            float r5 = java.lang.Math.min(r5, r2)
            r2 = 1035489772(0x3db851ec, float:0.09)
            float r5 = r5 * r2
            double r2 = (double) r5
            double r0 = r0 - r2
            float r5 = (float) r0
            goto La
        L2e:
            int r5 = java.lang.Math.min(r5, r0)
            float r5 = (float) r5
            r0 = 1025758986(0x3d23d70a, float:0.04)
            goto L9
        L37:
            float r5 = r4.f39766b
            r0 = 1065353216(0x3f800000, float:1.0)
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 >= 0) goto L47
            float r5 = r4.f39769e
            r0 = 1045891645(0x3e570a3d, float:0.21)
            float r5 = r5 * r0
            r4.f39773i = r5
        L47:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.miui.penengine.p016f.C7006e.m31398e(java.util.List):void");
    }

    /* renamed from: f */
    public final void m31399f(List<C6989c> list) {
        int size = list.size();
        this.f39766b = 0.0f;
        this.f39767c = 0.0f;
        float max = Math.max(0.01f, this.f39765a.m31320b());
        int i = 0;
        while (i < size - 1) {
            int i2 = i + 1;
            C6989c c6989c = list.get(i2);
            C6989c c6989c2 = list.get(i);
            float m31306f = (c6989c.m31306f() - c6989c2.m31306f()) * max;
            float m31307g = (c6989c.m31307g() - c6989c2.m31307g()) * max;
            float m31305e = ((float) (c6989c.m31305e() - c6989c2.m31305e())) * 1.0f;
            float hypot = (float) Math.hypot(m31306f / m31305e, m31307g / m31305e);
            if (i >= size / 2) {
                float f = this.f39766b;
                if (f <= hypot) {
                    f = hypot;
                }
                this.f39766b = f;
                this.f39767c += hypot;
            }
            i = i2;
        }
        this.f39767c /= size - (size / 2);
    }

    /* renamed from: a */
    public final void m31391a(List<C6989c> list) {
        StringBuilder sb = new StringBuilder("After Resample Step1 ");
        for (int i = 0; i < list.size(); i++) {
            m31389a(list.get(i), sb);
        }
        m31390a(sb.toString());
    }

    /* renamed from: b */
    public double m31392b() {
        return this.f39768d;
    }

    /* renamed from: c */
    public final void m31396c(List<C6989c> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        int size = list.size();
        float m31393b = m31393b(list, (size / 2) + 0, size);
        float m31393b2 = m31393b(list, 0, size);
        boolean z = Math.min(m31393b2, m31393b) > 0.98f;
        this.f39771g = z;
        if (z) {
            this.f39770f++;
        } else {
            this.f39770f = 0;
        }
        this.f39769e = m31393b2;
    }

    /* renamed from: a */
    public float m31387a() {
        return this.f39773i;
    }

    /* renamed from: b */
    public boolean m31394b(List<C6989c> list) {
        m31397d(list);
        m31398e(list);
        return true;
    }

    /* renamed from: a */
    public static C7006e m31386a(Context context) {
        if (f39764m == null) {
            f39764m = new C7006e(context);
        }
        return f39764m;
    }

    /* renamed from: a */
    public final void m31390a(String str) {
        if (f39763l) {
            C6985b.m31269c(f39762k, str);
        }
    }

    /* renamed from: a */
    public final void m31389a(C6989c c6989c, StringBuilder sb) {
        sb.append(MotionUtils.f31761c);
        sb.append(c6989c.m31306f());
        sb.append(",");
        sb.append(c6989c.m31307g());
        sb.append(",");
        sb.append(c6989c.m31305e());
        sb.append(MotionUtils.f31762d);
    }
}
