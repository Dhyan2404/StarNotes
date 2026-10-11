.class public abstract Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/text/pipeline/a;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/pipeline/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/text/pipeline/a;->a(Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    if-nez p1, :cond_0

    const-string p1, "mlkit-google-ocr-models"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setModelDir(Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    invoke-virtual {v0, p2}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setLanguageHint(Ljava/lang/String;)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;->setEnableLowLatencyInBackground(Z)Lcom/google/mlkit/vision/text/pipeline/VkpTextRecognizerOptions$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method
