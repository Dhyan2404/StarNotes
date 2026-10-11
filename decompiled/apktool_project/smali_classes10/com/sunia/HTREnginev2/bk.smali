.class public final Lcom/sunia/HTREnginev2/bk;
.super Lio/opencensus/metrics/export/Point;
.source "SourceFile"


# instance fields
.field public final a:Lio/opencensus/metrics/export/Value;

.field public final b:Lio/opencensus/common/Timestamp;


# direct methods
.method public constructor <init>(Lio/opencensus/metrics/export/Value;Lio/opencensus/common/Timestamp;)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/metrics/export/Point;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bk;->a:Lio/opencensus/metrics/export/Value;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bk;->b:Lio/opencensus/common/Timestamp;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null timestamp"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null value"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/metrics/export/Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/metrics/export/Point;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/bk;->a:Lio/opencensus/metrics/export/Value;

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Point;->getValue()Lio/opencensus/metrics/export/Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bk;->b:Lio/opencensus/common/Timestamp;

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Point;->getTimestamp()Lio/opencensus/common/Timestamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getTimestamp()Lio/opencensus/common/Timestamp;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bk;->b:Lio/opencensus/common/Timestamp;

    return-object p0
.end method

.method public getValue()Lio/opencensus/metrics/export/Value;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bk;->a:Lio/opencensus/metrics/export/Value;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bk;->a:Lio/opencensus/metrics/export/Value;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bk;->b:Lio/opencensus/common/Timestamp;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/bk;->a:Lio/opencensus/metrics/export/Value;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bk;->b:Lio/opencensus/common/Timestamp;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
