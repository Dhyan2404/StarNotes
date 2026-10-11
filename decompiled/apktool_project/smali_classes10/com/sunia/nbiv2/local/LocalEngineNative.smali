.class public Lcom/sunia/nbiv2/local/LocalEngineNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/nbiv2/local/LocalEngineNative;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const-class v0, Lcom/sunia/nbiv2/local/LocalEngineNative;

    monitor-enter v0

    :try_start_0
    const-string v1, "nbiengine"

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

.method public static native nbiAddLine(J[D[DII)I
.end method

.method public static native nbiAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public static native nbiClearPoints(J)Z
.end method

.method public static native nbiCreateEngine()J
.end method

.method public static native nbiDestroyEngine(J)V
.end method

.method public static native nbiEngineValid(J)Z
.end method

.method public static native nbiGetLastErrorString()Ljava/lang/String;
.end method

.method public static native nbiSetAxisOutput(JZ)Z
.end method

.method public static native nbiSetCallback(JLcom/sunia/nbiv2/local/LocalNBIListener;)Z
.end method

.method public static native nbiSetOutlineOutput(JZ)Z
.end method

.method public static native nbiSetParameters(J[I)Z
.end method

.method public static native nbiStopTransform(J)V
.end method

.method public static native nbiTransform(JJJ)Z
.end method

.method public static native nbiTransformPointer(JJJJ)Z
.end method
