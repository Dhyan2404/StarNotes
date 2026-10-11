.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzary;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzary;-><init>()V

    return-void
.end method

.method public static zzv(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarm;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
