.class public Lcom/couchbase/lite/SelectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/SelectResult$As;,
        Lcom/couchbase/lite/SelectResult$From;
    }
.end annotation


# instance fields
.field private selectExpression:Lcom/couchbase/lite/Expression;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/SelectResult;->selectExpression:Lcom/couchbase/lite/Expression;

    return-void
.end method

.method public static all()Lcom/couchbase/lite/SelectResult$From;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/SelectResult$From;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/couchbase/lite/PropertyExpression;->allFrom(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/couchbase/lite/SelectResult$From;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/SelectResult$1;)V

    return-object v0
.end method

.method public static expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/SelectResult$As;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/SelectResult$As;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/SelectResult$1;)V

    return-object v0
.end method

.method public static property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/SelectResult$As;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/SelectResult$As;-><init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/SelectResult$1;)V

    return-object v0
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/SelectResult;->selectExpression:Lcom/couchbase/lite/Expression;

    invoke-virtual {p0}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setExpression(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/couchbase/lite/SelectResult;->selectExpression:Lcom/couchbase/lite/Expression;

    return-void
.end method
