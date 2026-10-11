.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqd;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->zza(Ljava/lang/String;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    invoke-static {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No model identifier found for fileGroupId \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
