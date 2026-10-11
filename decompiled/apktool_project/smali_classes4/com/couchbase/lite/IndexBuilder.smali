.class public final Lcom/couchbase/lite/IndexBuilder;
.super Lcom/couchbase/lite/AbstractIndexBuilder;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractIndexBuilder;-><init>()V

    return-void
.end method

.method public static predictiveIndex(Ljava/lang/String;Lcom/couchbase/lite/Expression;Ljava/util/List;)Lcom/couchbase/lite/PredictiveIndex;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/Expression;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/couchbase/lite/PredictiveIndex;"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/PredictiveIndex;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/PredictiveIndex;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Expression;Ljava/util/List;)V

    return-object v0
.end method

.method public static bridge varargs synthetic valueIndex([Lcom/couchbase/lite/ValueIndexItem;)Lcom/couchbase/lite/ValueIndex;
    .locals 0
    .param p0    # [Lcom/couchbase/lite/ValueIndexItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/AbstractIndexBuilder;->valueIndex([Lcom/couchbase/lite/ValueIndexItem;)Lcom/couchbase/lite/ValueIndex;

    move-result-object p0

    return-object p0
.end method
