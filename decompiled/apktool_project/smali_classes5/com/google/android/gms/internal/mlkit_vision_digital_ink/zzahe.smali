.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahd;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahb;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
