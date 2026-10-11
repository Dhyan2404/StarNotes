.class public interface abstract Lcom/couchbase/lite/ArrayInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract count()I
.end method

.method public abstract getArray(I)Lcom/couchbase/lite/ArrayInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBlob(I)Lcom/couchbase/lite/Blob;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBoolean(I)Z
.end method

.method public abstract getDate(I)Ljava/util/Date;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDictionary(I)Lcom/couchbase/lite/DictionaryInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getNumber(I)Ljava/lang/Number;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getString(I)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getValue(I)Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract toJSON()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation
.end method

.method public abstract toList()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
