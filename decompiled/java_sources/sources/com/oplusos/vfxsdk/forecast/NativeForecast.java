package com.oplusos.vfxsdk.forecast;

/* loaded from: classes9.dex */
class NativeForecast {
    static {
        System.loadLibrary("forecast");
    }

    public static native long create(long j);

    public static native void destroy(long j);

    public static native TouchPointInfo predictTouchPoint(long j);

    public static native void pushTouchPoint(long j, TouchPointInfo touchPointInfo);

    public static native void reset(long j);

    public static native void setDpi(long j, float f, float f2);

    public static native void setMaxPredictTime(long j, float f);

    public static native void setRefreshRate(long j, float f);
}
