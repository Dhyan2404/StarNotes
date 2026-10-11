.class public final Lcom/couchbase/lite/ArrayExpression;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static any(Lcom/couchbase/lite/VariableExpression;)Lcom/couchbase/lite/ArrayExpressionIn;
    .locals 2
    .param p0    # Lcom/couchbase/lite/VariableExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "variable"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ArrayExpressionIn;

    sget-object v1, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->ANY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/ArrayExpressionIn;-><init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;)V

    return-object v0
.end method

.method public static anyAndEvery(Lcom/couchbase/lite/VariableExpression;)Lcom/couchbase/lite/ArrayExpressionIn;
    .locals 2
    .param p0    # Lcom/couchbase/lite/VariableExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "variable"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ArrayExpressionIn;

    sget-object v1, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->ANY_AND_EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/ArrayExpressionIn;-><init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;)V

    return-object v0
.end method

.method public static every(Lcom/couchbase/lite/VariableExpression;)Lcom/couchbase/lite/ArrayExpressionIn;
    .locals 2
    .param p0    # Lcom/couchbase/lite/VariableExpression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "variable"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ArrayExpressionIn;

    sget-object v1, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/ArrayExpressionIn;-><init>(Lcom/couchbase/lite/ArrayExpression$QuantifiesType;Lcom/couchbase/lite/VariableExpression;)V

    return-object v0
.end method

.method public static variable(Ljava/lang/String;)Lcom/couchbase/lite/VariableExpression;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/VariableExpression;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/VariableExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
