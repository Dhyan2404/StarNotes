.class public Lcom/miui/penengine/facade/algorithm/JNIPathEstimateInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "estimate_interface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native destroy()I
.end method

.method public static native init(Landroid/content/res/AssetManager;Ljava/lang/String;IZ)I
.end method

.method public static native isEstimateSystemSoEnable()Z
.end method

.method public static native runModel([FII)[F
.end method
