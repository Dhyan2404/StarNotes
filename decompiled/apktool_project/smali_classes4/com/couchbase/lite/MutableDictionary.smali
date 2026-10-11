.class public final Lcom/couchbase/lite/MutableDictionary;
.super Lcom/couchbase/lite/Dictionary;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/MutableDictionaryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/couchbase/lite/Dictionary;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Dictionary;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MDict;

    iget-object p1, p1, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/couchbase/lite/internal/fleece/MDict;-><init>(Lcom/couchbase/lite/internal/fleece/MDict;Z)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Dictionary;-><init>(Lcom/couchbase/lite/internal/fleece/MDict;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/MValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/MCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Dictionary;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/Dictionary;-><init>()V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/Dictionary;-><init>()V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionary;

    return-void
.end method

.method private toFleece(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ne p1, p0, :cond_0

    check-cast p1, Lcom/couchbase/lite/Dictionary;

    invoke-virtual {p1}, Lcom/couchbase/lite/Dictionary;->toMutable()Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/couchbase/lite/Fleece;->toCBLObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/couchbase/lite/Dictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MutableArray;

    return-object p0
.end method

.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/couchbase/lite/Dictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public isChanged()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MCollection;->isMutated()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "key"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->remove(Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionary;
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/MutableDictionary;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MDict;->clear()V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    iget-object v2, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "data key"

    invoke-static {v3, v4}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/couchbase/lite/internal/fleece/MValue;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/couchbase/lite/MutableDictionary;->toFleece(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/couchbase/lite/internal/fleece/MDict;->set(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/MValue;)V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableDictionary;->setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/couchbase/lite/internal/utils/JSONUtils;->fromJSON(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionary;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed parsing JSON"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableDictionary;->setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "key"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Lcom/couchbase/lite/MutableDictionary;->toFleece(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object v1

    iget-object v2, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-static {p2, v1, v2}, Lcom/couchbase/lite/Fleece;->willMutate(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    new-instance v2, Lcom/couchbase/lite/internal/fleece/MValue;

    invoke-direct {v2, p2}, Lcom/couchbase/lite/internal/fleece/MValue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Lcom/couchbase/lite/internal/fleece/MDict;->set(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/MValue;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Mutable objects may not be encoded as JSON"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
