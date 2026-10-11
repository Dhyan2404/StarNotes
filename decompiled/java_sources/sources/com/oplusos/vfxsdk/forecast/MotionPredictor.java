package com.oplusos.vfxsdk.forecast;

import android.util.Log;

/* loaded from: classes9.dex */
public class MotionPredictor {

    /* renamed from: c */
    public static final String f63175c = "Forecast:MotionPredictor";

    /* renamed from: d */
    public static final String f63176d = "VERSION_2.0.0";

    /* renamed from: a */
    public long f63177a = 0;

    /* renamed from: b */
    public long f63178b = 0;

    public MotionPredictor() {
        Log.d("Forecast:MotionPredictor", "motion predictor version: VERSION_2.0.0");
        m52246a();
    }

    /* renamed from: a */
    public final void m52246a() {
        this.f63177a = NativeForecast.create(this.f63177a);
    }

    public void destroy() {
        NativeForecast.destroy(this.f63177a);
    }

    public TouchPointInfo predictTouchPoint() {
        TouchPointInfo predictTouchPoint = NativeForecast.predictTouchPoint(this.f63177a);
        if (predictTouchPoint != null) {
            predictTouchPoint.timestamp += this.f63178b;
            Log.d("Forecast:MotionPredictor", "predict point: x " + predictTouchPoint.f63208x + ", y " + predictTouchPoint.f63209y + ", t " + predictTouchPoint.timestamp);
        }
        return predictTouchPoint;
    }

    public void pushTouchPoint(TouchPointInfo touchPointInfo) {
        Log.d("Forecast:MotionPredictor", "push point: x " + touchPointInfo.f63208x + ", y " + touchPointInfo.f63209y + ", t " + touchPointInfo.timestamp);
        touchPointInfo.timestamp = touchPointInfo.timestamp - this.f63178b;
        NativeForecast.pushTouchPoint(this.f63177a, touchPointInfo);
    }

    public void reset() {
        this.f63178b = System.nanoTime() / 1000000;
        NativeForecast.reset(this.f63177a);
    }

    public void setDpi(float f, float f2) {
        NativeForecast.setDpi(this.f63177a, f, f2);
    }

    public void setMaxPredictTime(float f) {
        NativeForecast.setMaxPredictTime(this.f63177a, f);
    }

    public void setRefreshRate(float f) {
        NativeForecast.setRefreshRate(this.f63177a, f);
    }
}
