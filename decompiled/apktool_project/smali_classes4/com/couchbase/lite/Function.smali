.class public final Lcom/couchbase/lite/Function;
.super Lcom/couchbase/lite/AbstractFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractFunction;-><init>()V

    return-void
.end method

.method public static cosineDistance(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
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

    const-string v2, "expression1"

    invoke-static {p0, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "expression2"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "COSINE_DISTANCE()"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static bridge synthetic count(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/AbstractFunction;->count(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static euclideanDistance(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 4
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

    const-string v0, "expression2"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcom/couchbase/lite/Expression$FunctionExpression;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/couchbase/lite/Expression;

    const-string v3, "expression1"

    invoke-static {p0, v3}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v2, p1

    const-string p0, "EUCLIDEAN_DISTANCE()"

    invoke-direct {v1, p0, v2}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v1
.end method

.method public static bridge synthetic lower(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 0
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/AbstractFunction;->lower(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static prediction(Ljava/lang/String;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/PredictionFunction;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/PredictionFunction;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/PredictionFunction;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static squaredEuclideanDistance(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
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

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/couchbase/lite/Expression;

    const-string v2, "expression1"

    invoke-static {p0, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "expression2"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "EUCLIDEAN_DISTANCE()"

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
