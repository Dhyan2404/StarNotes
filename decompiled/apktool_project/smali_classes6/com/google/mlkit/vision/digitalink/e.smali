.class public final Lcom/google/mlkit/vision/digitalink/e;
.super Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/mlkit/vision/digitalink/WritingArea;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/mlkit/vision/digitalink/RecognitionContext;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/vlp;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/e;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/sunia/HTREnginev2/vlp;-><init>(Ljava/lang/String;Lcom/google/mlkit/vision/digitalink/WritingArea;Lcom/google/mlkit/vision/digitalink/zzh;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required properties: preContext"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPreContext(Ljava/lang/String;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/e;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null preContext"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setWritingArea(Lcom/google/mlkit/vision/digitalink/WritingArea;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;
    .locals 0
    .param p1    # Lcom/google/mlkit/vision/digitalink/WritingArea;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/e;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

    return-object p0
.end method
