.class public Lcom/sunia/npiv2/local/LocalEngineNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/npiv2/local/LocalEngineNative;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/sunia/npiv2/local/LocalEngineNative;

    monitor-enter v0

    :try_start_0
    const-string v1, "npiengine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native npiCreateEngine(Ljava/lang/String;)J
.end method

.method public static native npiDestroyEngine(J)Z
.end method

.method public static native npiEngineValid(J)Z
.end method

.method public static native npiExtractFromData(J[B)Z
.end method

.method public static native npiExtractFromFile(JLjava/lang/String;)Z
.end method

.method public static native npiExtractFromObject(JLandroid/media/Image;)Z
.end method

.method public static native npiGetLineCount(J)I
.end method

.method public static native npiGetLinePoints(JI[D[D)I
.end method

.method public static native npiGetLinePointsCount(JI)I
.end method
