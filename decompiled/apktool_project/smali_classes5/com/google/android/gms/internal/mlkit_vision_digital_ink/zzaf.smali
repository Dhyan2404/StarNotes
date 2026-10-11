.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private zze:Z

.field private zzf:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zza:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbt;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zze:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbu;
    .locals 10

    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " includeAllGroups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " groupWithNoAccountOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " preserveZipDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzf:B

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_3

    const-string p0, " verifyIsolatedStructure"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zza:Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaf;->zze:Z

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzah;-><init>(ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzag;)V

    return-object v0
.end method
