.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzt;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->hashCode()I

    move-result p0

    const v0, 0xf4243

    xor-int/2addr p0, v0

    mul-int/2addr p0, v0

    const v1, 0x79a31aac

    xor-int/2addr p0, v1

    mul-int/2addr p0, v0

    xor-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddFileGroupRequest{dataFileGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", accountOptional=Optional.absent(), variantIdOptional=Optional.absent()}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzy;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method
