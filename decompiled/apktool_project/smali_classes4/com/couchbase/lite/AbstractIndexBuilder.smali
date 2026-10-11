.class Lcom/couchbase/lite/AbstractIndexBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs fullTextIndex([Lcom/couchbase/lite/FullTextIndexItem;)Lcom/couchbase/lite/FullTextIndex;
    .locals 2
    .param p0    # [Lcom/couchbase/lite/FullTextIndexItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length v0, p0

    const-string v1, "items"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(ILjava/lang/String;)I

    new-instance v0, Lcom/couchbase/lite/FullTextIndex;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/FullTextIndex;-><init>([Lcom/couchbase/lite/FullTextIndexItem;)V

    return-object v0
.end method

.method public static varargs valueIndex([Lcom/couchbase/lite/ValueIndexItem;)Lcom/couchbase/lite/ValueIndex;
    .locals 2
    .param p0    # [Lcom/couchbase/lite/ValueIndexItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    array-length v0, p0

    const-string v1, "items"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(ILjava/lang/String;)I

    new-instance v0, Lcom/couchbase/lite/ValueIndex;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/ValueIndex;-><init>([Lcom/couchbase/lite/ValueIndexItem;)V

    return-object v0
.end method
