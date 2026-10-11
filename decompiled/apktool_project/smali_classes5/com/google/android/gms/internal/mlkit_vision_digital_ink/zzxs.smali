.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Ljava/lang/String; = "zzxs"

.field private static final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

.field private static final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;


# instance fields
.field protected final zza:Ljava/util/List;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzf:Landroid/content/Context;

.field private final zzg:Ljava/util/concurrent/Executor;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxt;

.field private final zzi:Landroid/net/ConnectivityManager;

.field private final zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;

.field private final zzk:Ljava/util/Map;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzl:Ljava/util/Map;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzm:Ljava/util/Queue;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private zzn:Z

.field private final zzo:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxt;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzl:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zza:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn:Z

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzo:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxt;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzg:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;

    const-string p1, "connectivity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzi:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzj()V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzo()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzg()Ljava/io/File;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxc;->zzb(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "file:"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    move-result-object v14

    iget-object v11, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakm;

    iget v12, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzf:I

    const/4 v15, 0x1

    add-int/2addr v12, v15

    iput v12, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzf:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1b

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v15, -0x1

    move/from16 v22, v12

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v15, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_0
    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v6, v13

    :goto_0
    move-wide v7, v8

    :goto_1
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzp(Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;Ljava/io/File;J)V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v23, v13

    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_2a

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v12, 0xb

    goto/16 :goto_2d

    :cond_1
    :try_start_2
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_20
    .catchall {:try_start_2 .. :try_end_2} :catchall_19

    if-nez v3, :cond_3

    :try_start_3
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request didn\'t meet connectivity requirement before download, queueing. URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v3

    if-eq v3, v15, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V

    return-void

    :cond_3
    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Starting download: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_20
    .catchall {:try_start_4 .. :try_end_4} :catchall_19

    const/4 v12, 0x3

    if-eqz v8, :cond_7

    :try_start_5
    const-string v8, "Is data uri"

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxc;->zza(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_6
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxa; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v24, 0x0

    const-wide/16 v26, -0x1

    move-object v11, v8

    move-object/from16 v23, v13

    const/4 v9, 0x0

    move-wide/from16 v12, v24

    move-object/from16 v28, v14

    const/4 v9, -0x1

    move-wide/from16 v14, v26

    :try_start_7
    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;->zzb(Ljava/io/InputStream;JJ)J

    move-result-wide v10
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data URI download complete, have file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v9, :cond_4

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v6, v23

    move-wide v7, v10

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v9, v3

    move-wide/from16 v19, v10

    :goto_5
    const/4 v5, 0x0

    const/4 v12, 0x0

    goto/16 :goto_32

    :catch_1
    move-exception v0

    move-object v3, v0

    move-wide/from16 v19, v10

    :goto_6
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v12, 0xb

    const/16 v29, 0x0

    goto/16 :goto_2e

    :catchall_2
    move-exception v0

    move-object/from16 v23, v13

    const/4 v9, -0x1

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    const/4 v9, -0x1

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    const/4 v9, -0x1

    move-object v3, v0

    :try_start_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxa;->zza()I

    move-result v3

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxb;->zza(I)Ljava/lang/String;

    move-result-object v10
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_6

    :try_start_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data URI failed, error: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxb;->zza(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "DataUri error type: "

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzh(ILjava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v5
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v9, :cond_5

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_5
    const-wide/16 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v6, v23

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    :try_start_b
    throw v3
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    :catch_5
    move-exception v0

    const/4 v3, 0x0

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v23, v13

    const/4 v3, 0x0

    const/4 v9, -0x1

    :goto_8
    move-object v8, v3

    goto/16 :goto_29

    :catch_6
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    const/4 v3, 0x0

    const/4 v9, -0x1

    :goto_9
    move-object v8, v3

    goto/16 :goto_2c

    :cond_7
    move v8, v9

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    const/4 v9, -0x1

    const/4 v14, 0x0

    if-eqz v8, :cond_9

    :try_start_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Is file uri. Saving from local file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :try_start_d
    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :try_start_e
    new-instance v11, Ljava/io/File;

    const-string v12, "file:/"

    const-string v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    const-wide/16 v12, 0x0

    :try_start_f
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v15

    move-object v11, v8

    move-wide v14, v15

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;->zzb(Ljava/io/InputStream;JJ)J

    move-result-wide v10
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File URI download complete, have file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v3, v0

    :try_start_12
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v12, "Error closing download file"

    invoke-static {v8, v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v9, :cond_4

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    move-object v3, v0

    move-object v12, v8

    move-wide/from16 v19, v10

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v3, v0

    move-object v12, v8

    move-wide/from16 v19, v10

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v3, v0

    move-object v12, v8

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v3, v0

    move-object v12, v8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v3, v0

    const/4 v12, 0x0

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v12, 0x0

    :goto_b
    :try_start_13
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;

    const/16 v10, 0x9

    invoke-direct {v8, v3, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;-><init>(Ljava/io/IOException;I)V

    throw v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception v0

    move-object v3, v0

    :goto_c
    if-eqz v12, :cond_8

    :try_start_14
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v8, v0

    :try_start_15
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v11, "Error closing download file"

    invoke-static {v10, v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_d
    throw v3
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    :catchall_a
    move-exception v0

    move-object v3, v0

    move-object v9, v3

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move-object v3, v0

    goto/16 :goto_6

    :catch_d
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Badly encoded file url: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzh(ILjava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v9, :cond_5

    goto/16 :goto_7

    :catchall_b
    move-exception v0

    :goto_e
    move-object v3, v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    :goto_f
    move-object v3, v0

    goto/16 :goto_3

    :cond_9
    :try_start_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Is http uri, downloading (uri: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1f
    .catchall {:try_start_17 .. :try_end_17} :catchall_18

    :try_start_18
    invoke-interface {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzw()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1e
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    if-eqz v13, :cond_b

    :try_start_19
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11, v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzb(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v3, v13, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object v5, v0

    const/4 v8, 0x0

    goto/16 :goto_24

    :catch_f
    move-exception v0

    move-object v10, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v12, 0xb

    goto/16 :goto_27

    :cond_b
    :try_start_1a
    invoke-interface {v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;->zza()J

    move-result-wide v13
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    cmp-long v8, v13, v19

    if-lez v8, :cond_c

    :try_start_1b
    const-string v11, "Range"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    :cond_c
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v11

    invoke-direct {v1, v3, v11, v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzl(Ljava/net/HttpURLConnection;II)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    const/4 v12, 0x0

    goto :goto_11

    :catch_10
    move-exception v0

    move-object v12, v0

    :goto_11
    :try_start_1d
    monitor-enter p0
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn()Z

    move-result v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    if-eqz v11, :cond_e

    :try_start_1f
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v9, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_d
    const-wide/16 v9, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v5, v8

    move-object/from16 v6, v23

    move-wide v7, v9

    goto/16 :goto_1

    :catchall_d
    move-exception v0

    move-object v10, v0

    :goto_12
    const/4 v9, 0x1

    const/16 v12, 0xb

    goto/16 :goto_21

    :catchall_e
    move-exception v0

    move-object v10, v0

    const/4 v8, 0x0

    goto :goto_12

    :cond_e
    :try_start_21
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_14

    if-eqz v12, :cond_12

    :try_start_22
    instance-of v8, v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxq;

    if-eqz v8, :cond_f

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzh(ILjava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v5
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    if-eq v2, v9, :cond_5

    goto/16 :goto_7

    :cond_f
    :try_start_23
    iget-object v8, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;)I
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    move/from16 v8, v22

    const/4 v10, 0x3

    if-ge v8, v10, :cond_11

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v3

    if-eq v3, v9, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V

    return-void

    :cond_11
    :try_start_24
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;

    const/4 v10, 0x5

    invoke-direct {v8, v12, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;-><init>(Ljava/io/IOException;I)V

    throw v8
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    :cond_12
    :try_start_25
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_1e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1e
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    const/16 v12, 0xc8

    if-lt v11, v12, :cond_1b

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_1b

    :try_start_26
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_1a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1a
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    const/16 v12, 0xce

    if-ne v11, v12, :cond_13

    const/4 v15, 0x1

    goto :goto_13

    :cond_13
    move/from16 v15, v18

    :goto_13
    if-eqz v15, :cond_14

    if-nez v8, :cond_14

    :try_start_27
    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v12, "Got partial HTTP response, but no existing bytes"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-lez v8, :cond_16

    if-eqz v15, :cond_15

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " existed ("

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " bytes), attempted and succeeded with range download"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_15
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " existed, attempted range download, but server didn\'t response with partial content, so re-downloading whole file."

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_f
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    :cond_16
    :goto_14
    :try_start_28
    const-string v8, "Transfer-Encoding"

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_1a
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1a
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    if-eqz v8, :cond_17

    :try_start_29
    const-string v9, "identity"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_f
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    if-eqz v8, :cond_18

    :cond_17
    :try_start_2a
    const-string v8, "Content-Length"

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    if-eqz v8, :cond_18

    :try_start_2b
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    move-wide/from16 v21, v8

    goto :goto_15

    :catch_11
    :try_start_2c
    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unparseable Content-Length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_f
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    :cond_18
    const-wide/16 v21, -0x1

    :goto_15
    :try_start_2d
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2d} :catch_17
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_1a
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    const/4 v9, 0x1

    if-eq v9, v15, :cond_19

    move-wide/from16 v12, v19

    goto :goto_16

    :cond_19
    move-wide v12, v13

    :goto_16
    move-object v11, v8

    move-wide/from16 v14, v21

    :try_start_2e
    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;->zzb(Ljava/io/InputStream;JJ)J

    move-result-wide v10
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_14
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    :try_start_2f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_12
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception v0

    move-object v5, v0

    goto :goto_18

    :catch_12
    move-exception v0

    move-object v8, v0

    goto :goto_19

    :catch_13
    move-exception v0

    move-object v8, v0

    :try_start_30
    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v13, "Error closing connection stream"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_12
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_12
    .catchall {:try_start_30 .. :try_end_30} :catchall_f

    :goto_17
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    goto/16 :goto_4

    :goto_18
    move-object v12, v3

    move-object v9, v5

    move-wide/from16 v19, v10

    const/4 v5, 0x0

    goto/16 :goto_32

    :goto_19
    move-object/from16 v29, v3

    move-object v3, v8

    move-wide/from16 v19, v10

    const/4 v8, 0x0

    const/16 v12, 0xb

    goto/16 :goto_2e

    :catchall_10
    move-exception v0

    move-object v10, v0

    const/16 v12, 0xb

    goto :goto_1b

    :catch_14
    move-exception v0

    move-object v10, v0

    :try_start_31
    instance-of v11, v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    if-eqz v11, :cond_1a

    :try_start_32
    throw v10
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    :cond_1a
    :try_start_33
    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_12

    const/16 v12, 0xb

    :try_start_34
    invoke-direct {v11, v10, v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;-><init>(Ljava/io/IOException;I)V

    throw v11
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_1a

    :catchall_12
    move-exception v0

    const/16 v12, 0xb

    :goto_1a
    move-object v10, v0

    :goto_1b
    :try_start_35
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_19
    .catchall {:try_start_35 .. :try_end_35} :catchall_c

    goto :goto_1c

    :catch_15
    move-exception v0

    move-object v8, v0

    :try_start_36
    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v13, "Error closing connection stream"

    invoke-static {v11, v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    throw v10
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_19
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_19
    .catchall {:try_start_36 .. :try_end_36} :catchall_c

    :catch_16
    move-exception v0

    const/4 v9, 0x1

    const/16 v12, 0xb

    :goto_1d
    move-object v8, v0

    goto :goto_1e

    :catch_17
    move-exception v0

    const/4 v9, 0x1

    const/16 v12, 0xb

    move-object v8, v0

    :try_start_37
    throw v8
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_19
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    :catch_18
    move-exception v0

    goto :goto_1d

    :goto_1e
    :try_start_38
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;

    const/4 v11, 0x6

    invoke-direct {v10, v8, v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;-><init>(Ljava/io/IOException;I)V

    throw v10
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_19
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_19
    .catchall {:try_start_38 .. :try_end_38} :catchall_c

    :catch_19
    move-exception v0

    goto :goto_1f

    :catch_1a
    move-exception v0

    const/4 v9, 0x1

    const/16 v12, 0xb

    :goto_1f
    move-object v10, v0

    const/4 v8, 0x0

    goto/16 :goto_27

    :cond_1b
    const/4 v9, 0x1

    const/16 v12, 0xb

    :try_start_39
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non-success http response code "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " for: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_1c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_1c
    .catchall {:try_start_39 .. :try_end_39} :catchall_17

    const/16 v8, 0x1a0

    if-ne v11, v8, :cond_1c

    move-wide/from16 v19, v13

    const/4 v5, 0x0

    goto :goto_20

    :cond_1c
    const/4 v8, 0x0

    :try_start_3a
    invoke-static {v11, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzb(ILjava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v5
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_1b
    .catchall {:try_start_3a .. :try_end_3a} :catchall_13

    :goto_20
    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_1d
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v6, v23

    move-wide/from16 v7, v19

    goto/16 :goto_1

    :catchall_13
    move-exception v0

    goto :goto_23

    :catch_1b
    move-exception v0

    goto :goto_26

    :catch_1c
    move-exception v0

    const/4 v8, 0x0

    goto :goto_26

    :catchall_14
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v12, 0xb

    goto :goto_22

    :goto_21
    :try_start_3b
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_16

    :try_start_3c
    throw v10
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_1d
    .catchall {:try_start_3c .. :try_end_3c} :catchall_15

    :catchall_15
    move-exception v0

    move-object v9, v0

    move-object v12, v3

    goto :goto_25

    :catch_1d
    move-exception v0

    goto :goto_26

    :catchall_16
    move-exception v0

    :goto_22
    move-object v10, v0

    goto :goto_21

    :catchall_17
    move-exception v0

    const/4 v8, 0x0

    :goto_23
    move-object v5, v0

    :goto_24
    move-object v12, v3

    move-object v9, v5

    :goto_25
    move-object v5, v8

    goto/16 :goto_32

    :catch_1e
    move-exception v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v12, 0xb

    :goto_26
    move-object v10, v0

    :goto_27
    move-object/from16 v29, v3

    move-object v3, v10

    goto :goto_2e

    :catchall_18
    move-exception v0

    goto :goto_28

    :catch_1f
    move-exception v0

    goto :goto_2b

    :catchall_19
    move-exception v0

    move-object/from16 v23, v13

    :goto_28
    const/4 v8, 0x0

    :goto_29
    move-object v3, v0

    :goto_2a
    move-object v9, v3

    move-object v5, v8

    move-object v12, v5

    goto/16 :goto_32

    :catch_20
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v28, v14

    :goto_2b
    const/4 v8, 0x0

    :goto_2c
    const/4 v9, 0x1

    const/16 v12, 0xb

    move-object v3, v0

    :goto_2d
    move-object/from16 v29, v8

    :goto_2e
    :try_start_3d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn()Z

    move-result v10

    if-eqz v10, :cond_1e

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Request failed because it was canceled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v3

    :goto_2f
    move-object v5, v3

    move/from16 v15, v18

    goto :goto_31

    :cond_1e
    move-object/from16 v10, v28

    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Z

    move-result v10

    if-nez v10, :cond_1f

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Request didn\'t meet connectivity requirement during download, queueing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    move v15, v9

    goto :goto_31

    :cond_1f
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v10, "Request failed for unknown reason, see exception: "

    invoke-static {v5, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v5, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;

    if-eqz v5, :cond_20

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;

    iget v5, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxr;->zza:I

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzf(ILjava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v3

    goto :goto_2f

    :cond_20
    instance-of v5, v3, Ljava/io/IOException;

    if-eq v9, v5, :cond_21

    move v15, v9

    goto :goto_30

    :cond_21
    move v15, v12

    :goto_30
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;->zzf(ILjava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;

    move-result-object v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1a

    goto :goto_2f

    :goto_31
    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_22
    if-eqz v15, :cond_1d

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V

    return-void

    :catchall_1a
    move-exception v0

    move-object v3, v0

    move-object v9, v3

    move-object v5, v8

    move-object/from16 v12, v29

    :goto_32
    invoke-static {v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh()V

    :cond_23
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object/from16 v6, v23

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzp(Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;Ljava/io/File;J)V

    throw v9

    :catchall_1b
    move-exception v0

    move-object v2, v0

    :try_start_3e
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1b

    throw v2
.end method

.method private static zzf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzj(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxt;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxt;->zza(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxn;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing INTERNET permission, can\'t start download"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzh()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzk()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzo:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzj()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zza()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzq(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzj()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requests pending connectivity"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zza()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzq(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzg:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final declared-synchronized zzl(Ljava/net/HttpURLConnection;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private static zzm(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private final declared-synchronized zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzi:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v0, "No current network, connectivity cannot be satisfied."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    const-string v0, "Network disconnected, connectivity cannot be satisfied."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x11

    const/16 v5, 0x9

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unknown connectivity type checked: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v3, 0x7

    if-eq p1, v3, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v1, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v5, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/16 v3, 0x10

    if-eq p1, v3, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v4, :cond_4

    goto :goto_0

    :cond_4
    monitor-exit p0

    return v2

    :cond_5
    :goto_0
    monitor-exit p0

    return v1

    :cond_6
    :try_start_5
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzi:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Landroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v1, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v5, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p1, v4, :cond_7

    goto :goto_1

    :cond_7
    monitor-exit p0

    return v2

    :cond_8
    :goto_1
    monitor-exit p0

    return v1

    :cond_9
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempting to determine connectivity without the ACCESS_NETWORK_STATE permission."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static zzo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzp(Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;Ljava/io/File;J)V
    .locals 2
    .param p4    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzl:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zza()Ljava/util/List;

    move-result-object p1

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm:Ljava/util/Queue;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zza()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_2

    invoke-virtual {p3, p5, p6, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;->zza(Ljava/io/File;J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p5, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;->zzb(Ljava/io/File;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxe;)V

    :goto_1
    if-eqz p2, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzq(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzq(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static final zzq(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;)V
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zzt(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaly;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagn;->zza(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()Ljava/util/List;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwl;

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaji;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzd(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzl()V

    goto :goto_0

    :cond_0
    const-string v0, "Attempted to setCanceled unknown request: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzm(Ljava/net/HttpURLConnection;)V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzg()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Request is already being executed for key: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzb:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
