.class public final Lcom/sunia/HTREnginev2/fk;
.super Lio/opencensus/common/ServerStats;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:B


# direct methods
.method public constructor <init>(JJB)V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/common/ServerStats;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/fk;->a:J

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/fk;->b:J

    iput-byte p5, p0, Lcom/sunia/HTREnginev2/fk;->c:B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/common/ServerStats;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lio/opencensus/common/ServerStats;

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/fk;->a:J

    invoke-virtual {p1}, Lio/opencensus/common/ServerStats;->getLbLatencyNs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/fk;->b:J

    invoke-virtual {p1}, Lio/opencensus/common/ServerStats;->getServiceLatencyNs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-byte p0, p0, Lcom/sunia/HTREnginev2/fk;->c:B

    invoke-virtual {p1}, Lio/opencensus/common/ServerStats;->getTraceOption()B

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getLbLatencyNs()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/fk;->a:J

    return-wide v0
.end method

.method public getServiceLatencyNs()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/fk;->b:J

    return-wide v0
.end method

.method public getTraceOption()B
    .locals 0

    iget-byte p0, p0, Lcom/sunia/HTREnginev2/fk;->c:B

    return p0
.end method

.method public hashCode()I
    .locals 8

    const v0, 0xf4243

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/fk;->a:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v1, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/fk;->b:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v1, v0

    iget-byte p0, p0, Lcom/sunia/HTREnginev2/fk;->c:B

    xor-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerStats{lbLatencyNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/fk;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serviceLatencyNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/fk;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", traceOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/sunia/HTREnginev2/fk;->c:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
