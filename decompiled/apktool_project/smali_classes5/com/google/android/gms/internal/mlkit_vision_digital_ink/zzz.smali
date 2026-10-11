.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private zzh:Z

.field private zzi:B

.field private zzj:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zza:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null groupName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzh:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbl;
    .locals 15

    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zza:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v11, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzj:I

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzab;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v10, 0x0

    const/4 v12, 0x0

    iget-boolean v13, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzh:Z

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzab;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;IIZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaa;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zza:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " groupName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " groupSizeBytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzj:I

    if-nez v1, :cond_4

    const-string v1, " showNotifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " preserveZipDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzi:B

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_6

    const-string p0, " verifyIsolatedStructure"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbk;
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzz;->zzj:I

    return-object p0
.end method
