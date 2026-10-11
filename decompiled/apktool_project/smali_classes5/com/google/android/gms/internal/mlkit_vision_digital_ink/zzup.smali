.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

.field private final zzh:Ljava/util/concurrent/Executor;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzh:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzun;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzun;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzh:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;ILjava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 18
    .param p9    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p10

    move/from16 v0, p11

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "http"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MddFileDownloader"

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzk()Z

    const-string v2, "https"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "%s: File url = %s is not secure"

    invoke-static {v0, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto/16 :goto_7

    :cond_0
    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v6, v4

    :goto_0
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzb:Landroid/content/Context;

    move/from16 v8, p8

    int-to-long v8, v8

    sub-long/2addr v8, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzr()Z

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    cmp-long v4, v8, v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v14, v2

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v3

    int-to-long v2, v2

    mul-long/2addr v14, v2

    :try_start_2
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    move-wide/from16 v16, v14

    int-to-long v13, v4

    mul-long/2addr v2, v13

    sub-long/2addr v2, v8

    move-wide/from16 v14, v16

    long-to-float v4, v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zza()F

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v7

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzb()I

    const/high16 v7, 0x4dfa0000    # 5.24288E8f

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-double v7, v7

    if-eqz p9, :cond_4

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;->zzh()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v13, 0x1

    if-eq v9, v13, :cond_3

    const/4 v13, 0x2

    if-eq v9, v13, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zza()F

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzc()I

    const/high16 v6, 0x4a000000    # 2097152.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zza()F

    invoke-interface {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzd()I

    const/high16 v6, 0x4cc80000    # 1.048576E8f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4
    :try_end_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    float-to-double v7, v4

    :cond_4
    :goto_2
    long-to-double v2, v2

    cmpl-double v2, v2, v7

    if-lez v2, :cond_9

    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzt()Z

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;

    iget-object v9, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwp;->zzd(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;JLjava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zzc(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    if-eqz p9, :cond_5

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;->zzg()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    :goto_4
    if-lez v0, :cond_6

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zzd(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdj;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdj;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;

    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaha;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgm;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgo;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgn;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_7

    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwl;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    const/4 v0, 0x0

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzt:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v5, v3

    :goto_6
    const-string v2, "%s: Not enough space to download file %s"

    move-object v3, v5

    invoke-static {v2, v3, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuk;

    invoke-direct {v2, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;Landroid/net/Uri;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzh:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzul;

    invoke-direct {v2, v1, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzul;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzh:Ljava/util/concurrent/Executor;

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;

    invoke-direct {v2, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzum;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;Landroid/net/Uri;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzh:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarq;->zzp(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_a
    iget-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-object v0
.end method

.method public final zzc(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    const-string v1, "MddFileDownloader"

    if-eqz v0, :cond_0

    const-string v2, "%s: Cancel download file %s"

    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zza:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_0
    const-string p0, "%s: stopDownloading on non-existent download"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzn(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method
