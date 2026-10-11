.class final Lcom/couchbase/lite/ProductVectorEncoding;
.super Lcom/couchbase/lite/VectorEncoding;
.source "SourceFile"


# instance fields
.field private final bits:J

.field private final subquantizers:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Lcom/couchbase/lite/VectorEncoding;-><init>()V

    const-string v0, "subquantizers"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertUInt32(JLjava/lang/String;)J

    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iput-wide p1, p0, Lcom/couchbase/lite/ProductVectorEncoding;->subquantizers:J

    const-wide/16 p1, 0x4

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    const-wide/16 p1, 0xc

    cmp-long p1, p3, p1

    if-gtz p1, :cond_0

    iput-wide p3, p0, Lcom/couchbase/lite/ProductVectorEncoding;->bits:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bits must be 4 <= bits <= 12: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Subquantizers must be >= 2: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/ProductVectorEncoding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/ProductVectorEncoding;

    iget-wide v3, p1, Lcom/couchbase/lite/ProductVectorEncoding;->bits:J

    iget-wide v5, p0, Lcom/couchbase/lite/ProductVectorEncoding;->bits:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p1, Lcom/couchbase/lite/ProductVectorEncoding;->subquantizers:J

    iget-wide p0, p0, Lcom/couchbase/lite/ProductVectorEncoding;->subquantizers:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBits()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/ProductVectorEncoding;->bits:J

    return-wide v0
.end method

.method public getSubQuantizers()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/ProductVectorEncoding;->subquantizers:J

    return-wide v0
.end method

.method public getTypeCode()I
    .locals 0

    sget-object p0, Lcom/couchbase/lite/VectorEncoding$EncodingType;->PQ:Lcom/couchbase/lite/VectorEncoding$EncodingType;

    invoke-virtual {p0}, Lcom/couchbase/lite/VectorEncoding$EncodingType;->getCode()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/couchbase/lite/ProductVectorEncoding;->bits:J

    const-wide/16 v2, 0x25

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/couchbase/lite/ProductVectorEncoding;->subquantizers:J

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
