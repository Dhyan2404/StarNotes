.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;


# instance fields
.field private final zzb:Ljava/util/UUID;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;-><init>(Ljava/util/UUID;J)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzb:Ljava/util/UUID;

    const-wide v0, 0x5deece66dL

    xor-long p1, p2, v0

    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v0, 0xffffffffffffL

    and-long/2addr p1, v0

    invoke-direct {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 11

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x5deece66dL

    mul-long v4, v0, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0xb

    add-long/2addr v4, v7

    const-wide v9, 0xffffffffffffL

    and-long/2addr v4, v9

    mul-long/2addr v2, v4

    add-long/2addr v2, v7

    and-long/2addr v2, v9

    invoke-virtual {v6, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x10

    ushr-long v0, v4, p0

    ushr-long/2addr v2, p0

    long-to-int p0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzc()Ljava/util/UUID;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zza()J

    move-result-wide v0

    const-wide/32 v2, -0xf001

    and-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zza()J

    move-result-wide v2

    const/4 v4, 0x2

    ushr-long/2addr v2, v4

    new-instance v4, Ljava/util/UUID;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzb:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    xor-long/2addr v0, v5

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzb:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    xor-long/2addr v2, v5

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method
