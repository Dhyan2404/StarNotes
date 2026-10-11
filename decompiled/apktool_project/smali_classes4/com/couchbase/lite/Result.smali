.class public final Lcom/couchbase/lite/Result;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ArrayInterface;
.implements Lcom/couchbase/lite/DictionaryInterface;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/ArrayInterface;",
        "Lcom/couchbase/lite/DictionaryInterface;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lcom/couchbase/lite/ResultContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final missingColumns:J

.field private final values:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/fleece/FLValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ResultContext;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ResultContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->getColumns()Lcom/couchbase/lite/internal/fleece/FLArrayIterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->extractColumns(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-virtual {p2}, Lcom/couchbase/lite/internal/core/C4QueryEnumerator;->getMissingColumns()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/Result;->missingColumns:J

    return-void
.end method

.method private assertOpen()V
    .locals 1

    iget-object p0, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultContext;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Attempt to use a result after its containing ResultSet has been closed"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private assertValid(I)V
    .locals 3

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not 0 <= index < "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Result;->count()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extractColumns(Lcom/couchbase/lite/internal/fleece/FLArrayIterator;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/fleece/FLArrayIterator;",
            ")",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/fleece/FLValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->getColumnCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {p1, v1}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->getValueAt(I)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private fleeceValueToObject(I)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {v0}, Lcom/couchbase/lite/ResultContext;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object v0

    const-string v1, "db"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/AbstractDatabase;

    new-instance v1, Lcom/couchbase/lite/internal/fleece/MRoot;

    iget-object p0, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/couchbase/lite/internal/fleece/MRoot;-><init>(Lcom/couchbase/lite/internal/fleece/MContext;Lcom/couchbase/lite/internal/fleece/FLValue;Z)V

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MRoot;->asNative()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getColumnCount()I
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultContext;->getResultSet()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->getColumnCount()I

    move-result p0

    return p0
.end method

.method private getColumnNames()Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultContext;->getResultSet()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->getColumnNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private indexForColumnName(Ljava/lang/String;)I
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/Result;->context:Lcom/couchbase/lite/ResultContext;

    invoke-virtual {v0}, Lcom/couchbase/lite/ResultContext;->getResultSet()Lcom/couchbase/lite/ResultSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/ResultSet;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/couchbase/lite/Result;->missingColumns:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1
.end method

.method private isInBounds(I)Z
    .locals 0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Result;->count()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result p0

    return p0
.end method

.method public count()I
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->getColumnCount()I

    move-result p0

    return p0
.end method

.method public getArray(I)Lcom/couchbase/lite/Array;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->fleeceValueToObject(I)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/couchbase/lite/Array;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Array;

    :goto_0
    return-object p0
.end method

.method public getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 7
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getArray(I)Lcom/couchbase/lite/Array;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getArray(I)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getArray(I)Lcom/couchbase/lite/Array;

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
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;

    move-result-object p0

    return-object p0
.end method

.method public getBlob(I)Lcom/couchbase/lite/Blob;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->fleeceValueToObject(I)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of p1, p0, Lcom/couchbase/lite/Blob;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Blob;

    :goto_0
    return-object p0
.end method

.method public getBlob(Ljava/lang/String;)Lcom/couchbase/lite/Blob;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getBlob(I)Lcom/couchbase/lite/Blob;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBoolean(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asBool()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/JSONUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 4
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getDate(I)Ljava/util/Date;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDictionary(I)Lcom/couchbase/lite/Dictionary;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->fleeceValueToObject(I)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/couchbase/lite/Dictionary;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/couchbase/lite/Dictionary;

    :goto_0
    return-object p0
.end method

.method public getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 7
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getDictionary(I)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getDictionary(I)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getDictionary(I)Lcom/couchbase/lite/Dictionary;

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
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(I)D
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asDouble()D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getDouble(I)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFloat()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getFloat(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getInt(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide p0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
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

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->getColumnNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLong(I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/fleece/FLValue;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getLong(I)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->fleeceValueToObject(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/CBLConverter;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 4
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getNumber(I)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->fleeceValueToObject(I)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->assertValid(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->fleeceValueToObject(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    const-string v0, "key"

    .line 4
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Result;->isInBounds(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
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

    invoke-virtual {p0}, Lcom/couchbase/lite/Result;->getKeys()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    iget-object v0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getJSONEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;

    move-result-object v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->beginDict(J)Z

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->getColumnNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    if-lt v4, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeKey(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->endDict()Z

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->finishJSON()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->close()V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot encode result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public toList()Ljava/util/List;
    .locals 4
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

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    invoke-virtual {p0}, Lcom/couchbase/lite/Result;->count()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/couchbase/lite/internal/fleece/FLValue;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
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

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->assertOpen()V

    iget-object v0, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0}, Lcom/couchbase/lite/Result;->getColumnNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/couchbase/lite/Result;->indexForColumnName(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    if-lt v4, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/couchbase/lite/Result;->values:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/couchbase/lite/internal/fleece/FLValue;

    invoke-virtual {v4}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method
