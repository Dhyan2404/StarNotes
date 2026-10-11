.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;
.source "SourceFile"


# instance fields
.field private final zzd:Z

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzge;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zzd:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zzd:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zzb()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgl;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zzd:Z

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->hashCode()I

    move-result p0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zzd:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadConstraints{requireUnmeteredNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", requiredNetworkTypes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    return-object p0
.end method

.method public final zzb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgf;->zzd:Z

    return p0
.end method
