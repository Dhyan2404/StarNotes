.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
.source "SourceFile"


# instance fields
.field private zza:Landroid/net/Uri;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private zzg:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null downloadConstraints"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null extraHttpHeaders"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zza:Landroid/net/Uri;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null fileUri"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzd:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzg:B

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzb:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null urlToDownload"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;
    .locals 10

    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzg:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zza:Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzb:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgi;

    iget v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzd:I

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgi;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgh;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zza:Landroid/net/Uri;

    if-nez v1, :cond_2

    const-string v1, " fileUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzb:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " urlToDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    if-nez v1, :cond_4

    const-string v1, " downloadConstraints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzg:B

    if-nez v1, :cond_5

    const-string v1, " trafficTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    if-nez p0, :cond_6

    const-string p0, " extraHttpHeaders"

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

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgg;->zzb:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Property \"urlToDownload\" has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
