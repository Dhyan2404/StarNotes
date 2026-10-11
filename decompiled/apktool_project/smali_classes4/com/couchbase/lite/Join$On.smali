.class public final Lcom/couchbase/lite/Join$On;
.super Lcom/couchbase/lite/Join;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Join;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "On"
.end annotation


# instance fields
.field private onExpression:Lcom/couchbase/lite/Expression;


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Join$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DataSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/Join;-><init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;Lcom/couchbase/lite/Join$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;Lcom/couchbase/lite/Join$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Join$On;-><init>(Lcom/couchbase/lite/Join$Type;Lcom/couchbase/lite/DataSource;)V

    return-void
.end method


# virtual methods
.method public asJSON()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/couchbase/lite/Join;->access$100(Lcom/couchbase/lite/Join;)Lcom/couchbase/lite/Join$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/Join$Type;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JOIN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/couchbase/lite/Join$On;->onExpression:Lcom/couchbase/lite/Expression;

    invoke-virtual {v1}, Lcom/couchbase/lite/Expression;->asJSON()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ON"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/couchbase/lite/Join;->access$200(Lcom/couchbase/lite/Join;)Lcom/couchbase/lite/DataSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/DataSource;->asJSON()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public on(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Join;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/Join$On;->onExpression:Lcom/couchbase/lite/Expression;

    return-object p0
.end method
