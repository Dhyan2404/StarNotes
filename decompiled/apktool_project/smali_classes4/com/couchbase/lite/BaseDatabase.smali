.class public abstract Lcom/couchbase/lite/BaseDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private c4Database:Lcom/couchbase/lite/internal/core/C4Database;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dbLock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/BaseDatabase;->dbLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public assertOpenChecked()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v0, "DBClosedOrCollectionDeleted"

    invoke-static {v0}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CouchbaseLite"

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public assertOpenUnchecked()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "DBClosedOrCollectionDeleted"

    invoke-static {v0}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;

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

.method public getC4DbOrThrowLocked()Lcom/couchbase/lite/internal/core/C4Database;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenChecked()V

    iget-object p0, p0, Lcom/couchbase/lite/BaseDatabase;->c4Database:Lcom/couchbase/lite/internal/core/C4Database;

    const-string v0, "c4db"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Database;

    return-object p0
.end method

.method public getDbLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/BaseDatabase;->dbLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getDbPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/BaseDatabase;->path:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getOpenC4Database()Lcom/couchbase/lite/internal/core/C4Database;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NONNULL_RETURN_VIOLATION"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

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

.method public getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    iget-object p0, p0, Lcom/couchbase/lite/BaseDatabase;->c4Database:Lcom/couchbase/lite/internal/core/C4Database;

    const-string v0, "c4db"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Database;

    return-object p0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/BaseDatabase;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

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

.method public isOpenLocked()Z
    .locals 0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/BaseDatabase;->c4Database:Lcom/couchbase/lite/internal/core/C4Database;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setC4DatabaseLocked(Lcom/couchbase/lite/internal/core/C4Database;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/BaseDatabase;->c4Database:Lcom/couchbase/lite/internal/core/C4Database;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Database;->getDbPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/BaseDatabase;->path:Ljava/lang/String;

    :cond_0
    return-void
.end method
