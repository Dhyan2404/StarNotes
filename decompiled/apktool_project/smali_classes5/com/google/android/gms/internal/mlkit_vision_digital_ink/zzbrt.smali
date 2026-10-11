.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqv;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .param p0    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqv;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zza:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqv;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zza:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrs;->zzb(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v1
.end method
