.class public Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/vision/digitalink/zzj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;
    .locals 0
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    return-object p0
.end method

.method public build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    invoke-direct {v0, p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;-><init>(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No model identifier set for model"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
