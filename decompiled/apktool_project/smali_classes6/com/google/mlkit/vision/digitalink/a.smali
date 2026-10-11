.class public final Lcom/google/mlkit/vision/digitalink/a;
.super Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

.field public b:I

.field public c:Ljava/util/concurrent/Executor;

.field public d:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/a;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null model"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
    .locals 4

    iget-byte v0, p0, Lcom/google/mlkit/vision/digitalink/a;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/a;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sunia/HTREnginev2/uip;

    iget v2, p0, Lcom/google/mlkit/vision/digitalink/a;->b:I

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/a;->c:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/sunia/HTREnginev2/uip;-><init>(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;ILjava/util/concurrent/Executor;Lcom/google/mlkit/vision/digitalink/zzb;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/a;->a:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    if-nez v1, :cond_2

    const-string v1, " model"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte p0, p0, Lcom/google/mlkit/vision/digitalink/a;->d:B

    if-nez p0, :cond_3

    const-string p0, " maxResultCount"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/a;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final setMaxResultCount(I)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/mlkit/vision/digitalink/a;->b:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/mlkit/vision/digitalink/a;->d:B

    return-object p0
.end method
