.class public final Lcom/sunia/HTREnginev2/fcp;
.super Lcom/google/mlkit/vision/text/pipeline/zbn;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/mlkit/vision/text/pipeline/zbo;

.field public final b:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/text/pipeline/zbo;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/text/pipeline/zbn;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fcp;->a:Lcom/google/mlkit/vision/text/pipeline/zbo;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fcp;->b:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/sunia/HTREnginev2/fcp;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/fcp;->d:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null lineBoxParcels"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/text/pipeline/zbn;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/mlkit/vision/text/pipeline/zbn;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fcp;->a:Lcom/google/mlkit/vision/text/pipeline/zbo;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fcp;->b:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fcp;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/fcp;->d:Z

    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/pipeline/zbn;->zbd()Z

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fcp;->a:Lcom/google/mlkit/vision/text/pipeline/zbo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fcp;->b:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fcp;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    mul-int/2addr v0, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/fcp;->d:Z

    if-eq v2, p0, :cond_0

    const/16 p0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 p0, 0x4cf

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fcp;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fcp;->b:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/fcp;->a:Lcom/google/mlkit/vision/text/pipeline/zbo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VkpResults{status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", textParcel="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lineBoxParcels="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", fromColdCall="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/fcp;->d:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zba()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fcp;->c:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbkx;

    return-object p0
.end method

.method public final zbb()Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fcp;->b:Lcom/google/android/gms/internal/mlkit_vision_text_bundled_common/zbok;

    return-object p0
.end method

.method public final zbc()Lcom/google/mlkit/vision/text/pipeline/zbo;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fcp;->a:Lcom/google/mlkit/vision/text/pipeline/zbo;

    return-object p0
.end method

.method public final zbd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/fcp;->d:Z

    return p0
.end method
