.class public final Lcom/google/mlkit/vision/digitalink/c;
.super Lcom/google/mlkit/vision/digitalink/Ink$Point;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(FFLjava/lang/Long;)V
    .locals 0
    .param p3    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/mlkit/vision/digitalink/Ink$Point;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/digitalink/c;->a:F

    iput p2, p0, Lcom/google/mlkit/vision/digitalink/c;->b:F

    iput-object p3, p0, Lcom/google/mlkit/vision/digitalink/c;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/vision/digitalink/Ink$Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/mlkit/vision/digitalink/Ink$Point;

    iget v1, p0, Lcom/google/mlkit/vision/digitalink/c;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/google/mlkit/vision/digitalink/c;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/c;->c:Ljava/lang/Long;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getTimestamp()Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

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

.method public final getTimestamp()Ljava/lang/Long;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/c;->c:Ljava/lang/Long;

    return-object p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/digitalink/c;->a:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/digitalink/c;->b:F

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/mlkit/vision/digitalink/c;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget v2, p0, Lcom/google/mlkit/vision/digitalink/c;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/c;->c:Ljava/lang/Long;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result p0

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/mlkit/vision/digitalink/c;->a:F

    iget v1, p0, Lcom/google/mlkit/vision/digitalink/c;->b:F

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/c;->c:Ljava/lang/Long;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Point{x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
