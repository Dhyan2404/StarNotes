.class public final Lcom/couchbase/lite/internal/fleece/MArray;
.super Lcom/couchbase/lite/internal/fleece/MCollection;
.source "SourceFile"


# instance fields
.field private final baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/fleece/MValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/fleece/MContext;->NULL:Lcom/couchbase/lite/internal/fleece/MContext;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MContext;Z)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MArray;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MCollection;Z)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p1, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    .line 8
    invoke-direct {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->resize()V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/MCollection;->hasMutableChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;Z)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFLArray()Lcom/couchbase/lite/internal/fleece/FLArray;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    .line 14
    invoke-direct {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->resize()V

    return-void
.end method

.method private populateValues()V
    .locals 7

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    new-instance v3, Lcom/couchbase/lite/internal/fleece/MValue;

    iget-object v4, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/couchbase/lite/internal/fleece/FLArray;->get(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Lcom/couchbase/lite/internal/fleece/FLValue;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private resize()V
    .locals 9

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLArray;->count()J

    move-result-wide v0

    iget-object v2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    long-to-int v0, v0

    invoke-interface {p0, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    if-lez v5, :cond_2

    const/4 v2, 0x0

    :goto_0
    int-to-long v5, v2

    sub-long v7, v0, v3

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    sget-object v6, Lcom/couchbase/lite/internal/fleece/MValue;->EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/fleece/MArray;->insert(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot append items to a non-mutable MArray"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate()V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Cannot clear items in a non-mutable MArray"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public count()J
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V
    .locals 5
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutated()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginArray(J)Z

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endArray()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginArray(J)Z

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLArray;->get(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endArray()Z

    return-void
.end method

.method public get(J)Lcom/couchbase/lite/internal/fleece/MValue;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/MValue;

    iget-object v2, p0, Lcom/couchbase/lite/internal/fleece/MArray;->baseArray:Lcom/couchbase/lite/internal/fleece/FLArray;

    invoke-virtual {v2, p1, p2}, Lcom/couchbase/lite/internal/fleece/FLArray;->get(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Lcom/couchbase/lite/internal/fleece/FLValue;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lcom/couchbase/lite/internal/fleece/MValue;->EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;

    return-object p0
.end method

.method public insert(JLjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->populateValues()V

    :cond_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate()V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    long-to-int p1, p1

    new-instance p2, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-direct {p2, p3}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot insert items in a non-mutable MArray"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(JJ)Z
    .locals 5

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    add-long/2addr p3, p1

    cmp-long v0, p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v3

    cmp-long v0, p3, v3

    if-lez v0, :cond_2

    return v2

    :cond_2
    if-gez v0, :cond_3

    invoke-direct {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->populateValues()V

    :cond_3
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate()V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    long-to-int p1, p1

    long-to-int p2, p3

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v1

    :cond_4
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot remove items in a non-mutable MArray"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(JLjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate()V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MArray;->values:Ljava/util/List;

    long-to-int p1, p1

    new-instance p2, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-direct {p2, p3}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot set items in a non-mutable MArray"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
