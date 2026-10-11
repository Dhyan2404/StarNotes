.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;
.super Ljava/util/Random;
.source "SourceFile"


# instance fields
.field private final zza:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza:Z

    return-void
.end method

.method public static final zza()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagm;->zza()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method


# virtual methods
.method public final next(I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final nextBoolean()Z
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public final nextBytes([B)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public final nextDouble()D
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final nextFloat()F
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    return p0
.end method

.method public final nextGaussian()D
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public final nextInt()I
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public final nextInt(I)I
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public final nextLong()J
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setSeed(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagl;->zza:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting the seed on a thread-local Random object is not permitted"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
