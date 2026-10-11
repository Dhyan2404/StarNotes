.class public abstract Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    .locals 1
    .param p0    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/vision/digitalink/a;

    invoke-direct {v0}, Lcom/google/mlkit/vision/digitalink/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/digitalink/a;->a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;->setMaxResultCount(I)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract zzc()Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
