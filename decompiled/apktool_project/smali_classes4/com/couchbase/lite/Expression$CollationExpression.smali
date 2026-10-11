.class final Lcom/couchbase/lite/Expression$CollationExpression;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollationExpression"
.end annotation


# instance fields
.field private final collation:Lcom/couchbase/lite/Collation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final operand:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Collation;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Collation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Expression$CollationExpression;->operand:Lcom/couchbase/lite/Expression;

    iput-object p2, p0, Lcom/couchbase/lite/Expression$CollationExpression;->collation:Lcom/couchbase/lite/Collation;

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "COLLATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/couchbase/lite/Expression$CollationExpression;->collation:Lcom/couchbase/lite/Collation;

    invoke-virtual {v1}, Lcom/couchbase/lite/Collation;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/couchbase/lite/Expression$CollationExpression;->operand:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
