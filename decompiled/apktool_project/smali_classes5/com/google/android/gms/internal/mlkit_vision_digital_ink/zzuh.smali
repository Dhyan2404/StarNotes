.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

.field private final zzf:I

.field private final zzg:J

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzj:Ljava/util/concurrent/Executor;

.field private final zzk:I

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzk:I

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzf:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzg:J

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzh:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrp;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object p1

    invoke-static {p3, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    invoke-virtual {p2, v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzug;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzug;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    invoke-virtual {p0, p2, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 7

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrp;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object p1

    invoke-static {p0, p1, p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p7

    move-object v2, p5

    move-object v3, p6

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzub;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;[B)V

    invoke-virtual {p0, p1, p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method private static zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzd:Ljava/lang/String;

    const-string v2, "%s: Successfully downloaded file %s"

    const-string v3, "DownloaderCallbackImpl"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-static {v2, v4, v6, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuj;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzui;->zza(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Z

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget v9, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzf:I

    iget-wide v10, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzg:J

    iget-object v12, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzh:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzus;->zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzus;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v13, v10, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaad;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaad;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "%s: Failed to get file size or delete zip file %s."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v6, v4, v7

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const-string v2, "%s: Failed to apply zip download transform for file %s."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v6, v4, v7

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzD:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaak;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v9, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    iget v10, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzf:I

    iget-wide v11, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzg:J

    iget-object v13, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzh:Ljava/lang/String;

    iget-object v14, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;
    :try_end_5
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaab;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaab;

    move-result-object v15

    invoke-virtual {v0, v8, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapb;->zza(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_3

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_3
    if-eqz v15, :cond_4

    :try_start_a
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_a .. :try_end_a} :catch_5

    :cond_4
    :try_start_b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzj()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzn()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v18

    cmp-long v7, v16, v18

    if-lez v7, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    move-result-object v7

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zza(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapf;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzapg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    :cond_6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_c
    const-string v7, "%s: Failed to get file size or delete compress file %s."

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v5

    const/4 v5, 0x1

    aput-object v8, v9, v5

    invoke-static {v0, v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzd(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzz()I

    move-result v0

    if-eq v0, v4, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzd:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuj;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "%s: Final file checksum verification failed. %s."

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzE:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    throw v0
    :try_end_c
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_c .. :try_end_c} :catch_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v7, :cond_8

    :try_start_d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_e
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzua;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v15, :cond_9

    :try_start_f
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_10
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzua;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_10 .. :try_end_10} :catch_5

    :catch_3
    move-exception v0

    :try_start_11
    const-string v2, "%s: Failed to apply download transform for file %s."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v8, v4, v3

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzD:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    const-string v2, "%s: Exception while trying to serialize download transform"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzC:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    throw v0
    :try_end_11
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_11 .. :try_end_11} :catch_5

    :cond_a
    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzk:I

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzA:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzk:I

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v7, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzd:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iget-object v9, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iget-object v10, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    move-object/from16 v6, p1

    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzud;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzud;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    const-class v5, Ljava/io/IOException;

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzue;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzue;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    const-string v0, "DownloaderCallbackImpl"

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzd:Ljava/lang/String;

    const-string v2, "%s: Failed to download file %s"

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzA:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
