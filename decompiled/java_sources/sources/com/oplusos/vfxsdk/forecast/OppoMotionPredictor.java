package com.oplusos.vfxsdk.forecast;

/* loaded from: classes9.dex */
public class OppoMotionPredictor {

    /* renamed from: c */
    public static final String f63179c = "Forecast:MotionPredictor";

    /* renamed from: d */
    public static final String f63180d = "VERSION_2.0.0";

    /* renamed from: a */
    public long f63181a = 0;

    /* renamed from: b */
    public long f63182b = 0;

    public OppoMotionPredictor() {
        m52247a();
    }

    /* renamed from: a */
    public final void m52247a() {
        this.f63181a = NativeForecast.create(this.f63181a);
    }

    public void destroy() {
        NativeForecast.destroy(this.f63181a);
    }

    public TouchPointInfo predictTouchPoint() {
        TouchPointInfo predictTouchPoint = NativeForecast.predictTouchPoint(this.f63181a);
        if (predictTouchPoint != null) {
            predictTouchPoint.timestamp += this.f63182b;
        }
        return predictTouchPoint;
    }

    public void pushTouchPoint(TouchPointInfo touchPointInfo) {
        touchPointInfo.timestamp -= this.f63182b;
        NativeForecast.pushTouchPoint(this.f63181a, touchPointInfo);
    }

    public void reset() {
        this.f63182b = System.nanoTime() / 1000000;
        NativeForecast.reset(this.f63181a);
    }

    public void setDpi(float f, float f2) {
        NativeForecast.setDpi(this.f63181a, f, f2);
    }

    public void setMaxPredictTime(float f) {
        NativeForecast.setMaxPredictTime(this.f63181a, f);
    }

    public void setRefreshRate(float f) {
        NativeForecast.setRefreshRate(this.f63181a, f);
    }
}
