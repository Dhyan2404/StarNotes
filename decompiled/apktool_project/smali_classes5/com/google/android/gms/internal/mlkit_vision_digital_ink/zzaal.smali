.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
.source "SourceFile"


# instance fields
.field private zza:Landroid/net/Uri;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

.field private zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

.field private zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;

.field private zzg:Z

.field private zzh:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
    .locals 0

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null schema"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzd(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zza:Landroid/net/Uri;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null uri"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzg:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaax;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzq()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    :cond_1
    :goto_0
    iget-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zza:Landroid/net/Uri;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaan;

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    iget-boolean v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzg:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaan;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;ZZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaam;)V

    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zza:Landroid/net/Uri;

    if-nez v1, :cond_4

    const-string v1, " uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-nez v1, :cond_5

    const-string v1, " schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    if-nez v1, :cond_6

    const-string v1, " handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;

    if-nez v1, :cond_7

    const-string v1, " variantConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    const-string v1, " useGeneratedExtensionRegistry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzh:B

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_9

    const-string p0, " enableTracing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaal;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    return-object p0
.end method
