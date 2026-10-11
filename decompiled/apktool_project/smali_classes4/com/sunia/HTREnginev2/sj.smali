.class public final Lcom/sunia/HTREnginev2/sj;
.super Lcom/sunia/HTREnginev2/jxf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/sj$b;
    }
.end annotation


# instance fields
.field public final g:J

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:I


# direct methods
.method public constructor <init>(JIIJI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/jxf;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/sunia/HTREnginev2/sj;->g:J

    .line 4
    iput p3, p0, Lcom/sunia/HTREnginev2/sj;->h:I

    .line 5
    iput p4, p0, Lcom/sunia/HTREnginev2/sj;->i:I

    .line 6
    iput-wide p5, p0, Lcom/sunia/HTREnginev2/sj;->j:J

    .line 7
    iput p7, p0, Lcom/sunia/HTREnginev2/sj;->k:I

    return-void
.end method

.method public synthetic constructor <init>(JIIJILcom/sunia/HTREnginev2/sj$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/sunia/HTREnginev2/sj;-><init>(JIIJI)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sj;->i:I

    return p0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sj;->j:J

    return-wide v0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sj;->h:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sj;->k:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sunia/HTREnginev2/jxf;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sunia/HTREnginev2/jxf;

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/sj;->g:J

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jxf;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sunia/HTREnginev2/sj;->h:I

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jxf;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/sunia/HTREnginev2/sj;->i:I

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jxf;->b()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/sj;->j:J

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jxf;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget p0, p0, Lcom/sunia/HTREnginev2/sj;->k:I

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/jxf;->e()I

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

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sj;->g:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/sj;->g:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/sunia/HTREnginev2/sj;->h:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/sunia/HTREnginev2/sj;->i:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lcom/sunia/HTREnginev2/sj;->j:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/sunia/HTREnginev2/sj;->k:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sj;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sj;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/sj;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/sj;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/sj;->k:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
