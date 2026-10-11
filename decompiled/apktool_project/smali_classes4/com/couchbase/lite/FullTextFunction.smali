.class public final Lcom/couchbase/lite/FullTextFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Lcom/couchbase/lite/IndexExpression;Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p0    # Lcom/couchbase/lite/IndexExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/couchbase/lite/Expression$IdxExpression;

    const-string v1, "index"

    .line 2
    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/IndexExpression;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "MATCH()"

    invoke-direct {v0, p1, p0, v1}, Lcom/couchbase/lite/Expression$IdxExpression;-><init>(Ljava/lang/String;Lcom/couchbase/lite/IndexExpression;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lcom/couchbase/lite/Expression$FunctionExpression;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "indexName"

    .line 5
    invoke-static {p0, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 6
    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "MATCH()"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static rank(Lcom/couchbase/lite/IndexExpression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p0    # Lcom/couchbase/lite/IndexExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/couchbase/lite/Expression$IdxExpression;

    const-string v1, "index"

    invoke-static {p0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/IndexExpression;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "RANK()"

    invoke-direct {v0, v2, p0, v1}, Lcom/couchbase/lite/Expression$IdxExpression;-><init>(Ljava/lang/String;Lcom/couchbase/lite/IndexExpression;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static rank(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/couchbase/lite/Expression$FunctionExpression;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "indexName"

    .line 3
    invoke-static {p0, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "RANK()"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
