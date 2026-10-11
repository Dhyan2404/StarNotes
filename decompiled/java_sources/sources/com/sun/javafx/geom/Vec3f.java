package com.sun.javafx.geom;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes9.dex */
public class Vec3f {

    /* renamed from: x */
    public float f64060x;

    /* renamed from: y */
    public float f64061y;

    /* renamed from: z */
    public float f64062z;

    public Vec3f() {
    }

    public void add(Vec3f vec3f, Vec3f vec3f2) {
        this.f64060x = vec3f.f64060x + vec3f2.f64060x;
        this.f64061y = vec3f.f64061y + vec3f2.f64061y;
        this.f64062z = vec3f.f64062z + vec3f2.f64062z;
    }

    public void cross(Vec3f vec3f, Vec3f vec3f2) {
        float f = vec3f.f64061y;
        float f2 = vec3f2.f64062z;
        float f3 = vec3f.f64062z;
        float f4 = vec3f2.f64061y;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = vec3f2.f64060x;
        float f7 = vec3f.f64060x;
        this.f64062z = (f7 * f4) - (f * f6);
        this.f64060x = f5;
        this.f64061y = (f3 * f6) - (f2 * f7);
    }

    public float dot(Vec3f vec3f) {
        return (this.f64060x * vec3f.f64060x) + (this.f64061y * vec3f.f64061y) + (this.f64062z * vec3f.f64062z);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Vec3f)) {
            return false;
        }
        Vec3f vec3f = (Vec3f) obj;
        return this.f64060x == vec3f.f64060x && this.f64061y == vec3f.f64061y && this.f64062z == vec3f.f64062z;
    }

    public int hashCode() {
        return ((((217 + Float.floatToIntBits(this.f64060x)) * 31) + Float.floatToIntBits(this.f64061y)) * 31) + Float.floatToIntBits(this.f64062z);
    }

    public float length() {
        float f = this.f64060x;
        float f2 = this.f64061y;
        float f3 = this.f64062z;
        return (float) Math.sqrt((f * f) + (f2 * f2) + (f3 * f3));
    }

    public final void mul(float f) {
        this.f64060x *= f;
        this.f64061y *= f;
        this.f64062z *= f;
    }

    public void normalize() {
        float length = 1.0f / length();
        this.f64060x *= length;
        this.f64061y *= length;
        this.f64062z *= length;
    }

    public void set(Vec3f vec3f) {
        this.f64060x = vec3f.f64060x;
        this.f64061y = vec3f.f64061y;
        this.f64062z = vec3f.f64062z;
    }

    public void sub(Vec3f vec3f, Vec3f vec3f2) {
        this.f64060x = vec3f.f64060x - vec3f2.f64060x;
        this.f64061y = vec3f.f64061y - vec3f2.f64061y;
        this.f64062z = vec3f.f64062z - vec3f2.f64062z;
    }

    public String toString() {
        return "Vec3f[" + this.f64060x + ", " + this.f64061y + ", " + this.f64062z + IteratorUtils.f104924b;
    }

    public Vec3f(float f, float f2, float f3) {
        this.f64060x = f;
        this.f64061y = f2;
        this.f64062z = f3;
    }

    public void add(Vec3f vec3f) {
        this.f64060x += vec3f.f64060x;
        this.f64061y += vec3f.f64061y;
        this.f64062z += vec3f.f64062z;
    }

    public void set(float f, float f2, float f3) {
        this.f64060x = f;
        this.f64061y = f2;
        this.f64062z = f3;
    }

    public void sub(Vec3f vec3f) {
        this.f64060x -= vec3f.f64060x;
        this.f64061y -= vec3f.f64061y;
        this.f64062z -= vec3f.f64062z;
    }

    public Vec3f(Vec3f vec3f) {
        this.f64060x = vec3f.f64060x;
        this.f64061y = vec3f.f64061y;
        this.f64062z = vec3f.f64062z;
    }
}
