.class public final Lcom/couchbase/lite/QueryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQuery(Ljava/lang/String;Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/Query;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Database;->createQuery(Ljava/lang/String;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method public static varargs select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;
    .locals 2
    .param p0    # [Lcom/couchbase/lite/SelectResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "results"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Select;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/Select;-><init>(Z[Lcom/couchbase/lite/SelectResult;)V

    return-object v0
.end method

.method public static varargs selectDistinct([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;
    .locals 2
    .param p0    # [Lcom/couchbase/lite/SelectResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "results"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/Select;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/Select;-><init>(Z[Lcom/couchbase/lite/SelectResult;)V

    return-object v0
.end method
