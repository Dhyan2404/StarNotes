package com.huawei.stylus.penengine.eink.model;

/* loaded from: classes4.dex */
public class StrokePoint {

    /* renamed from: a */
    public int f38986a;

    /* renamed from: b */
    public float f38987b;

    /* renamed from: c */
    public float f38988c;

    /* renamed from: d */
    public float f38989d;

    /* renamed from: e */
    public long f38990e;

    public StrokePoint(int i, float f, float f2, long j, float f3) {
        this(f, f2, j, f3);
        this.f38986a = i;
    }

    public int getAction() {
        return this.f38986a;
    }

    public float getPressure() {
        return this.f38989d;
    }

    public long getTimestamp() {
        return this.f38990e;
    }

    public float getX() {
        return this.f38987b;
    }

    public float getY() {
        return this.f38988c;
    }

    public void setAction(int i) {
        this.f38986a = i;
    }

    public void setPressure(float f) {
        this.f38989d = f;
    }

    public void setTimestamp(long j) {
        this.f38990e = j;
    }

    public void setX(float f) {
        this.f38987b = f;
    }

    public void setY(float f) {
        this.f38988c = f;
    }

    public StrokePoint(float f, float f2, long j, float f3) {
        this(f, f2);
        this.f38990e = j;
        this.f38989d = f3;
    }

    public StrokePoint(float f, float f2) {
        this.f38987b = f;
        this.f38988c = f2;
    }
}
