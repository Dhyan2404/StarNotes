.class interface abstract Lcom/couchbase/lite/MutableArrayInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ArrayInterface;


# virtual methods
.method public abstract addArray(Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addBlob(Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addBoolean(Z)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addDate(Ljava/util/Date;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addDictionary(Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addDouble(D)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addFloat(F)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addInt(I)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addLong(J)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addNumber(Ljava/lang/Number;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addString(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract addValue(Ljava/lang/Object;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public bridge synthetic getArray(I)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/couchbase/lite/MutableArrayInterface;->getArray(I)Lcom/couchbase/lite/MutableArrayInterface;

    move-result-object p0

    return-object p0
.end method

.method public abstract getArray(I)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public bridge synthetic getDictionary(I)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/couchbase/lite/MutableArrayInterface;->getDictionary(I)Lcom/couchbase/lite/MutableDictionaryInterface;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDictionary(I)Lcom/couchbase/lite/MutableDictionaryInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract insertArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertBoolean(IZ)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertDouble(ID)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertFloat(IF)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertInt(II)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertLong(IJ)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract insertValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract remove(I)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setArray(ILcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBlob(ILcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBoolean(IZ)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setData(Ljava/util/List;)Lcom/couchbase/lite/MutableArrayInterface;
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
            "Lcom/couchbase/lite/MutableArrayInterface;"
        }
    .end annotation
.end method

.method public abstract setDate(ILjava/util/Date;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setDictionary(ILcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setDouble(ID)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setFloat(IF)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setInt(II)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setLong(IJ)Lcom/couchbase/lite/MutableArrayInterface;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setNumber(ILjava/lang/Number;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setString(ILjava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setValue(ILjava/lang/Object;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
