.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

.field private final zzh:I

.field private final zzi:J

.field private final zzj:Ljava/lang/String;

.field private final zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzm:Ljava/util/concurrent/Executor;

.field private final zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

.field private final zzo:I

.field private final zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zza:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzh:I

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzi:J

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzj:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/net/Uri;Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zza:Landroid/content/Context;

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzf()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zze(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Z)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzh:I

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    iget-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzi:J

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzj:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzc()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafd;->zzc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzf()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object p0

    const-string p3, "DeltaFileDownloaderCallbackImpl"

    filled-new-array {p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s: Failed to decode delta file with url = %s failed. checksum = %s "

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzG:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzF:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb(Landroid/net/Uri;Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuj;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "%s: Final file checksum verification failed. %s."

    const-string p2, "DeltaFileDownloaderCallbackImpl"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzE:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 10

    const-string v0, "%s: Successfully downloaded delta file %s"

    const-string v1, "DeltaFileDownloaderCallbackImpl"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuj;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: Downloaded delta file at uri = %s, checksum = %s verification failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzA:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iget-object v9, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    const-class v3, Ljava/io/IOException;

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzui;->zza(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzty;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzty;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/net/Uri;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s: Failed to download file(delta) %s"

    const-string v2, "DeltaFileDownloaderCallbackImpl"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzA:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzo:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;->zzm:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
