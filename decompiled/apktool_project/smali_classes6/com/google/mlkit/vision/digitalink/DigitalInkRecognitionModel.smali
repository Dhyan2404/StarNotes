.class public Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
.super Lcom/google/mlkit/common/model/RemoteModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;
    }
.end annotation


# instance fields
.field public final f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->DIGITAL_INK:Lcom/google/mlkit/common/sdkinternal/ModelType;

    const-string v2, "digital_ink_recognition_model_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/mlkit/common/model/RemoteModel;-><init>(Ljava/lang/String;Lcom/google/mlkit/common/sdkinternal/model/BaseModel;Lcom/google/mlkit/common/sdkinternal/ModelType;)V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    return-void
.end method

.method public static builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;
    .locals 2
    .param p0    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;-><init>(Lcom/google/mlkit/vision/digitalink/zzj;)V

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/mlkit/common/model/RemoteModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    iget-object p1, p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getModelIdentifier()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/mlkit/common/model/RemoteModel;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final zza()Z
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->f:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->a()Z

    move-result p0

    return p0
.end method
