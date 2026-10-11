.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamn;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamf;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
