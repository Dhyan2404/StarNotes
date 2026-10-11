.class public final synthetic Lcom/sunia/HTREnginev2/d1o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/os/VibratorManager;)Landroid/os/Vibrator;
    .locals 0

    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method
