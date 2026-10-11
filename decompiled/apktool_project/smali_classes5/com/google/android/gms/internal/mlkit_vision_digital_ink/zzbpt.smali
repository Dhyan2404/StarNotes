.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Downloaded file %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadCompleteHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/io/File;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;)V
    .locals 5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzd()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zze()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxd;->zza(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to download file %s due to %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadCompleteHandler"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zze()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    packed-switch v2, :pswitch_data_0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zze()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxd;->zza(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zza()I

    move-result v1

    const-string v3, ";"

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zza()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HttpCode: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzc()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrp;->zzd(Ljava/lang/Throwable;)Z

    return-void

    :cond_3
    throw v3

    :cond_4
    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
