.class public final Lcom/couchbase/lite/SelectResult$As;
.super Lcom/couchbase/lite/SelectResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/SelectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "As"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/Expression;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Expression;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/SelectResult;-><init>(Lcom/couchbase/lite/Expression;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/SelectResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/SelectResult$As;-><init>(Lcom/couchbase/lite/Expression;)V

    return-void
.end method


# virtual methods
.method public as(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "alias"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/SelectResult$As;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public asJSON()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/SelectResult;->asJSON()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/SelectResult$As;->alias:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "AS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/couchbase/lite/SelectResult$As;->alias:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
