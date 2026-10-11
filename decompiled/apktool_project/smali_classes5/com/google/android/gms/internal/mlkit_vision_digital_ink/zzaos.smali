.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/security/MessageDigest;

.field private final zzb:I

.field private zzc:Z


# direct methods
.method public synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaoi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zza:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzb:I

    return-void
.end method

.method private final zzf()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzc:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzk(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zzc([BII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzf()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zza:Ljava/security/MessageDigest;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzc:Z

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zza:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zza:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;->zze([B)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zza:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaos;->zzb:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;->zze([B)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaom;

    move-result-object p0

    :goto_0
    return-object p0
.end method
