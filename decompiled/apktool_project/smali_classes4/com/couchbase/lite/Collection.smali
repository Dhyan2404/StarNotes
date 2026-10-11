.class public final Lcom/couchbase/lite/Collection;
.super Lcom/couchbase/lite/internal/BaseCollection;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/listener/Listenable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/internal/BaseCollection;",
        "Lcom/couchbase/lite/internal/listener/Listenable<",
        "Lcom/couchbase/lite/CollectionChange;",
        "Lcom/couchbase/lite/CollectionChangeListener;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "_default"

.field static final INDEX_KEY_EXPR:Ljava/lang/String; = "expr"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final INDEX_KEY_LANG:Ljava/lang/String; = "lang"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final INDEX_KEY_NAME:Ljava/lang/String; = "name"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final INDEX_KEY_TYPE:Ljava/lang/String; = "type"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_CONFLICT_RESOLUTION_RETRIES:I = 0xd


# instance fields
.field private final c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation
.end field

.field private final docChangeNotifiers:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/DocumentChangeNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/internal/core/C4Collection;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/BaseCollection;-><init>(Lcom/couchbase/lite/Database;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    iput-object p2, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object p1

    invoke-interface {p1}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/Collection;->postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Collection;->lambda$addChangeListener$8(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Collection;->lambda$delete$3(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Document;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->lambda$purge$4(Lcom/couchbase/lite/Document;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private assertOpen()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

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

.method private assertOpenChecked()V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

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

.method private closeCollectionChangeNotifierLocked()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/CollectionChangeNotifier;->close()V

    :cond_0
    return-void
.end method

.method public static createCollection(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/couchbase/lite/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->addC4Collection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Collection;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/internal/core/C4Collection;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public static synthetic e0(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->lambda$getDocumentExpiration$7(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->lambda$purge$5(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Collection;->lambda$save$2(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/couchbase/lite/Collection;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->lambda$getCount$0()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static getCollection(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 0
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->getC4Collection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/couchbase/lite/Collection;

    invoke-direct {p2, p0, p1}, Lcom/couchbase/lite/Collection;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/internal/core/C4Collection;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p2

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public static getDefaultCollection(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/Collection;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/couchbase/lite/Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultC4Collection()Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/couchbase/lite/Collection;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/internal/core/C4Collection;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method private getOpenC4CollectionLocked()Lcom/couchbase/lite/internal/core/C4Collection;
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

    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->assertOpenChecked()V

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    const-string v0, "c4collection"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Collection;

    return-object p0
.end method

.method public static synthetic h0(Lcom/couchbase/lite/Collection;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->scheduleImmediateOnPostExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i0(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/Collection;->lambda$addDocumentChangeListener$9(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->lambda$getDocument$1(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addChangeListener$8(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->addCollectionChangeListenerLocked(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addDocumentChangeListener$9(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/Collection;->addDocumentChangeListenerLocked(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$delete$3(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/couchbase/lite/Collection;->saveLocked(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;ZLcom/couchbase/lite/ConcurrencyControl;)V

    return-object v1
.end method

.method private synthetic lambda$getCount$0()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getDocumentCount()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDocument$1(Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/couchbase/lite/Document;->getDocumentOrNull(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDocumentExpiration$7(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->getDocumentExpiration(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method private synthetic lambda$purge$4(Lcom/couchbase/lite/Document;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->prepareDocument(Lcom/couchbase/lite/Document;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->purgeLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->replaceC4Document(Lcom/couchbase/lite/internal/core/C4Document;)V

    return-object p0

    :cond_0
    throw p0
.end method

.method private synthetic lambda$purge$5(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->purgeLocked(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$save$2(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/couchbase/lite/Collection;->saveLocked(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;ZLcom/couchbase/lite/ConcurrencyControl;)V

    return-object v1
.end method

.method private synthetic lambda$setDocumentExpiration$6(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/couchbase/lite/internal/core/C4Collection;->setDocumentExpiration(Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method private prepareDocument(Lcom/couchbase/lite/Document;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->setCollection(Lcom/couchbase/lite/Collection;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/couchbase/lite/Collection;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "CouchbaseLite"

    const/16 v0, 0x9

    const-string v1, "DocumentAnotherDatabase"

    invoke-direct {p0, v1, p1, v0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method private purgeLocked(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->purgeDocument(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Purge failed"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method private saveConflicted(Lcom/couchbase/lite/Document;Z)Z
    .locals 3
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/Collection;->getC4Document(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Document;->isDocDeleted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Document;->replaceC4Document(Lcom/couchbase/lite/internal/core/C4Document;)V

    return v1

    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/couchbase/lite/Collection;->saveInTransaction(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/internal/core/C4Document;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private saveInTransaction(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/internal/core/C4Document;Z)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->isEmpty()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->encode()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object v0

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getSharedKeys()Lcom/couchbase/lite/internal/fleece/FLSharedKeys;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/core/C4Document;->dictContainsBlobs(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Lcom/couchbase/lite/internal/fleece/FLSharedKeys;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getC4doc()Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2, v0, p0}, Lcom/couchbase/lite/internal/core/C4Document;->update(Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getCollection()Lcom/couchbase/lite/Collection;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0, p0}, Lcom/couchbase/lite/Collection;->createC4Document(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Document;->replaceC4Document(Lcom/couchbase/lite/internal/core/C4Document;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Attempt to save document in null collection"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V

    :cond_6
    throw p0
.end method

.method private scheduleImmediateOnPostExecutor(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/couchbase/lite/internal/exec/ExecutionService;->postDelayedOnExecutor(JLjava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Collection;->lambda$setDocumentExpiration$6(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private withLock(Lcom/couchbase/lite/internal/utils/Fn$Provider;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$Provider<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/couchbase/lite/internal/utils/Fn$Provider;->get()Ljava/lang/Object;

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

.method private withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows<",
            "TT;",
            "Lcom/couchbase/lite/CouchbaseLiteException;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->assertOpen()V

    invoke-interface {p1}, Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;->get()Ljava/lang/Object;

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


# virtual methods
.method public bridge synthetic addChangeListener(Lcom/couchbase/lite/ChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/couchbase/lite/CollectionChangeListener;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->addChangeListener(Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/CollectionChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/Collection;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/couchbase/lite/CollectionChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 4
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/sunia/HTREnginev2/m0e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/m0e;-><init>(Lcom/couchbase/lite/Collection;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLock(Lcom/couchbase/lite/internal/utils/Fn$Provider;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ListenerToken;

    const-string p1, "token"

    .line 7
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ListenerToken;

    return-object p0
.end method

.method public addCollectionChangeListenerLocked(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/CollectionChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/couchbase/lite/CollectionChangeNotifier;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/CollectionChangeNotifier;-><init>(Lcom/couchbase/lite/Collection;)V

    iput-object v0, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->isOpenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    new-instance v1, Lcom/sunia/HTREnginev2/k0e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k0e;-><init>(Lcom/couchbase/lite/Collection;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/CollectionChangeNotifier;->start(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    const-string p2, "Listener failed"

    invoke-static {p1, p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->DUMMY:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    return-object p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    new-instance v1, Lcom/sunia/HTREnginev2/o0e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o0e;-><init>(Lcom/couchbase/lite/Collection;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ChangeListener;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addDocumentChangeListener(Ljava/lang/String;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DocumentChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/couchbase/lite/Collection;->addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/DocumentChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "docId"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener"

    .line 3
    invoke-static {p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/h0e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/h0e;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLock(Lcom/couchbase/lite/internal/utils/Fn$Provider;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ListenerToken;

    const-string p1, "token"

    .line 6
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ListenerToken;

    return-object p0
.end method

.method public addDocumentChangeListenerLocked(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/DocumentChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DocumentChangeNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/couchbase/lite/DocumentChangeNotifier;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/DocumentChangeNotifier;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->isOpenLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/sunia/HTREnginev2/k0e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k0e;-><init>(Lcom/couchbase/lite/Collection;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/DocumentChangeNotifier;->start(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    const-string p2, "Listener failed"

    invoke-static {p1, p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->DUMMY:Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    return-object p0

    :cond_0
    :goto_0
    new-instance v1, Lcom/sunia/HTREnginev2/l0e;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l0e;-><init>(Lcom/couchbase/lite/Collection;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ChangeListener;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->setKey(Ljava/lang/String;)V

    return-object p0
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->closeCollectionChangeNotifierLocked()V

    iget-object v1, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/DocumentChangeNotifier;

    invoke-virtual {v2}, Lcom/couchbase/lite/DocumentChangeNotifier;->close()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createC4Document(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Collection;->createDocument(Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLSliceResult;I)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not create document: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public createCollectionObserver(Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->createCollectionObserver(Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4CollectionObserver;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Invalid collection: it has either been deleted or its database closed"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public createDocumentObserver(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4DocumentObserver;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->createDocumentObserver(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/core/C4DocumentObserver;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Invalid collection: it has either been deleted or its database closed"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public createFilterDocument(Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLDict;)Lcom/couchbase/lite/Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/fleece/FLDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Document;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/couchbase/lite/Document;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLDict;)V

    return-object v0
.end method

.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/Index;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Index;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->createIndexInternal(Ljava/lang/String;Lcom/couchbase/lite/AbstractIndex;)V

    return-void
.end method

.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/IndexConfiguration;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/IndexConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->createIndexInternal(Ljava/lang/String;Lcom/couchbase/lite/AbstractIndex;)V

    return-void
.end method

.method public createIndexInternal(Ljava/lang/String;Lcom/couchbase/lite/AbstractIndex;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/AbstractIndex;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "index"

    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p2, p1, p0}, Lcom/couchbase/lite/AbstractIndex;->createIndex(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Collection;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public delete(Lcom/couchbase/lite/Document;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z

    return-void
.end method

.method public delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConcurrencyControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->prepareDocument(Lcom/couchbase/lite/Document;)V

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/r0e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/r0e;-><init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    throw p0
.end method

.method public deleteIndex(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->deleteIndex(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/Collection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/Collection;

    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    iget-object v3, p1, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Collection;->getScope()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/core/C4Collection;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Collection;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getC4Document(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed retrieving document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public getC4DocumentWithRevs(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->getDocumentWithRevs(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed retrieving document: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public getC4Index(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Index;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v1}, Lcom/couchbase/lite/BaseDatabase;->assertOpenChecked()V

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Collection;->getIndex(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Index;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public getCollectionListenerCount()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->getListenerCount()I

    move-result p0

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

.method public getCount()J
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/p0e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/p0e;-><init>(Lcom/couchbase/lite/Collection;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLock(Lcom/couchbase/lite/internal/utils/Fn$Provider;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const-string v0, "token"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public getDbLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/j0e;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/j0e;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Document;

    return-object p0
.end method

.method public getDocumentExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/q0e;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/q0e;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Collection;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex(Ljava/lang/String;)Lcom/couchbase/lite/QueryIndex;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->getC4Index(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Index;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/couchbase/lite/QueryIndex;

    invoke-direct {v1, p0, p1, v0}, Lcom/couchbase/lite/QueryIndex;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Index;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public getIndexInfo()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getIndexesInfo()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getIndexes()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getIndexInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOpenC4Collection()Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->getOpenC4CollectionLocked()Lcom/couchbase/lite/internal/core/C4Collection;

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

.method public getScope()Lcom/couchbase/lite/Scope;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/Scope;

    iget-object v1, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Collection;->getScope()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/Scope;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Database;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Collection;->getScope()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isDefault()Z
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpenLocked()Z
    .locals 0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->isValid()Z

    move-result p0

    return p0
.end method

.method public purge(Lcom/couchbase/lite/Document;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "document"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->isNewDocument()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/g0e;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/g0e;-><init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/Document;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "CouchbaseLite"

    const/4 v0, 0x7

    const-string v1, "DocumentNotFound"

    invoke-direct {p0, v1, p1, v0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public purge(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "id"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/s0e;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/s0e;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;

    return-void
.end method

.method public removeCollectionChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    if-nez v0, :cond_0

    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove unrecognized db change listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Collection;->collectionChangeNotifier:Lcom/couchbase/lite/CollectionChangeNotifier;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->removeChangeListener(Lcom/couchbase/lite/ListenerToken;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->closeCollectionChangeNotifierLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeDocumentChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    if-nez v0, :cond_0

    sget-object p0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to remove unrecognized doc change listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/DocumentChangeNotifier;

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v2, p1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->removeChangeListener(Lcom/couchbase/lite/ListenerToken;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/couchbase/lite/DocumentChangeNotifier;->close()V

    iget-object p0, p0, Lcom/couchbase/lite/Collection;->docChangeNotifiers:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public save(Lcom/couchbase/lite/MutableDocument;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z

    return-void
.end method

.method public save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConcurrencyControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->prepareDocument(Lcom/couchbase/lite/Document;)V

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/n0e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/n0e;-><init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    throw p0
.end method

.method public save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConflictHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "document"

    .line 5
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "conflictHandler"

    .line 6
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Collection;->prepareDocument(Lcom/couchbase/lite/Document;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->saveWithConflictHandler(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z

    move-result p0

    return p0
.end method

.method public saveLocked(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;ZLcom/couchbase/lite/ConcurrencyControl;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/ConcurrencyControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "document"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "concurrencyControl"

    invoke-static {p4, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CouchbaseLite"

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "DeleteDocFailedNotSaved"

    const/4 p2, 0x7

    invoke-direct {p0, p1, v0, p2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {v1}, Lcom/couchbase/lite/AbstractDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->getC4doc()Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p2

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/Collection;->saveInTransaction(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/internal/core/C4Document;Z)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/AbstractDatabase;->endTransaction(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    invoke-static {p2}, Lcom/couchbase/lite/CouchbaseLiteException;->isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p2, Lcom/couchbase/lite/Collection$1;->$SwitchMap$com$couchbase$lite$ConcurrencyControl:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    if-eq p2, v1, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1, p3}, Lcom/couchbase/lite/Collection;->saveConflicted(Lcom/couchbase/lite/Document;Z)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->endTransaction(Z)V

    return-void

    :cond_3
    :try_start_2
    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecognized concurrency control: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p2, "Conflict"

    const/16 p3, 0x8

    invoke-direct {p1, p2, v0, p3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_5
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/couchbase/lite/internal/BaseCollection;->db:Lcom/couchbase/lite/Database;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/AbstractDatabase;->endTransaction(Z)V

    throw p1
.end method

.method public saveWithConflictHandler(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z
    .locals 6
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConflictHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0xd

    if-gt v2, v5, :cond_3

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDbLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/Collection;->assertOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Lcom/couchbase/lite/ConcurrencyControl;->FAIL_ON_CONFLICT:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {p0, p1, v3, v1, v5}, Lcom/couchbase/lite/Collection;->saveLocked(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;ZLcom/couchbase/lite/ConcurrencyControl;)V
    :try_end_1
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/couchbase/lite/CouchbaseLiteException;->isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/couchbase/lite/Document;->getDocumentWithDeleted(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    invoke-interface {p2, p1, v2}, Lcom/couchbase/lite/ConflictHandler;->handle(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/Document;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v2, :cond_1

    return v1

    :cond_1
    move v2, v4

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p2, "Conflict handler threw an exception"

    const-string v0, "CouchbaseLite"

    const/16 v1, 0x8

    invoke-direct {p1, p2, p0, v0, v1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw p1

    :cond_2
    :try_start_4
    throw v3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many attempts to resolve a conflicted document: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CouchbaseLite"

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public setDocumentExpiration(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/i0e;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/i0e;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/Collection;->withLockAndOpenDb(Lcom/couchbase/lite/internal/utils/Fn$ProviderThrows;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/Collection;->c4Collection:Lcom/couchbase/lite/internal/core/C4Collection;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Collection;->getDb()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
