.class public Lcom/couchbase/lite/Dictionary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/DictionaryInterface;
.implements Lcom/couchbase/lite/internal/fleece/FLEncodable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/Dictionary$DictionaryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/DictionaryInterface;",
        "Lcom/couchbase/lite/internal/fleece/FLEncodable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected final internalDict:Lcom/couchbase/lite/internal/fleece/MDict;
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
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/MDict;-><init>()V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Dictionary;-><init>(Lcom/couchbase/lite/internal/fleece/MDict;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/MDict;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/MDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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
    iput-object p1, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

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
    new-instance v0, Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/internal/fleece/MDict;-><init>(Lcom/couchbase/lite/internal/fleece/MValue;Lcom/couchbase/lite/internal/fleece/MCollection;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Dictionary;-><init>(Lcom/couchbase/lite/internal/fleece/MDict;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MValue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public count()I
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MDict;->count()J

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

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/Dictionary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/Dictionary;

    invoke-virtual {p1}, Lcom/couchbase/lite/Dictionary;->count()I

    move-result v1

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->count()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/couchbase/lite/Dictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Lcom/couchbase/lite/Dictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_4
    invoke-virtual {p1, v3}, Lcom/couchbase/lite/Dictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p1, v3}, Lcom/couchbase/lite/Dictionary;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    return v2

    :cond_6
    return v0
.end method

.method public getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/couchbase/lite/Array;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/couchbase/lite/Array;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;

    move-result-object p0

    return-object p0
.end method

.method public getBlob(Ljava/lang/String;)Lcom/couchbase/lite/Blob;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/couchbase/lite/Blob;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/couchbase/lite/Blob;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

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

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/couchbase/lite/Dictionary;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/couchbase/lite/Dictionary;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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

.method public getKeys()Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/MDict;->getKeys()Ljava/util/List;

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

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

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

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object p1

    iget-object p0, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

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
    .locals 5

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/couchbase/lite/Dictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->count()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Dictionary$DictionaryIterator;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/Dictionary$DictionaryIterator;-><init>(Lcom/couchbase/lite/Dictionary;)V

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
    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/internal/fleece/MDict;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

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

    const-string v2, "Cannot encode dictionary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/fleece/MDict;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v4, v3}, Lcom/couchbase/lite/internal/fleece/MDict;->get(Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/MValue;

    move-result-object v4

    iget-object v5, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v4, v5}, Lcom/couchbase/lite/internal/fleece/MValue;->asNative(Lcom/couchbase/lite/internal/fleece/MCollection;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/couchbase/lite/Fleece;->toObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toMutable()Lcom/couchbase/lite/MutableDictionary;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Dictionary;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/couchbase/lite/MutableDictionary;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/MutableDictionary;-><init>(Lcom/couchbase/lite/Dictionary;)V

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
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dictionary{("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/Dictionary;->internalDict:Lcom/couchbase/lite/internal/fleece/MDict;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MCollection;->getStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/couchbase/lite/Dictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
