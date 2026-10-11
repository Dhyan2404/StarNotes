package com.huawei.stylus.penengine.estimate;

/* loaded from: classes4.dex */
public class HwMotionEventInfo {

    /* renamed from: a */
    public float f38991a;

    /* renamed from: b */
    public float f38992b;

    /* renamed from: c */
    public float f38993c;

    /* renamed from: d */
    public float f38994d;

    /* renamed from: e */
    public long f38995e;

    public HwMotionEventInfo(float f, float f2, float f3, float f4, long j) {
        this.f38991a = f;
        this.f38992b = f2;
        this.f38993c = f3;
        this.f38994d = f4;
        this.f38995e = j;
    }

    public long getEventTime() {
        return this.f38995e;
    }

    public float getPress() {
        return this.f38993c;
    }

    public float getTilt() {
        return this.f38994d;
    }

    public float getX() {
        return this.f38991a;
    }

    public float getY() {
        return this.f38992b;
    }

    public void setEventTime(long j) {
        this.f38995e = j;
    }

    public void setPress(float f) {
        this.f38993c = f;
    }

    public void setTilt(float f) {
        this.f38994d = f;
    }

    public void setX(float f) {
        this.f38991a = f;
    }

    public void setY(float f) {
        this.f38992b = f;
    }

    public String toString() {
        return "time: " + this.f38995e + "point: " + this.f38991a + ", " + this.f38992b;
    }
}
