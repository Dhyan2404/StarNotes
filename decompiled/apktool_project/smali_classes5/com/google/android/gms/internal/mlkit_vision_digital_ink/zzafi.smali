.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafh;
.source "SourceFile"


# instance fields
.field private final zza:C

.field private final zzb:C


# direct methods
.method public constructor <init>(CC)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafh;-><init>()V

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zze(Z)V

    iput-char p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zza:C

    iput-char p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zzb:C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zza:C

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzn(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zzb:C

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafq;->zzn(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzb(Ljava/util/BitSet;)V
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zza:C

    iget-char p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zzb:C

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public final zzc(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zza:C

    if-gt v0, p1, :cond_0

    iget-char p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafi;->zzb:C

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
