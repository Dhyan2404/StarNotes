.class public final Lcom/couchbase/lite/ArrayFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$FunctionExpression;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "expression"

    invoke-static {p0, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "value"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "ARRAY_CONTAINS()"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static length(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Expression$FunctionExpression;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "expression"

    invoke-static {p0, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "ARRAY_LENGTH()"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
