.class Lcom/oplusos/vfxsdk/forecast/NativeForecast;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "forecast"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native create(J)J
.end method

.method public static native destroy(J)V
.end method

.method public static native predictTouchPoint(J)Lcom/oplusos/vfxsdk/forecast/TouchPointInfo;
.end method

.method public static native pushTouchPoint(JLcom/oplusos/vfxsdk/forecast/TouchPointInfo;)V
.end method

.method public static native reset(J)V
.end method

.method public static native setDpi(JFF)V
.end method

.method public static native setMaxPredictTime(JF)V
.end method

.method public static native setRefreshRate(JF)V
.end method
