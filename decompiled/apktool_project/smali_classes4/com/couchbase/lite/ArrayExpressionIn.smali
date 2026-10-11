.class public final Lcom/couchbase/lite/ArrayExpressionIn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final variable:Lcom/couchbase/lite/VariableExpression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/VariableExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ArrayExpressionIn;->type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    iput-object p2, p0, Lcom/couchbase/lite/ArrayExpressionIn;->variable:Lcom/couchbase/lite/VariableExpression;

    return-void
.end method


# virtual methods
.method public in(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/ArrayExpressionSatisfies;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ArrayExpressionSatisfies;

    iget-object v1, p0, Lcom/couchbase/lite/ArrayExpressionIn;->type:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    iget-object p0, p0, Lcom/couchbase/lite/ArrayExpressionIn;->variable:Lcom/couchbase/lite/VariableExpression;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/ArrayExpressionSatisfies;-><init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
