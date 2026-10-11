package com.miui.penengine.p016f;

import android.content.Context;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.facade.algorithm.JNIPathEstimateInterface;
import com.miui.penengine.p013c.C6985b;
import com.miui.penengine.p013c.EnumC6984a;
import com.miui.penengine.p014d.C6989c;
import com.miui.penengine.p015e.C6993b;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.miui.penengine.f.j */
/* loaded from: classes7.dex */
public class C7011j implements InterfaceC7004c {

    /* renamed from: A */
    public static final int f39795A = -1;

    /* renamed from: B */
    public static final int f39796B = 150;

    /* renamed from: r */
    public static final String f39797r = "PredictAlgo";

    /* renamed from: s */
    public static final int f39798s = 0;

    /* renamed from: t */
    public static final boolean f39799t = true;

    /* renamed from: u */
    public static final int f39800u = 40;

    /* renamed from: v */
    public static final int f39801v = 12;

    /* renamed from: w */
    public static final int f39802w = 1;

    /* renamed from: x */
    public static final float f39803x = 4.333f;

    /* renamed from: y */
    public static final int f39804y = 50;

    /* renamed from: z */
    public static final int f39805z = 0;

    /* renamed from: g */
    public C7006e f39812g;

    /* renamed from: a */
    public float[][] f39806a = new float[0];

    /* renamed from: b */
    public float[] f39807b = new float[240];

    /* renamed from: c */
    public float f39808c = 12.0f;

    /* renamed from: d */
    public int f39809d = -1;

    /* renamed from: e */
    public final float[] f39810e = new float[12];

    /* renamed from: f */
    public final float[] f39811f = new float[12];

    /* renamed from: h */
    public long f39813h = 5;

    /* renamed from: i */
    public long f39814i = 200;

    /* renamed from: j */
    public float f39815j = 0.0f;

    /* renamed from: k */
    public List<C6989c> f39816k = new ArrayList();

    /* renamed from: l */
    public C7009h f39817l = C7009h.m31416a();

    /* renamed from: m */
    public float[] f39818m = new float[40];

    /* renamed from: n */
    public float[] f39819n = new float[12];

    /* renamed from: o */
    public float[] f39820o = new float[12];

    /* renamed from: p */
    public List<C6989c> f39821p = new ArrayList();

    /* renamed from: q */
    public C6993b f39822q = C6993b.m31315c();

    public C7011j(final Context context) {
        this.f39812g = C7006e.m31386a(context);
        mo31385c();
        EnumC6984a.INSTANCE.m31264a(new Runnable() { // from class: com.sunia.HTREnginev2.ezo
            @Override // java.lang.Runnable
            public final void run() {
                JNIPathEstimateInterface.init(context.getAssets(), "predict/estimate.hdb", 0, true);
            }
        });
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: a */
    public void mo31380a(C6989c c6989c) {
        System.nanoTime();
        if (c6989c.m31291a() == 0) {
            this.f39816k.clear();
            mo31385c();
            this.f39817l.m31420b(c6989c);
            this.f39816k.add(c6989c);
        }
        if (this.f39816k.size() > 0) {
            if (this.f39816k.get(r0.size() - 1).m31305e() == c6989c.m31305e()) {
                if (!c6989c.m31308h()) {
                    return;
                }
                c6989c.m31296a(c6989c.m31305e() + 1);
                C6985b.m31271e(f39797r, "Same Time point");
            }
        }
        if (c6989c.m31291a() == 2) {
            this.f39815j = (float) (C7008g.m31407a(this.f39816k.get(r2.size() - 1), c6989c) + this.f39815j);
            this.f39817l.m31417a(c6989c);
            c6989c.m31294a(this.f39817l.m31423e());
            c6989c.m31301b(this.f39817l.m31424f());
            c6989c.m31303c(this.f39817l.m31422d());
            c6989c.m31292a(this.f39817l.m31419b());
            c6989c.m31300b(this.f39817l.m31421c());
            this.f39816k.add(c6989c);
        }
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: b */
    public String mo31382b() {
        return "v2.1.5";
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: c */
    public void mo31385c() {
        this.f39812g.m31395c();
        this.f39817l.m31425g();
        this.f39815j = 0.0f;
        for (int i = 0; i < 12; i++) {
            this.f39810e[i] = 0.0f;
            this.f39811f[i] = 0.0f;
        }
    }

    /* renamed from: d */
    public float[] m31437d() {
        return this.f39812g.f39774j;
    }

    /* renamed from: a */
    public final void m31436a(String str, float[] fArr, float[] fArr2) {
        StringBuilder sb = new StringBuilder(str);
        for (int i = 0; i < fArr.length; i++) {
            sb.append(MotionUtils.f31761c);
            sb.append(fArr[i]);
            sb.append(", ");
            sb.append(fArr2[i]);
            sb.append(") ");
        }
        m31435a(sb.toString());
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: b */
    public void mo31384b(long j) {
        this.f39814i = j;
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: a */
    public C7007f[] mo31381a() {
        int i;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float[] fArr;
        C7011j c7011j = this;
        System.nanoTime();
        float m31320b = c7011j.f39822q.m31320b();
        boolean z = c7011j.f39815j > ((float) c7011j.f39814i) / m31320b;
        int size = c7011j.f39816k.size() - 1;
        while (c7011j.f39821p.size() < 42) {
            c7011j.f39821p.add(new C6989c(0.0d, 0.0d, 0L, 0));
        }
        if (!C7008g.m31411a(c7011j.f39816k, c7011j.f39821p, 4.333f, size, z) || !c7011j.f39812g.m31394b(c7011j.f39821p)) {
            return null;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < 40) {
            int i4 = i2 + 2;
            C6989c c6989c = c7011j.f39821p.get(i4);
            int i5 = i4 - 1;
            C6989c c6989c2 = c7011j.f39821p.get(i5);
            int i6 = i3 + 1;
            c7011j.f39807b[i3] = c6989c.m31306f() - c6989c2.m31306f();
            int i7 = i6 + 1;
            c7011j.f39807b[i6] = c6989c.m31307g() - c6989c2.m31307g();
            int i8 = i7 + 1;
            c7011j.f39807b[i7] = (float) (c6989c.m31299b() - c6989c2.m31299b());
            int i9 = i8 + 1;
            int i10 = size;
            c7011j.f39807b[i8] = (float) (c6989c.m31304d() - c6989c2.m31304d());
            int i11 = i9 + 1;
            c7011j.f39807b[i9] = (float) (c6989c.m31302c() - c6989c2.m31302c());
            int i12 = i4 - 2;
            c7011j.f39818m[i2] = C7008g.m31408a(c7011j.f39821p.get(i12).m31306f(), c7011j.f39821p.get(i12).m31307g(), c7011j.f39821p.get(i5).m31306f(), c7011j.f39821p.get(i5).m31307g(), c6989c.m31306f(), c6989c.m31307g());
            i3 = i11 + 1;
            c7011j.f39807b[i11] = c7011j.f39818m[i2];
            i2++;
            size = i10;
        }
        int i13 = size;
        System.nanoTime();
        float[] runModel = JNIPathEstimateInterface.runModel(c7011j.f39807b, 26, 0);
        System.nanoTime();
        if (runModel == null || runModel.length != 26) {
            return null;
        }
        float max = Math.max(runModel[25], 0.0f);
        float max2 = Math.max(0.01f, m31320b);
        float f6 = c7011j.f39815j;
        float f7 = (float) c7011j.f39814i;
        if (f6 < f7 / max2) {
            f = ((f6 * max2) / f7) * 0.7f;
            i = i13;
        } else {
            i = i13;
            f = i < 40 ? (i * 1.0f) / 40.0f : (((c7011j.f39808c / 12.0f) * 0.6f) + 0.4f) * (((0.55f / max2) * 0.35f) + 0.65f);
        }
        float min = Math.min(max * f, c7011j.f39808c);
        int i14 = (int) min;
        double min2 = Math.min(150.0d, c7011j.f39812g.m31392b());
        int i15 = 0;
        double d = 0.0d;
        while (i15 < i14) {
            int i16 = i15 * 2;
            c7011j.f39819n[i15] = c7011j.f39816k.get(i).m31306f() + runModel[i16];
            c7011j.f39820o[i15] = c7011j.f39816k.get(i).m31307g() + runModel[i16 + 1];
            if (i15 <= 0 || i15 >= i14) {
                f5 = min;
                fArr = runModel;
            } else {
                float[] fArr2 = c7011j.f39819n;
                double d2 = fArr2[i15];
                float[] fArr3 = c7011j.f39820o;
                double d3 = fArr3[i15];
                int i17 = i15 - 1;
                fArr = runModel;
                double d4 = fArr2[i17];
                float f8 = fArr3[i17];
                f5 = min;
                d += C7008g.m31406a(d2, d3, d4, f8);
                if (d > min2 && !z) {
                    min = f5 - (i14 - i15);
                    i14 = i15;
                    i15++;
                    c7011j = this;
                    runModel = fArr;
                }
            }
            min = f5;
            i15++;
            c7011j = this;
            runModel = fArr;
        }
        float f9 = min;
        float[] fArr4 = runModel;
        float m31387a = c7011j.f39812g.m31387a();
        for (int i18 = 1; i18 <= 12; i18++) {
            int i19 = i18 - 1;
            int min3 = Math.min(i19, 11);
            if (i18 <= i14) {
                float f10 = c7011j.f39819n[i19];
                float f11 = c7011j.f39820o[i19];
                float f12 = 1.0f - m31387a;
                float m31306f = c7011j.f39816k.get(i).m31306f() + (c7011j.f39810e[min3] * m31387a) + ((f10 - c7011j.f39816k.get(i).m31306f()) * f12);
                float m31307g = c7011j.f39816k.get(i).m31307g() + (c7011j.f39811f[min3] * m31387a) + ((f11 - c7011j.f39816k.get(i).m31307g()) * f12);
                c7011j.f39810e[i19] = m31306f - c7011j.f39816k.get(i).m31306f();
                c7011j.f39811f[i19] = m31307g - c7011j.f39816k.get(i).m31307g();
                c7011j.f39819n[i19] = m31306f;
                c7011j.f39820o[i19] = m31307g;
            } else if (i18 >= 2) {
                int i20 = i18 * 2;
                float m31306f2 = c7011j.f39816k.get(i).m31306f() + fArr4[i20 - 2];
                float m31307g2 = c7011j.f39816k.get(i).m31307g() + fArr4[i20 - 1];
                float f13 = 1.0f - m31387a;
                float m31306f3 = c7011j.f39816k.get(i).m31306f() + (c7011j.f39810e[min3] * m31387a) + ((m31306f2 - c7011j.f39816k.get(i).m31306f()) * f13);
                float m31307g3 = c7011j.f39816k.get(i).m31307g() + (c7011j.f39811f[min3] * m31387a) + ((m31307g2 - c7011j.f39816k.get(i).m31307g()) * f13);
                c7011j.f39810e[i19] = m31306f3 - c7011j.f39816k.get(i).m31306f();
                c7011j.f39811f[i19] = m31307g3 - c7011j.f39816k.get(i).m31307g();
                if (i18 == i14 + 1) {
                    float f14 = f9 - i14;
                    float[] fArr5 = c7011j.f39819n;
                    int i21 = i18 - 2;
                    float f15 = fArr5[i21];
                    fArr5[i21] = ((m31306f3 - f15) * f14) + f15;
                    float[] fArr6 = c7011j.f39820o;
                    float f16 = fArr6[i21];
                    fArr6[i21] = ((m31307g3 - f16) * f14) + f16;
                }
                float[] fArr7 = c7011j.f39819n;
                int i22 = i18 - 2;
                fArr7[i19] = fArr7[i22];
                float[] fArr8 = c7011j.f39820o;
                fArr8[i19] = fArr8[i22];
            }
        }
        System.nanoTime();
        c7011j.f39817l.m31418a(c7011j.f39819n, c7011j.f39820o, i14);
        System.nanoTime();
        int i23 = c7011j.f39809d;
        if (i23 == -1) {
            i23 = i14;
        }
        int max3 = Math.max(1, i23);
        C7007f[] c7007fArr = new C7007f[max3];
        if (i14 > 0) {
            float f17 = max3;
            int i24 = (int) ((4.333f * f9) / f17);
            float f18 = 1.0f;
            float f19 = (i14 * 1.0f) / f17;
            int i25 = 0;
            while (i25 < max3) {
                float min4 = Math.min(i25 * f19, f9 - f18);
                int max4 = (int) Math.max(0.0d, Math.floor(min4));
                float f20 = max4;
                if (f20 == min4) {
                    f4 = c7011j.f39819n[max4];
                    f3 = c7011j.f39820o[max4];
                    f2 = 1.0f;
                } else {
                    float[] fArr9 = c7011j.f39819n;
                    f2 = 1.0f;
                    float f21 = (1.0f - min4) + f20;
                    int i26 = max4 + 1;
                    float f22 = min4 - f20;
                    float f23 = (fArr9[i26] * f22) + (fArr9[max4] * f21);
                    float[] fArr10 = c7011j.f39820o;
                    f3 = (fArr10[max4] * f21) + (fArr10[i26] * f22);
                    f4 = f23;
                }
                c7007fArr[i25] = new C7007f(f4, f3, c7011j.f39816k.get(i).m31305e() + (i25 * i24));
                i25++;
                f9 = f9;
                f18 = f2;
            }
        } else {
            C6989c c6989c3 = c7011j.f39816k.get(i);
            for (int i27 = 0; i27 < max3; i27++) {
                c7007fArr[i27] = new C7007f(c6989c3.m31306f(), c6989c3.m31307g(), c6989c3.m31305e());
            }
        }
        return c7007fArr;
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: b */
    public void mo31383b(int i) {
        if (i > 0 && i <= 50) {
            this.f39808c = Math.min(12.0f, (((i * 0.85f) / 50.0f) + 0.15f) * 12.0f);
        }
        if (i <= 0) {
            this.f39808c = 0.0f;
        }
    }

    /* renamed from: a */
    public final void m31435a(String str) {
        C6985b.m31269c(f39797r, str);
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: a */
    public void mo31379a(long j) {
        this.f39813h = j;
    }

    @Override // com.miui.penengine.p016f.InterfaceC7004c
    /* renamed from: a */
    public void mo31378a(int i) {
        this.f39809d = i;
    }
}
