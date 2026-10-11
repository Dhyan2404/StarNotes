.class public abstract Lcom/couchbase/lite/VectorEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;,
        Lcom/couchbase/lite/VectorEncoding$EncodingType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static none()Lcom/couchbase/lite/VectorEncoding;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/NoneVectorEncoding;

    invoke-direct {v0}, Lcom/couchbase/lite/NoneVectorEncoding;-><init>()V

    return-object v0
.end method

.method public static productQuantizer(JJ)Lcom/couchbase/lite/VectorEncoding;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/ProductVectorEncoding;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/couchbase/lite/ProductVectorEncoding;-><init>(JJ)V

    return-object v0
.end method

.method public static scalarQuantizer(Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;)Lcom/couchbase/lite/VectorEncoding;
    .locals 1
    .param p0    # Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/ScalarVectorEncoding;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/ScalarVectorEncoding;-><init>(Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;)V

    return-object v0
.end method


# virtual methods
.method public abstract getBits()J
.end method

.method public getSubQuantizers()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getTypeCode()I
.end method
