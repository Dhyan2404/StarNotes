.class public Lcom/google/mlkit/vision/digitalink/DigitalInkRecognition;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
    .locals 2
    .param p0    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/digitalink/internal/zzk;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/digitalink/internal/zzk;

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/digitalink/internal/zzk;->zza(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object p0

    return-object p0
.end method
