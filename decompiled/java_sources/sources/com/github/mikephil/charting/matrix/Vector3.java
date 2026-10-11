package com.github.mikephil.charting.matrix;

/* loaded from: classes4.dex */
public final class Vector3 {

    /* renamed from: x */
    public float f21692x;

    /* renamed from: y */
    public float f21693y;

    /* renamed from: z */
    public float f21694z;
    public static final Vector3 ZERO = new Vector3(0.0f, 0.0f, 0.0f);
    public static final Vector3 UNIT_X = new Vector3(1.0f, 0.0f, 0.0f);
    public static final Vector3 UNIT_Y = new Vector3(0.0f, 1.0f, 0.0f);
    public static final Vector3 UNIT_Z = new Vector3(0.0f, 0.0f, 1.0f);

    public Vector3() {
    }

    public final void add(Vector3 vector3) {
        this.f21692x += vector3.f21692x;
        this.f21693y += vector3.f21693y;
        this.f21694z += vector3.f21694z;
    }

    public final Vector3 cross(Vector3 vector3) {
        float f = this.f21693y;
        float f2 = vector3.f21694z;
        float f3 = this.f21694z;
        float f4 = vector3.f21693y;
        float f5 = vector3.f21692x;
        float f6 = this.f21692x;
        return new Vector3((f * f2) - (f3 * f4), (f3 * f5) - (f2 * f6), (f6 * f4) - (f * f5));
    }

    public final float distance2(Vector3 vector3) {
        float f = this.f21692x - vector3.f21692x;
        float f2 = this.f21693y - vector3.f21693y;
        float f3 = this.f21694z - vector3.f21694z;
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public final void divide(float f) {
        if (f != 0.0f) {
            this.f21692x /= f;
            this.f21693y /= f;
            this.f21694z /= f;
        }
    }

    public final float dot(Vector3 vector3) {
        return (this.f21692x * vector3.f21692x) + (this.f21693y * vector3.f21693y) + (this.f21694z * vector3.f21694z);
    }

    public final float length() {
        return (float) Math.sqrt(length2());
    }

    public final float length2() {
        float f = this.f21692x;
        float f2 = this.f21693y;
        float f3 = this.f21694z;
        return (f * f) + (f2 * f2) + (f3 * f3);
    }

    public final void multiply(float f) {
        this.f21692x *= f;
        this.f21693y *= f;
        this.f21694z *= f;
    }

    public final float normalize() {
        float length = length();
        if (length != 0.0f) {
            this.f21692x /= length;
            this.f21693y /= length;
            this.f21694z /= length;
        }
        return length;
    }

    public final boolean pointsInSameDirection(Vector3 vector3) {
        return dot(vector3) > 0.0f;
    }

    public final void set(Vector3 vector3) {
        this.f21692x = vector3.f21692x;
        this.f21693y = vector3.f21693y;
        this.f21694z = vector3.f21694z;
    }

    public final void subtract(Vector3 vector3) {
        this.f21692x -= vector3.f21692x;
        this.f21693y -= vector3.f21693y;
        this.f21694z -= vector3.f21694z;
    }

    public final void subtractMultiple(Vector3 vector3, float f) {
        this.f21692x -= vector3.f21692x * f;
        this.f21693y -= vector3.f21693y * f;
        this.f21694z -= vector3.f21694z * f;
    }

    public final void zero() {
        set(0.0f, 0.0f, 0.0f);
    }

    public Vector3(float[] fArr) {
        set(fArr[0], fArr[1], fArr[2]);
    }

    public Vector3(float f, float f2, float f3) {
        set(f, f2, f3);
    }

    public final void add(float f, float f2, float f3) {
        this.f21692x += f;
        this.f21693y += f2;
        this.f21694z += f3;
    }

    public final void multiply(Vector3 vector3) {
        this.f21692x *= vector3.f21692x;
        this.f21693y *= vector3.f21693y;
        this.f21694z *= vector3.f21694z;
    }

    public final void set(float f, float f2, float f3) {
        this.f21692x = f;
        this.f21693y = f2;
        this.f21694z = f3;
    }

    public Vector3(Vector3 vector3) {
        set(vector3);
    }
}
