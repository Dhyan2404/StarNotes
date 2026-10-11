package com.miui.penengine.p014d;

import androidx.annotation.NonNull;
import com.miui.penengine.estimate.MiuiMotionEventInfo;

/* renamed from: com.miui.penengine.d.c */
/* loaded from: classes7.dex */
public class C6989c {

    /* renamed from: i */
    public static final double f39613i = 0.5d;

    /* renamed from: j */
    public static final double f39614j = 0.7853981852531433d;

    /* renamed from: k */
    public static final double f39615k = 1.0d;

    /* renamed from: a */
    public float f39616a;

    /* renamed from: b */
    public float f39617b;

    /* renamed from: c */
    public long f39618c;

    /* renamed from: d */
    public double f39619d;

    /* renamed from: e */
    public double f39620e;

    /* renamed from: f */
    public double f39621f;

    /* renamed from: g */
    public boolean f39622g;

    /* renamed from: h */
    public int f39623h;

    public C6989c(double d, double d2, long j, double d3, double d4, double d5, boolean z, int i) {
        this.f39616a = (float) d;
        this.f39617b = (float) d2;
        this.f39618c = j;
        this.f39619d = d3;
        this.f39620e = d4;
        this.f39621f = d5;
        this.f39622g = z;
        this.f39623h = i;
    }

    /* renamed from: a */
    public static C6989c m31290a(MiuiMotionEventInfo miuiMotionEventInfo) {
        if (miuiMotionEventInfo == null) {
            return null;
        }
        return new C6989c(miuiMotionEventInfo.getX(), miuiMotionEventInfo.getY(), miuiMotionEventInfo.getTime(), miuiMotionEventInfo.getPressure(), miuiMotionEventInfo.getOrientation(), miuiMotionEventInfo.getTilt(), miuiMotionEventInfo.isHistoryPoint(), miuiMotionEventInfo.getMotionAction());
    }

    /* renamed from: b */
    public double m31299b() {
        return this.f39620e;
    }

    /* renamed from: c */
    public double m31302c() {
        return this.f39619d;
    }

    /* renamed from: d */
    public double m31304d() {
        return this.f39621f;
    }

    /* renamed from: e */
    public long m31305e() {
        return this.f39618c;
    }

    /* renamed from: f */
    public float m31306f() {
        return this.f39616a;
    }

    /* renamed from: g */
    public float m31307g() {
        return this.f39617b;
    }

    /* renamed from: h */
    public boolean m31308h() {
        return this.f39622g;
    }

    @NonNull
    public String toString() {
        return "MotionPoint{x=" + this.f39616a + ", y=" + this.f39617b + ", time=" + this.f39618c + ", pressure=" + this.f39619d + ", orientation=" + this.f39620e + ", tilt=" + this.f39621f + ", isHistory=" + this.f39622g + ", action=" + this.f39623h + '}';
    }

    public C6989c(double d, double d2, long j, int i) {
        this(d, d2, j, 1.0d, 0.7853981852531433d, 0.5d, false, i);
    }

    /* renamed from: a */
    public int m31291a() {
        return this.f39623h;
    }

    /* renamed from: b */
    public void m31300b(double d) {
        this.f39619d = d;
    }

    /* renamed from: c */
    public void m31303c(double d) {
        this.f39621f = d;
    }

    /* renamed from: a */
    public boolean m31298a(C6989c c6989c) {
        return c6989c != null && c6989c.f39616a == this.f39616a && c6989c.f39617b == this.f39617b;
    }

    /* renamed from: b */
    public void m31301b(float f) {
        this.f39617b = f;
    }

    /* renamed from: a */
    public void m31293a(double d, double d2, long j, double d3, double d4, double d5, boolean z, int i) {
        this.f39616a = (float) d;
        this.f39617b = (float) d2;
        this.f39618c = j;
        this.f39619d = d3;
        this.f39620e = d4;
        this.f39621f = d5;
        this.f39622g = z;
        this.f39623h = i;
    }

    /* renamed from: a */
    public void m31295a(int i) {
        this.f39623h = i;
    }

    /* renamed from: a */
    public void m31297a(boolean z) {
        this.f39622g = z;
    }

    /* renamed from: a */
    public void m31292a(double d) {
        this.f39620e = d;
    }

    /* renamed from: a */
    public void m31296a(long j) {
        this.f39618c = j;
    }

    /* renamed from: a */
    public void m31294a(float f) {
        this.f39616a = f;
    }
}
