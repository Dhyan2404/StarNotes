.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamp;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamt;-><init>()V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;->zza:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;->zzb:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzams;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamq;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzamr;

    return-void
.end method
