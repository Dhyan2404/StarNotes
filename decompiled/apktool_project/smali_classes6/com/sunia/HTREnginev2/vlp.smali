.class public final Lcom/sunia/HTREnginev2/vlp;
.super Lcom/google/mlkit/vision/digitalink/RecognitionContext;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/mlkit/vision/digitalink/WritingArea;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/mlkit/vision/digitalink/WritingArea;Lcom/google/mlkit/vision/digitalink/zzh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vlp;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vlp;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vlp;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->getPreContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vlp;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->getWritingArea()Lcom/google/mlkit/vision/digitalink/WritingArea;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->getWritingArea()Lcom/google/mlkit/vision/digitalink/WritingArea;

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

.method public final getPreContext()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vlp;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getWritingArea()Lcom/google/mlkit/vision/digitalink/WritingArea;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vlp;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vlp;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vlp;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

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
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vlp;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vlp;->b:Lcom/google/mlkit/vision/digitalink/WritingArea;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecognitionContext{preContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", writingArea="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
