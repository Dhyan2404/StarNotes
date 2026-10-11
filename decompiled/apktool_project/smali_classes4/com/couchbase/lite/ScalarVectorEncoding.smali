.class final Lcom/couchbase/lite/ScalarVectorEncoding;
.super Lcom/couchbase/lite/VectorEncoding;
.source "SourceFile"


# instance fields
.field private final type:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/VectorEncoding;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ScalarVectorEncoding;->type:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/ScalarVectorEncoding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/ScalarVectorEncoding;

    invoke-virtual {p1}, Lcom/couchbase/lite/ScalarVectorEncoding;->getBits()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/couchbase/lite/ScalarVectorEncoding;->getBits()J

    move-result-wide p0

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

    iget-object p0, p0, Lcom/couchbase/lite/ScalarVectorEncoding;->type:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    invoke-virtual {p0}, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->getBits()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTypeCode()I
    .locals 0

    sget-object p0, Lcom/couchbase/lite/VectorEncoding$EncodingType;->SQ:Lcom/couchbase/lite/VectorEncoding$EncodingType;

    invoke-virtual {p0}, Lcom/couchbase/lite/VectorEncoding$EncodingType;->getCode()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/ScalarVectorEncoding;->getBits()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
