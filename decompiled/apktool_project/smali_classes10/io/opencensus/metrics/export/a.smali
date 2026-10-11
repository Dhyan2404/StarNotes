.class public final Lio/opencensus/metrics/export/a;
.super Lio/opencensus/metrics/export/Distribution;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:D

.field public final c:D

.field public final d:Lio/opencensus/metrics/export/Distribution$BucketOptions;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Distribution$Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JDDLio/opencensus/metrics/export/Distribution$BucketOptions;Ljava/util/List;)V
    .locals 0
    .param p7    # Lio/opencensus/metrics/export/Distribution$BucketOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JDD",
            "Lio/opencensus/metrics/export/Distribution$BucketOptions;",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Distribution$Bucket;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/opencensus/metrics/export/Distribution;-><init>()V

    iput-wide p1, p0, Lio/opencensus/metrics/export/a;->a:J

    iput-wide p3, p0, Lio/opencensus/metrics/export/a;->b:D

    iput-wide p5, p0, Lio/opencensus/metrics/export/a;->c:D

    iput-object p7, p0, Lio/opencensus/metrics/export/a;->d:Lio/opencensus/metrics/export/Distribution$BucketOptions;

    if-eqz p8, :cond_0

    iput-object p8, p0, Lio/opencensus/metrics/export/a;->e:Ljava/util/List;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null buckets"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/opencensus/metrics/export/Distribution;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lio/opencensus/metrics/export/Distribution;

    iget-wide v3, p0, Lio/opencensus/metrics/export/a;->a:J

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Distribution;->getCount()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/metrics/export/a;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Distribution;->getSum()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lio/opencensus/metrics/export/a;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Distribution;->getSumOfSquaredDeviations()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/opencensus/metrics/export/a;->d:Lio/opencensus/metrics/export/Distribution$BucketOptions;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Distribution;->getBucketOptions()Lio/opencensus/metrics/export/Distribution$BucketOptions;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/opencensus/metrics/export/Distribution;->getBucketOptions()Lio/opencensus/metrics/export/Distribution$BucketOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, Lio/opencensus/metrics/export/a;->e:Ljava/util/List;

    invoke-virtual {p1}, Lio/opencensus/metrics/export/Distribution;->getBuckets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getBucketOptions()Lio/opencensus/metrics/export/Distribution$BucketOptions;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/opencensus/metrics/export/a;->d:Lio/opencensus/metrics/export/Distribution$BucketOptions;

    return-object p0
.end method

.method public getBuckets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/opencensus/metrics/export/Distribution$Bucket;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/opencensus/metrics/export/a;->e:Ljava/util/List;

    return-object p0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lio/opencensus/metrics/export/a;->a:J

    return-wide v0
.end method

.method public getSum()D
    .locals 2

    iget-wide v0, p0, Lio/opencensus/metrics/export/a;->b:D

    return-wide v0
.end method

.method public getSumOfSquaredDeviations()D
    .locals 2

    iget-wide v0, p0, Lio/opencensus/metrics/export/a;->c:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    const v0, 0xf4243

    int-to-long v1, v0

    iget-wide v3, p0, Lio/opencensus/metrics/export/a;->a:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v1, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lio/opencensus/metrics/export/a;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v5

    iget-wide v6, p0, Lio/opencensus/metrics/export/a;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v1, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lio/opencensus/metrics/export/a;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v5

    iget-wide v5, p0, Lio/opencensus/metrics/export/a;->c:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lio/opencensus/metrics/export/a;->d:Lio/opencensus/metrics/export/Distribution$BucketOptions;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object p0, p0, Lio/opencensus/metrics/export/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distribution{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/metrics/export/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/metrics/export/a;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", sumOfSquaredDeviations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/opencensus/metrics/export/a;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bucketOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/opencensus/metrics/export/a;->d:Lio/opencensus/metrics/export/Distribution$BucketOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buckets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/opencensus/metrics/export/a;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
