.class public final Lcom/couchbase/lite/PredictionFunction;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# instance fields
.field private final input:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final model:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/Expression;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    const-string v0, "model"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/PredictionFunction;->model:Lcom/couchbase/lite/Expression;

    const-string p1, "input"

    invoke-static {p2, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Expression;

    iput-object p1, p0, Lcom/couchbase/lite/PredictionFunction;->input:Lcom/couchbase/lite/Expression;

    return-void
.end method

.method private varargs getPredictionFunction([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;
    .locals 1
    .param p1    # [Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/couchbase/lite/Expression$FunctionExpression;

    const-string v0, "PREDICTION()"

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/Expression$FunctionExpression;-><init>(Ljava/lang/String;[Lcom/couchbase/lite/Expression;)V

    return-object p0
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/couchbase/lite/PredictionFunction;->model:Lcom/couchbase/lite/Expression;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/couchbase/lite/PredictionFunction;->input:Lcom/couchbase/lite/Expression;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/couchbase/lite/PredictionFunction;->getPredictionFunction([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression$FunctionExpression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public propertyPath(Ljava/lang/String;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/couchbase/lite/Expression;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/couchbase/lite/PredictionFunction;->model:Lcom/couchbase/lite/Expression;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/couchbase/lite/PredictionFunction;->input:Lcom/couchbase/lite/Expression;

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "path"

    invoke-static {p1, v2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/couchbase/lite/PredictionFunction;->getPredictionFunction([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression$FunctionExpression;

    move-result-object p0

    return-object p0
.end method
