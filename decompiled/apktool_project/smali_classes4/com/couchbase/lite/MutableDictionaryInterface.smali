.class public interface abstract Lcom/couchbase/lite/MutableDictionaryInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/DictionaryInterface;


# virtual methods
.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/couchbase/lite/MutableDictionaryInterface;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;

    move-result-object p0

    return-object p0
.end method

.method public abstract getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/couchbase/lite/MutableDictionaryInterface;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionaryInterface;
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
            "Lcom/couchbase/lite/MutableDictionaryInterface;"
        }
    .end annotation
.end method

.method public abstract setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionaryInterface;
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
.end method
