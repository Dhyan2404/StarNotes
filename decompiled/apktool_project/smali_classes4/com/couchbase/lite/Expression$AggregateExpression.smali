.class final Lcom/couchbase/lite/Expression$AggregateExpression;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregateExpression"
.end annotation


# instance fields
.field private final expressions:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Expression;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Expression$AggregateExpression;->expressions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "[]"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/couchbase/lite/Expression$AggregateExpression;->expressions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getExpressions()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/Expression;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Expression$AggregateExpression;->expressions:Ljava/util/List;

    return-object p0
.end method
