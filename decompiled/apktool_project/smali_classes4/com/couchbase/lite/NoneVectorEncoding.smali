.class final Lcom/couchbase/lite/NoneVectorEncoding;
.super Lcom/couchbase/lite/VectorEncoding;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/VectorEncoding;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of p0, p1, Lcom/couchbase/lite/NoneVectorEncoding;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getBits()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTypeCode()I
    .locals 0

    sget-object p0, Lcom/couchbase/lite/VectorEncoding$EncodingType;->NONE:Lcom/couchbase/lite/VectorEncoding$EncodingType;

    invoke-virtual {p0}, Lcom/couchbase/lite/VectorEncoding$EncodingType;->getCode()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
