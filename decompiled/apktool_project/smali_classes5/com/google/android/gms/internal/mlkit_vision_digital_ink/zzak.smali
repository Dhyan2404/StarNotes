.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzfz;->zzd()Z

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zza:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, 0xf4243

    xor-int/2addr p0, v0

    mul-int/2addr p0, v0

    const v1, 0x79a31aac

    xor-int/2addr p0, v1

    mul-int/2addr p0, v0

    xor-int/2addr p0, v1

    mul-int/2addr p0, v0

    xor-int/lit16 p0, p0, 0x4d5

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zza:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveFileGroupRequest{groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", accountOptional=Optional.absent(), variantIdOptional=Optional.absent(), pendingOnly=false}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzak;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
