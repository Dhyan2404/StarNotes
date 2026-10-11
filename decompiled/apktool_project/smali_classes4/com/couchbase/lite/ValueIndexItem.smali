.class public final Lcom/couchbase/lite/ValueIndexItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final viExpression:Lcom/couchbase/lite/Expression;


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/ValueIndexItem;->viExpression:Lcom/couchbase/lite/Expression;

    return-void
.end method

.method public static expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/ValueIndexItem;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ValueIndexItem;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/ValueIndexItem;-><init>(Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method

.method public static property(Ljava/lang/String;)Lcom/couchbase/lite/ValueIndexItem;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "property"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/ValueIndexItem;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/ValueIndexItem;-><init>(Lcom/couchbase/lite/Expression;)V

    return-object v0
.end method
