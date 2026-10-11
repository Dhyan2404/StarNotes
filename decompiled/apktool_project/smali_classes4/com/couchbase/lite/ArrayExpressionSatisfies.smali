.class public final Lcom/couchbase/lite/ArrayExpressionSatisfies;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;
    }
.end annotation


# instance fields
.field private final inExpression:Lcom/couchbase/lite/Expression;
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
.method public constructor <init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;Lcom/couchbase/lite/Expression;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies;->type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    iput-object p2, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies;->variable:Lcom/couchbase/lite/VariableExpression;

    iput-object p3, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies;->inExpression:Lcom/couchbase/lite/Expression;

    return-void
.end method


# virtual methods
.method public satisfies(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;
    .locals 3
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;

    iget-object v1, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies;->type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    iget-object v2, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies;->variable:Lcom/couchbase/lite/VariableExpression;

    iget-object p0, p0, Lcom/couchbase/lite/ArrayExpressionSatisfies;->inExpression:Lcom/couchbase/lite/Expression;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/ArrayExpressionSatisfies$QuantifiedExpression;-><init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
