package com.hihonor.android.magicx.app.penengine.estimate;

/* loaded from: classes4.dex */
public class HnMotionEventInfo {

    /* renamed from: a */
    public float f38896a;

    /* renamed from: b */
    public float f38897b;

    /* renamed from: c */
    public float f38898c;

    /* renamed from: d */
    public float f38899d;

    /* renamed from: e */
    public long f38900e;

    public HnMotionEventInfo(float f, float f2, float f3, float f4, long j) {
        this.f38896a = f;
        this.f38897b = f2;
        this.f38898c = f3;
        this.f38899d = f4;
        this.f38900e = j;
    }

    public long getEventTime() {
        return this.f38900e;
    }

    public float getPress() {
        return this.f38898c;
    }

    public float getTilt() {
        return this.f38899d;
    }

    public float getX() {
        return this.f38896a;
    }

    public float getY() {
        return this.f38897b;
    }

    public void setEventTime(long j) {
        this.f38900e = j;
    }

    public void setPress(float f) {
        this.f38898c = f;
    }

    public void setTilt(float f) {
        this.f38899d = f;
    }

    public void setX(float f) {
        this.f38896a = f;
    }

    public void setY(float f) {
        this.f38897b = f;
    }

    public String toString() {
        return "time: " + this.f38900e + "point: " + this.f38896a + ", " + this.f38897b;
    }
}
