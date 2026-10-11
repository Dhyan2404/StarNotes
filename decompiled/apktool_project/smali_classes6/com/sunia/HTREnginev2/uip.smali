.class public final Lcom/sunia/HTREnginev2/uip;
.super Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;ILjava/util/concurrent/Executor;Lcom/google/mlkit/vision/digitalink/zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uip;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    iput p2, p0, Lcom/sunia/HTREnginev2/uip;->b:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/uip;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uip;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzb()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sunia/HTREnginev2/uip;->b:I

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zza()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uip;->c:Ljava/util/concurrent/Executor;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzc()Ljava/util/concurrent/Executor;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzc()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uip;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sunia/HTREnginev2/uip;->b:I

    xor-int/2addr v0, v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uip;->c:Ljava/util/concurrent/Executor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uip;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/uip;->b:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uip;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DigitalInkRecognizerOptions{model="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxResultCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", executor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/uip;->b:I

    return p0
.end method

.method public final zzb()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uip;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    return-object p0
.end method

.method public final zzc()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uip;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method
