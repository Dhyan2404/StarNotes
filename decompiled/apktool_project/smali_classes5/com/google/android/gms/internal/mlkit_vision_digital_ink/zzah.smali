.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;
.source "SourceFile"


# instance fields
.field private final zza:Z

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zze:Z


# direct methods
.method public synthetic constructor <init>(ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzag;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zze:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zza:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zze()Z

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzd()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzf()Z

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;->zzg()Z

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zza:Z

    const/16 v1, 0x4cf

    const/16 v2, 0x4d5

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zze:Z

    if-eq v3, p0, :cond_1

    move v1, v2

    :cond_1
    const p0, 0xf4243

    xor-int/2addr v0, p0

    mul-int/2addr v0, p0

    xor-int/2addr v0, v2

    mul-int/2addr v0, p0

    const v3, 0x79a31aac

    xor-int/2addr v0, v3

    mul-int/2addr v0, p0

    xor-int/2addr v0, v3

    mul-int/2addr v0, p0

    xor-int/2addr v0, v3

    mul-int/2addr v0, p0

    xor-int/2addr v0, v2

    mul-int/2addr v0, p0

    xor-int p0, v0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zza:Z

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zze:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetFileGroupsByFilterRequest{includeAllGroups="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", groupWithNoAccountOnly=false, groupNameOptional=Optional.absent(), accountOptional=Optional.absent(), sourceOptional=Optional.absent(), preserveZipDirectories=false, verifyIsolatedStructure="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zze()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zza:Z

    return p0
.end method

.method public final zzf()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzg()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;->zze:Z

    return p0
.end method
