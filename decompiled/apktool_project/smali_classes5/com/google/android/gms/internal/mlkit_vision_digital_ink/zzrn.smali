.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzj:Ljava/util/concurrent/Executor;

.field private final zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Ljava/util/concurrent/Executor;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zza(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private final zzE(Ljava/util/List;II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzj()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;->zzb()I

    move-result v1

    if-eq v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzE(Ljava/util/List;II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrc;

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Ljava/util/List;II)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 11
    .param p4    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inlinefile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzP:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    const-string v1, "downloading a file with an inlinefile scheme is not supported, use importFiles instead."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    move-object v2, p3

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzra;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzra;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0
.end method

.method public final zzB(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzC(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Ljava/util/List;IILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v3

    invoke-virtual {p6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzf()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zze(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Z)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p3, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzE(Ljava/util/List;II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqz;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    const-string v0, "SharedFileManager"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyx;->zza()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s: Failed to release the leases in the android shared storage"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    const-string v1, "%s: Failed to release the leases in the android shared storage. UnsupportedFileStorageOperation was thrown"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzk(Ljava/lang/String;Ljava/lang/Object;)I

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzh(Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqx;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqx;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzri;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzri;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    const-string v1, "gms_icing_mdd_shared_file_manager_metadata"

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "migrated_to_new_file_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zza(Landroid/content/Context;Z)V

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p0, "%s: Unable to read sharedFile from shared preferences."

    const-string p1, "SharedFileManager"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzf()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zze(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Z)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzc(Landroid/net/Uri;)V

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzj(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwx;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzww;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzww;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/net/Uri;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v21, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v7

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;

    iget-object v10, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    move-object/from16 v16, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    move-object/from16 v17, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    move-object/from16 v18, v6

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v6, p3

    move-object/from16 v9, p2

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v22, v13

    move-wide/from16 v13, p7

    move-object/from16 v15, p9

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zztz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;[B[B)V

    move-object/from16 v15, p5

    move-object/from16 v14, v22

    invoke-direct {v0, v15, v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Landroid/net/Uri;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzf()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zza()I

    move-result v8

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    move-object v6, v14

    move-object/from16 v9, p10

    move-object/from16 v10, v21

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;ILjava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v14, v13

    new-instance v16, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iget-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v4, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;Ljava/util/concurrent/Executor;[B)V

    move-object/from16 v6, v23

    invoke-direct {v0, v15, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzD(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Landroid/net/Uri;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result v8

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    move-object/from16 v9, p10

    move-object/from16 v10, v16

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuo;ILjava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-interface {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "%s: getOnDeviceUris called on file that doesn\'t exist. Key = %s!"

    const-string p1, "SharedFileManager"

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzi()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzq()Z

    move-result v9

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zze(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Z)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzq()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzz:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuj;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzz:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object p0

    throw p0
.end method

.method public final synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SharedFileManager"

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    move-result-object p3

    const-string v1, "%s: reVerifyFile lost or corrupted code %s"

    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqy;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrm;

    invoke-direct {v1, p0, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqr;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    invoke-virtual {p2, p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p0, "%s: No file entry with key %s"

    const-string p2, "SharedFileManager"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzf()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zze(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Z)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzup;->zzc(Landroid/net/Uri;)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqw;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const-string v1, "gms_icing_mdd_shared_file_manager_metadata"

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwe;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "next_file_name_v2"

    invoke-interface {p2, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "%s: Unable to update file name %s"

    const-string p2, "SharedFileManager"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datadownloadfile_"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v14, p0

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzc()I

    move-result v7

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zze()J

    move-result-wide v8

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzt()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    iget-object v4, v14, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iget-object v5, v14, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    const/4 v6, 0x0

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zze(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Z)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "%s: Failed to get file uri!"

    const-string v1, "SharedFileManager"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzu:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    :goto_0
    move-object v2, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrj;

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct {v1, v14, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object v3, v14, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v15

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrk;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object/from16 v6, p4

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v16, v13

    move-object/from16 v13, p9

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;IJLjava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;)V

    iget-object v0, v14, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    move-object/from16 v1, v16

    invoke-virtual {v15, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v11, p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj()Ljava/lang/String;

    move-result-object v0

    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzui;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzui;->zzb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v4, v0

    iget-object v0, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    move-object/from16 v5, p3

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzre;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzre;

    iget-object v3, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqu;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p8

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v13}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v9, p0

    if-nez p7, :cond_0

    const-string v0, "%s: Start download called on file that doesn\'t exist. Key = %s!"

    const-string v1, "SharedFileManager"

    move-object v5, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzro;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;->zzv:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbg;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    throw v2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzm()I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zza:Landroid/content/Context;

    iget-object v3, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-lt v1, v3, :cond_4

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zzc()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgc;->zzb()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzp()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzE(Ljava/util/List;II)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    :goto_1
    move-object v10, v0

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqv;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;ILjava/util/List;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v11}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzv(JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzc()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zzf(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {p0, p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzw(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzx(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzy(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzj:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzz(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/lang/String;J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_shared_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zzf(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
