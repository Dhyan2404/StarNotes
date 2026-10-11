package com.sun.javafx.geom;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes9.dex */
public class Vec2f {

    /* renamed from: x */
    public float f64058x;

    /* renamed from: y */
    public float f64059y;

    public Vec2f() {
    }

    public static float distance(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    public static float distanceSq(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (f5 * f5) + (f6 * f6);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Vec2f)) {
            return false;
        }
        Vec2f vec2f = (Vec2f) obj;
        return this.f64058x == vec2f.f64058x && this.f64059y == vec2f.f64059y;
    }

    public int hashCode() {
        return ((217 + Float.floatToIntBits(this.f64058x)) * 31) + Float.floatToIntBits(this.f64059y);
    }

    public void set(Vec2f vec2f) {
        this.f64058x = vec2f.f64058x;
        this.f64059y = vec2f.f64059y;
    }

    public String toString() {
        return "Vec2f[" + this.f64058x + ", " + this.f64059y + IteratorUtils.f104924b;
    }

    public Vec2f(float f, float f2) {
        this.f64058x = f;
        this.f64059y = f2;
    }

    public float distance(float f, float f2) {
        float f3 = f - this.f64058x;
        float f4 = f2 - this.f64059y;
        return (float) Math.sqrt((f3 * f3) + (f4 * f4));
    }

    public float distanceSq(float f, float f2) {
        float f3 = f - this.f64058x;
        float f4 = f2 - this.f64059y;
        return (f3 * f3) + (f4 * f4);
    }

    public void set(float f, float f2) {
        this.f64058x = f;
        this.f64059y = f2;
    }

    public float distanceSq(Vec2f vec2f) {
        float f = vec2f.f64058x - this.f64058x;
        float f2 = vec2f.f64059y - this.f64059y;
        return (f * f) + (f2 * f2);
    }

    public Vec2f(Vec2f vec2f) {
        this.f64058x = vec2f.f64058x;
        this.f64059y = vec2f.f64059y;
    }

    public float distance(Vec2f vec2f) {
        float f = vec2f.f64058x - this.f64058x;
        float f2 = vec2f.f64059y - this.f64059y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }
}
