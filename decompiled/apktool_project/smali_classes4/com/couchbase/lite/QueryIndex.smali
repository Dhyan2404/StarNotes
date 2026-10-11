.class public Lcom/couchbase/lite/QueryIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final c4QueryIndex:Lcom/couchbase/lite/internal/core/C4Index;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final collection:Lcom/couchbase/lite/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Index;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4Index;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/QueryIndex;->collection:Lcom/couchbase/lite/Collection;

    iput-object p2, p0, Lcom/couchbase/lite/QueryIndex;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/couchbase/lite/QueryIndex;->c4QueryIndex:Lcom/couchbase/lite/internal/core/C4Index;

    return-void
.end method


# virtual methods
.method public beginUpdate(I)Lcom/couchbase/lite/IndexUpdater;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "limit"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertPositive(ILjava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/QueryIndex;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/couchbase/lite/QueryIndex;->c4QueryIndex:Lcom/couchbase/lite/internal/core/C4Index;

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/core/C4Index;->beginUpdate(I)Lcom/couchbase/lite/internal/core/C4IndexUpdater;

    move-result-object p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/couchbase/lite/IndexUpdaterImpl;

    iget-object p0, p0, Lcom/couchbase/lite/QueryIndex;->collection:Lcom/couchbase/lite/Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/couchbase/lite/IndexUpdaterImpl;-><init>(Lcom/couchbase/lite/internal/core/C4IndexUpdater;Lcom/couchbase/lite/Database;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Failed starting an index update"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public getCollection()Lcom/couchbase/lite/Collection;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/QueryIndex;->collection:Lcom/couchbase/lite/Collection;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/QueryIndex;->name:Ljava/lang/String;

    return-object p0
.end method
