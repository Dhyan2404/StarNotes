.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzs;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null dataFileGroup"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzw;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzx;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties: dataFileGroup"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
