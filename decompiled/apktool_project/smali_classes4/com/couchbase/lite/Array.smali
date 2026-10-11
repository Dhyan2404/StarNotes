.class public Lcom/couchbase/lite/Array;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ArrayInterface;
.implements Lcom/couchbase/lite/internal/fleece/FLEncodable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Array$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/ArrayInterface;",
        "Lcom/couchbase/lite/internal/fleece/FLEncodable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final internalArray:Lcom/couchbase/lite/internal/fleece/MArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final lock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/MArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Array;-><init>(Lcom/couchbase/lite/internal/fleece/MArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MArray;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/MArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    .line 5
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MCollection;->getContext()Lcom/couchbase/lite/internal/fleece/MContext;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MContext;->getDatabase()Lcom/couchbase/lite/BaseDatabase;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

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

    .line 2
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MArray;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Array;-><init>(Lcom/couchbase/lite/internal/fleece/MArray;)V

    return-void
.end method

.method private getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/fleece/MArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/couchbase/lite/internal/fleece/MArray;->get(J)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not 0 <= index < "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->count()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final count()I
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v1

    long-to-int p0, v1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MArray;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/Array;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/Array;

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/Array;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public getArray(I)Lcom/couchbase/lite/Array;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p1, p0, Lcom/couchbase/lite/Array;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Array;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getArray(I)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Array;->getArray(I)Lcom/couchbase/lite/Array;

    move-result-object p0

    return-object p0
.end method

.method public getBlob(I)Lcom/couchbase/lite/Blob;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/couchbase/lite/Blob;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Blob;

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

.method public getBoolean(I)Z
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asBoolean(Ljava/lang/Object;)Z

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

.method public getDate(I)Ljava/util/Date;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Array;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(I)Lcom/couchbase/lite/Dictionary;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of p1, p0, Lcom/couchbase/lite/Dictionary;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Dictionary;

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getDictionary(I)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Array;->getDictionary(I)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-static {p1, p0}, Lcom/couchbase/lite/CBLConverter;->asDouble(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)D

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFloat(I)F
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-static {p1, p0}, Lcom/couchbase/lite/CBLConverter;->asFloat(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)F

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

.method public getInt(I)I
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-static {p1, p0}, Lcom/couchbase/lite/CBLConverter;->asInteger(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)I

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

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-static {p1, p0}, Lcom/couchbase/lite/CBLConverter;->asLong(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

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

.method public getValue(I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v1, p1}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x1f

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Array$ArrayIterator;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Array$ArrayIterator;-><init>(Lcom/couchbase/lite/Array;)V

    return-object v0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getJSONEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;

    move-result-object v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/internal/fleece/MArray;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->finishJSON()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->close()V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public toList()Ljava/util/List;
    .locals 6
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

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MArray;->count()J

    move-result-wide v1

    long-to-int v1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-direct {p0, v4, v3}, Lcom/couchbase/lite/Array;->getMValue(Lcom/couchbase/lite/internal/fleece/MArray;I)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object v4

    iget-object v5, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v4, v5}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/couchbase/lite/Fleece;->toObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toMutable()Lcom/couchbase/lite/MutableArray;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Array;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/couchbase/lite/MutableArray;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/MutableArray;-><init>(Lcom/couchbase/lite/Array;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Array{("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/Array;->internalArray:Lcom/couchbase/lite/internal/fleece/MArray;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MCollection;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Array;->count()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/couchbase/lite/Array;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
