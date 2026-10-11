.class public final Lcom/couchbase/lite/internal/fleece/MDict;
.super Lcom/couchbase/lite/internal/fleece/MCollection;
.source "SourceFile"


# instance fields
.field private final baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private valCount:J

.field private final values:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MDict;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/MDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MCollection;-><init>(Lcom/couchbase/lite/internal/fleece/MCollection;Z)V

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    .line 6
    iget-object v0, p1, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object p2, p1, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    .line 8
    iget-wide p1, p1, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    iput-wide p1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

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
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    .line 11
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFLDict()Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    .line 14
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLDict;->count()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDict;->count()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDict;->iterator()Lcom/couchbase/lite/internal/fleece/FLDictIterator;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    sget-object v5, Lcom/couchbase/lite/internal/fleece/MValue;->EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0

    :cond_3
    :goto_2
    iput-wide v2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    return-void

    :cond_4
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Cannot clear items from a non-mutable MDict"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/fleece/MValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public count()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    return-wide v0
.end method

.method public encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V
    .locals 6
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutated()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginDict(J)Z

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endDict()Z

    return-void

    :cond_1
    iget-wide v3, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    invoke-virtual {p1, v3, v4}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginDict(J)Z

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {v4}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    invoke-virtual {v4, p1}, Lcom/couchbase/lite/internal/fleece/MValue;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDict;->count()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDict;->iterator()Lcom/couchbase/lite/internal/fleece/FLDictIterator;

    move-result-object v0

    :goto_1
    :try_start_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->getValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endDict()Z

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/fleece/MValue;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    sget-object p0, Lcom/couchbase/lite/internal/fleece/MValue;->EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;

    return-object p0

    :cond_2
    new-instance v1, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-direct {v1, v0}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Lcom/couchbase/lite/internal/fleece/FLValue;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getKeys()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDict;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDict;->iterator()Lcom/couchbase/lite/internal/fleece/FLDictIterator;

    move-result-object v1

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->next()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLDictIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/couchbase/lite/internal/fleece/MValue;->EMPTY:Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/fleece/MDict;->set(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/MValue;)V

    return-void

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot remove items in a non-mutable MDict"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/MValue;)V
    .locals 4
    .param p2    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->assertOpen()V

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/fleece/MValue;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/MDict;->baseDict:Lcom/couchbase/lite/internal/fleece/FLDict;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/FLDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->valCount:J

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->mutate()V

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/MDict;->values:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Cannot set items in a non-mutable MDict"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
