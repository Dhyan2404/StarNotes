package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;

/* renamed from: com.sunia.HTREnginev2.s1 */
/* loaded from: classes10.dex */
public class C14376s1 {

    /* renamed from: a */
    public final float f83691a;

    /* renamed from: b */
    public final float f83692b;

    public C14376s1(float f, float f2) {
        this.f83691a = f;
        this.f83692b = f2;
    }

    /* renamed from: a */
    public long mo57118a() {
        return 0L;
    }

    /* renamed from: b */
    public float m57119b() {
        return this.f83691a;
    }

    /* renamed from: c */
    public float m57120c() {
        return this.f83692b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C14376s1) {
            C14376s1 c14376s1 = (C14376s1) obj;
            if (c14376s1.f83691a == this.f83691a && c14376s1.f83692b == this.f83692b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((Float.floatToIntBits(this.f83691a) + 235) * 47) + Float.floatToIntBits(this.f83692b);
    }

    public String toString() {
        return MotionUtils.f31761c + this.f83691a + "," + this.f83692b + MotionUtils.f31762d;
    }

    /* renamed from: a */
    public static double m57117a(C14376s1 c14376s1, C14376s1 c14376s12) {
        return Math.hypot(c14376s12.m57119b() - c14376s1.m57119b(), c14376s12.m57120c() - c14376s1.m57120c());
    }

    public C14376s1(int i, int i2) {
        this.f83691a = i;
        this.f83692b = i2;
    }
}
