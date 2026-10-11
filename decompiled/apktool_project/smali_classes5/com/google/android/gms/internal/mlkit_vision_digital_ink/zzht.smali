.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

.field private final zzg:Ljava/util/concurrent/Executor;

.field private final zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

.field private final zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

.field private final zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuz;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    return-void
.end method

.method private final zzn(Landroid/net/Uri;Ljava/util/List;)I
    .locals 8

    const-string v0, "%s: Failed to delete unaccounted file!"

    const-string v1, "ExpirationHandler"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzb(Landroid/net/Uri;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v3, v2

    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzj(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v4, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzn(Landroid/net/Uri;Ljava/util/List;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_3
    const-string v5, "%s: Deleted unaccounted file with uri %s!"

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v4, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    move v2, v3

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v3, v2

    :cond_4
    return v3
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/List;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExpirationHandler"

    filled-new-array {v5, v4, v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%s: Checking group %s with expiration date %s"

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    invoke-static {v6, v7, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzk(JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s: Expired group %s with expiration date %s"

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzj(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzc(Ljava/util/List;Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzm(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzd(Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcm;->zzf()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzk(JLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgs;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzc()I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zze()J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzt()Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {v2, v3, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzf(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhi;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhi;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zze(Ljava/util/Set;Ljava/util/List;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhe;

    invoke-direct {v6, p0, v1, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhf;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhf;-><init>(Ljava/util/List;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzo()Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p2

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhm;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v4

    invoke-static {p2, v4, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhg;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhg;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p2

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwx;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzww;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;

    invoke-direct {p2, p0, v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzww;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf(Ljava/util/Set;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzg(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzi()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrn;->zzx(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance p4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhq;

    invoke-direct {p4, p0, p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzh(Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhl;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzi(Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzlm;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzhk;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzho;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzho;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzg:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzk(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/List;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "ExpirationHandler"

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s: Failed to release unaccounted file!"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "%s: Total %d unaccounted file released. "

    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzn(Landroid/net/Uri;Ljava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "%s: Total %d unaccounted file deleted. "

    invoke-static {p1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic zzl(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzb(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final synthetic zzm(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 8

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zza:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzE()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzht;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;->zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdz;

    :cond_4
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object p2
.end method
