.class final Lcom/couchbase/lite/Expression$UnaryExpression;
.super Lcom/couchbase/lite/Expression;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnaryExpression"
.end annotation


# static fields
.field private static final OP_MISSING:I = 0x3eb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OP_NULL:I = 0x3ea
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OP_VALUED:I = 0x3e9


# instance fields
.field private final op:I

.field private final operand:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Expression;I)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Expression;-><init>()V

    const-string v0, "operand"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/Expression$UnaryExpression;->operand:Lcom/couchbase/lite/Expression;

    iput p2, p0, Lcom/couchbase/lite/Expression$UnaryExpression;->op:I

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/couchbase/lite/Expression$UnaryExpression;->op:I

    const/16 v2, 0x3e9

    const-string v3, "IS"

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " VALUED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/couchbase/lite/Expression$UnaryExpression;->operand:Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/couchbase/lite/Expression$UnaryExpression;->op:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected unary type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/couchbase/lite/Expression$UnaryExpression;->op:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "MISSING"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
