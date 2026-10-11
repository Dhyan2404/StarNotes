.class public final Lcom/google/mlkit/vision/digitalink/downloading/zzb;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/downloading/zza;->zzb()Lcom/google/mlkit/vision/digitalink/downloading/zza;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqr;)V

    return-void
.end method
