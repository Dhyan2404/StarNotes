.class public final Lcom/couchbase/lite/VectorIndexConfiguration;
.super Lcom/couchbase/lite/IndexConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
    }
.end annotation


# instance fields
.field private encoding:Lcom/couchbase/lite/VectorEncoding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private isLazy:Z

.field private maxTrainingSize:J

.field private metric:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private minTrainingSize:J

.field private final numCentroids:J

.field private final numDimensions:J

.field private numProbes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/IndexConfiguration;-><init>([Ljava/lang/String;)V

    sget-object p1, Lcom/couchbase/lite/Defaults$VectorIndex;->ENCODING:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    invoke-static {p1}, Lcom/couchbase/lite/VectorEncoding;->scalarQuantizer(Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;)Lcom/couchbase/lite/VectorEncoding;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    sget-object p1, Lcom/couchbase/lite/Defaults$VectorIndex;->DISTANCE_METRIC:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    iput-object p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->metric:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    iput-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    iput-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numProbes:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->isLazy:Z

    const-wide/16 v0, 0x2

    cmp-long p1, v0, p2

    if-gtz p1, :cond_1

    const-wide/16 v0, 0x1000

    cmp-long p1, p2, v0

    if-gtz p1, :cond_1

    const-wide/16 v0, 0x1

    cmp-long p1, v0, p4

    if-gtz p1, :cond_0

    const-wide/32 v0, 0xfa00

    cmp-long p1, p4, v0

    if-gtz p1, :cond_0

    iput-wide p2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numDimensions:J

    iput-wide p4, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numCentroids:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Centroids must be 1 <= centroids <= 64000: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dimensions must be 2 <= dimensions <= 2048: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Collection;)V
    .locals 27
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string v6, ", "

    if-eqz v5, :cond_1

    iget-wide v7, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    cmp-long v1, v7, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to create a Vector Index with minTrainingSize > maxTrainingSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    invoke-virtual {v1}, Lcom/couchbase/lite/VectorEncoding;->getSubQuantizers()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    iget-wide v7, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->numDimensions:J

    rem-long/2addr v7, v1

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dimensions must be an integer multiple of subquantizers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->numDimensions:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/couchbase/lite/IndexConfiguration;->getIndexSpec()Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->numDimensions:J

    iget-object v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->metric:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    invoke-virtual {v3}, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->getCode()I

    move-result v12

    iget-wide v13, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->numCentroids:J

    iget-object v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    invoke-virtual {v3}, Lcom/couchbase/lite/VectorEncoding;->getTypeCode()I

    move-result v15

    iget-object v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    invoke-virtual {v3}, Lcom/couchbase/lite/VectorEncoding;->getBits()J

    move-result-wide v18

    iget-wide v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    move-wide/from16 v20, v3

    iget-wide v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    move-wide/from16 v22, v3

    iget-wide v3, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->numProbes:J

    move-wide/from16 v24, v3

    iget-boolean v0, v0, Lcom/couchbase/lite/VectorIndexConfiguration;->isLazy:Z

    move/from16 v26, v0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-wide/from16 v16, v1

    invoke-virtual/range {v7 .. v26}, Lcom/couchbase/lite/internal/core/C4Collection;->createVectorIndex(Ljava/lang/String;Ljava/lang/String;JIJIJJJJJZ)V

    return-void
.end method

.method public getCentroids()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numCentroids:J

    return-wide v0
.end method

.method public getDimensions()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numDimensions:J

    return-wide v0
.end method

.method public getEncoding()Lcom/couchbase/lite/VectorEncoding;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    return-object p0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/IndexConfiguration;->getExpressions()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getMaxTrainingSize()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    return-wide v0
.end method

.method public getMetric()Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->metric:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    return-object p0
.end method

.method public getMinTrainingSize()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    return-wide v0
.end method

.method public getNumProbes()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numProbes:J

    return-wide v0
.end method

.method public isLazy()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->isLazy:Z

    return p0
.end method

.method public setEncoding(Lcom/couchbase/lite/VectorEncoding;)Lcom/couchbase/lite/VectorIndexConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/VectorEncoding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/VectorEncoding;

    iput-object p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    return-object p0
.end method

.method public setLazy(Z)Lcom/couchbase/lite/VectorIndexConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->isLazy:Z

    return-object p0
.end method

.method public setMaxTrainingSize(J)Lcom/couchbase/lite/VectorIndexConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "max training size"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertUInt32(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    return-object p0
.end method

.method public setMetric(Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;)Lcom/couchbase/lite/VectorIndexConfiguration;
    .locals 1
    .param p1    # Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "metric"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    iput-object p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->metric:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    return-object p0
.end method

.method public setMinTrainingSize(J)Lcom/couchbase/lite/VectorIndexConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "min training size"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertUInt32(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    return-object p0
.end method

.method public setNumProbes(J)Lcom/couchbase/lite/VectorIndexConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "num probes"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertUInt32(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numProbes:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VectorIndexConfiguration{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numDimensions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numCentroids:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->encoding:Lcom/couchbase/lite/VectorEncoding;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->metric:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->isLazy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->minTrainingSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->maxTrainingSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->numProbes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/couchbase/lite/VectorIndexConfiguration;->isLazy:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
