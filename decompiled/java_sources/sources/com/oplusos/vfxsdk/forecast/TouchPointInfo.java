package com.oplusos.vfxsdk.forecast;

/* loaded from: classes9.dex */
public class TouchPointInfo {
    public float axisTilt;
    public float pressure;
    public long timestamp;

    /* renamed from: x */
    public float f63208x;

    /* renamed from: y */
    public float f63209y;

    public TouchPointInfo(float f, float f2, float f3, float f4, long j) {
        this.f63208x = f;
        this.f63209y = f2;
        this.pressure = f3;
        this.axisTilt = f4;
        this.timestamp = j;
    }

    public TouchPointInfo() {
        this.f63208x = 0.0f;
        this.f63209y = 0.0f;
        this.pressure = 0.0f;
        this.axisTilt = 0.0f;
        this.timestamp = 0L;
    }
}
