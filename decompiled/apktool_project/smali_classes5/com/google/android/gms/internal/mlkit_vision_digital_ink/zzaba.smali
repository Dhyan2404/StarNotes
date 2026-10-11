.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field private final zzf:Ljava/util/Map;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;Ljava/util/Map;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacz;[B)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza:Ljava/util/Map;

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzb:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzf:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zze(Z)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaz;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    return-void
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v8

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    const-string v6, "Uri must be hierarchical: %s"

    invoke-static {v5, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    add-int/2addr v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v7, "pb"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "Uri extension must be .pb: %s"

    invoke-static {v5, v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzf:Ljava/util/Map;

    const-string v5, "singleproc"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v7, "No XDataStoreVariantFactory registered for ID %s"

    invoke-static {v3, v7, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v4, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v12

    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzc:Ljava/util/concurrent/Executor;

    iget-object v6, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacr;

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    iget-object v11, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Z[B)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;->zzb(Ljava/util/List;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaav;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)V

    :cond_3
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zza:Ljava/util/Map;

    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzb:Ljava/util/Map;

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzb:Ljava/util/Map;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    :goto_2
    monitor-exit p0

    return-object v2

    :cond_5
    const/4 v2, 0x2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "ProtoDataStoreConfig<%s> doesn\'t match previous call [uri=%s] [%s]"

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zza()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "uri"

    invoke-static {v6, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "schema"

    invoke-static {v6, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "handler"

    invoke-static {v6, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "migrations"

    invoke-static {v6, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaca;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "variantConfig"

    invoke-static {v6, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzg()Z

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzg()Z

    move-result v6

    if-ne v0, v6, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v4

    :goto_3
    const-string v6, "useGeneratedExtensionRegistry"

    invoke-static {v0, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;->zzf()Z

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagz;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaay;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    move-result-object p0

    return-object p0
.end method
