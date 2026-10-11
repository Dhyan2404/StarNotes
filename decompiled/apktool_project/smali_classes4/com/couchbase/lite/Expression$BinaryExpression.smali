.class final Lcom/couchbase/lite/Expression$BinaryExpression;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinaryExpression"
.end annotation


# static fields
.field private static final OP_ADD:Ljava/lang/String; = "+"

.field private static final OP_BETWEEN:Ljava/lang/String; = "BETWEEN"

.field private static final OP_DIVIDE:Ljava/lang/String; = "/"

.field private static final OP_EQUALS:Ljava/lang/String; = "="

.field private static final OP_GREATER:Ljava/lang/String; = ">"

.field private static final OP_GREATER_OR_EQUAL:Ljava/lang/String; = ">="

.field private static final OP_IN:Ljava/lang/String; = "IN"

.field private static final OP_IS:Ljava/lang/String; = "IS"

.field private static final OP_IS_NOT:Ljava/lang/String; = "IS NOT"

.field private static final OP_LESS:Ljava/lang/String; = "<"

.field private static final OP_LESS_OR_EQUAL:Ljava/lang/String; = "<="

.field private static final OP_LIKE:Ljava/lang/String; = "LIKE"

.field private static final OP_MODULO:Ljava/lang/String; = "%"

.field private static final OP_MULTIPLY:Ljava/lang/String; = "*"

.field private static final OP_NOT_EQUAL:Ljava/lang/String; = "!="

.field private static final OP_REGEX_LIKE:Ljava/lang/String; = "regexp_like()"

.field private static final OP_SUBTRACT:Ljava/lang/String; = "-"


# instance fields
.field private final lhs:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final op:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rhs:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->lhs:Lcom/couchbase/lite/Expression;

    iput-object p2, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->rhs:Lcom/couchbase/lite/Expression;

    iput-object p3, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->op:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->op:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->lhs:Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "BETWEEN"

    iget-object v2, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->rhs:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/Expression$BinaryExpression;->rhs:Lcom/couchbase/lite/Expression;

    check-cast p0, Lcom/couchbase/lite/Expression$AggregateExpression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression$AggregateExpression;->getExpressions()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method
