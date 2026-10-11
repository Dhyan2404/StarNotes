.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzw;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zze:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    return-object p0
.end method


# virtual methods
.method public final zzb(I)V
    .locals 7

    const-string v0, "NetworkUsageMonitor"

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zza:Landroid/content/Context;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "%s: Couldn\'t retrieve ConnectivityManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    :goto_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "%s: Fail to get network type "

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_1
    :goto_2
    move v2, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v4, 0x11

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :goto_4
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    if-eq v1, v2, :cond_5

    const-string v0, "wifi"

    goto :goto_5

    :cond_5
    const-string v0, "cellular"

    :goto_5
    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdu;->zzg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v4, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v4, p1

    const-string p0, "%s: Received data (%s) for fileGroup = %s, len = %d, wifiCounter = %d, cellularCounter = %d"

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzl(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zzc()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzb(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;->zzd:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;->zzg(J)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzux;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdl;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwo;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarr;Ljava/util/concurrent/Executor;)V

    return-void
.end method
