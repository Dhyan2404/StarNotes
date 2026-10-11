.class public final Lcom/couchbase/lite/MutableArray;
.super Lcom/couchbase/lite/Array;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/MutableArrayInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/couchbase/lite/Array;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Array;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MArray;

    iget-object p1, p1, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/couchbase/lite/internal/fleece/MArray;-><init>(Lcom/couchbase/lite/internal/fleece/MArray;Z)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Array;-><init>(Lcom/couchbase/lite/internal/fleece/MArray;)V

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
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Array;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/Array;-><init>()V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    return-void
.end method

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/Array;-><init>()V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->setData(Ljava/util/List;)Lcom/couchbase/lite/MutableArray;

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

    check-cast p1, Lcom/couchbase/lite/Array;

    invoke-virtual {p1}, Lcom/couchbase/lite/Array;->toMutable()Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/couchbase/lite/Fleece;->toCBLObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addArray(Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addArray(Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addArray(Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addBlob(Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addBlob(Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addBlob(Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addBoolean(Z)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addBoolean(Z)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addBoolean(Z)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addDate(Ljava/util/Date;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addDate(Ljava/util/Date;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addDate(Ljava/util/Date;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addDictionary(Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addDictionary(Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addDictionary(Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addDouble(D)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addDouble(D)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->addDouble(D)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addFloat(F)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addFloat(F)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addFloat(F)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addInt(I)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addInt(I)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addInt(I)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addLong(J)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addLong(J)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->addLong(J)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addNumber(Ljava/lang/Number;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addNumber(Ljava/lang/Number;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addNumber(Ljava/lang/Number;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addString(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addString(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addString(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/MutableArray;->toFleece(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MArray;->append(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getArray(I)Lcom/couchbase/lite/Array;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->getArray(I)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getArray(I)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->getArray(I)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public getArray(I)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/couchbase/lite/Array;->getArray(I)Lcom/couchbase/lite/Array;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MutableArray;

    return-object p0
.end method

.method public bridge synthetic getArray(I)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->getArray(I)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(I)Lcom/couchbase/lite/Dictionary;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->getDictionary(I)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(I)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->getDictionary(I)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(I)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/couchbase/lite/Array;->getDictionary(I)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method

.method public bridge synthetic getDictionary(I)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->getDictionary(I)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public insertArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertBoolean(IZ)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertBoolean(IZ)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertBoolean(IZ)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertDouble(ID)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertDouble(ID)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableArray;->insertDouble(ID)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertFloat(IF)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertFloat(IF)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertFloat(IF)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertInt(II)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertInt(II)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertInt(II)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertLong(IJ)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertLong(IJ)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableArray;->insertLong(IJ)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic insertString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/couchbase/lite/MutableArray;->toFleece(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, p2}, Lcom/couchbase/lite/internal/fleece/MArray;->insert(JLjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of range"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Lcom/couchbase/lite/MutableArray;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/couchbase/lite/internal/fleece/MArray;->remove(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of range"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic remove(I)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->remove(I)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setBoolean(IZ)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBoolean(IZ)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setBoolean(IZ)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setData(Ljava/util/List;)Lcom/couchbase/lite/MutableArray;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/MutableArray;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MArray;->clear()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1}, Lcom/couchbase/lite/MutableArray;->toFleece(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/couchbase/lite/internal/fleece/MArray;->append(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
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

.method public bridge synthetic setData(Ljava/util/List;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->setData(Ljava/util/List;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setDouble(ID)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDouble(ID)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableArray;->setDouble(ID)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setFloat(IF)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setFloat(IF)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setFloat(IF)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setInt(II)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setInt(II)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setInt(II)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/couchbase/lite/internal/utils/JSONUtils;->fromJSON(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->setData(Ljava/util/List;)Lcom/couchbase/lite/MutableArray;
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

.method public bridge synthetic setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableArray;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setLong(IJ)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setLong(IJ)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableArray;->setLong(IJ)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/couchbase/lite/MutableArray;->toFleece(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/internal/fleece/MArray;->get(J)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object v1

    iget-object v4, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-static {p2, v1, v4}, Lcom/couchbase/lite/Fleece;->willMutate(Ljava/lang/Object;Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    .line 5
    invoke-virtual {v1, v2, v3, p2}, Lcom/couchbase/lite/internal/fleece/MArray;->set(JLjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of range"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableArray;->setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArray;

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
