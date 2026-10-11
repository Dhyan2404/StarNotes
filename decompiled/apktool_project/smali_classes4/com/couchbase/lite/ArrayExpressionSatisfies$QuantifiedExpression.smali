.class final Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/ArrayExpressionSatisfies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuantifiedExpression"
.end annotation


# instance fields
.field private final inExpression:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final satisfiedExpression:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final variable:Lcom/couchbase/lite/VariableExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/VariableExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    iput-object p2, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->variable:Lcom/couchbase/lite/VariableExpression;

    iput-object p3, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->inExpression:Lcom/couchbase/lite/Expression;

    iput-object p4, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->satisfiedExpression:Lcom/couchbase/lite/Expression;

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lcom/couchbase/lite/ArrayExpressionSatisfies$1;->$SwitchMap$com$couchbase$lite$ArrayExpression$QuantifiesType:[I

    iget-object v2, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "EVERY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "ANY AND EVERY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "ANY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->variable:Lcom/couchbase/lite/VariableExpression;

    invoke-virtual {v1}, Lcom/couchbase/lite/VariableExpression;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->inExpression:Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;->satisfiedExpression:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
