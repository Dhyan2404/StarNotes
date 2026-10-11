.class abstract Lcom/couchbase/lite/AbstractQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/listener/Listenable;
.implements Lcom/couchbase/lite/Query;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/AbstractQuery$LiveQueries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/internal/listener/Listenable<",
        "Lcom/couchbase/lite/QueryChange;",
        "Lcom/couchbase/lite/QueryChangeListener;",
        ">;",
        "Lcom/couchbase/lite/Query;"
    }
.end annotation


# static fields
.field protected static final DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field private c4query:Lcom/couchbase/lite/internal/core/C4Query;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private columnNames:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

.field private final lock:Ljava/lang/Object;

.field private parameters:Lcom/couchbase/lite/Parameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/AbstractQuery;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    new-instance v1, Lcom/couchbase/lite/e;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/e;-><init>(Lcom/couchbase/lite/AbstractQuery;)V

    new-instance v2, Lcom/couchbase/lite/f;

    invoke-direct {v2, p0}, Lcom/couchbase/lite/f;-><init>(Lcom/couchbase/lite/AbstractQuery;)V

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/ListenerToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->removeListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/AbstractQuery;)Lcom/couchbase/lite/AbstractQuery$LiveQueries;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    return-object p0
.end method

.method public static synthetic b(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->lambda$addChangeListener$0(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V

    return-void
.end method

.method public static synthetic c(Lcom/couchbase/lite/AbstractQuery;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->registerLiveQuery()V

    return-void
.end method

.method public static synthetic d(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/AbstractQuery;->lambda$getObserver$1(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V

    return-void
.end method

.method public static synthetic e(Lcom/couchbase/lite/AbstractQuery;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->unregisterLiveQuery()V

    return-void
.end method

.method private getC4QueryLocked()Lcom/couchbase/lite/internal/core/C4Query;
    .locals 6
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->c4query:Lcom/couchbase/lite/internal/core/C4Query;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/AbstractQuery;->prepQueryLocked(Lcom/couchbase/lite/AbstractDatabase;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Query;->getColumnCount()I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/couchbase/lite/internal/core/C4Query;->getColumnNameForIndex(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v0, "DuplicateSelectResultName"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->formatStandardMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CouchbaseLite"

    const/16 v2, 0x17

    invoke-direct {p0, v0, v1, v2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_3
    iput-object v2, p0, Lcom/couchbase/lite/AbstractQuery;->columnNames:Ljava/util/Map;

    iput-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->c4query:Lcom/couchbase/lite/internal/core/C4Query;

    return-object v0

    :cond_4
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v0, "Attempt to prep query with no database"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDbLock()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Cannot seize DB lock"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getObserver(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)Lcom/couchbase/lite/internal/core/C4QueryObserver;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/listener/ChangeListenerToken<",
            "Lcom/couchbase/lite/QueryChange;",
            ">;)",
            "Lcom/couchbase/lite/internal/core/C4QueryObserver;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getC4QueryLocked()Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object v1

    new-instance v2, Lcom/couchbase/lite/b;

    invoke-direct {v2, p0, p1}, Lcom/couchbase/lite/b;-><init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V

    invoke-static {v1, v2}, Lcom/couchbase/lite/internal/core/C4QueryObserver;->create(Lcom/couchbase/lite/internal/core/C4Query;Lcom/couchbase/lite/internal/core/C4QueryObserver$QueryChangeCallback;)Lcom/couchbase/lite/internal/core/C4QueryObserver;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Failed creating query listener"

    invoke-direct {p1, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$addChangeListener$0(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->start(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getObserver$1(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/AbstractQuery;->onQueryChanged(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V

    return-void
.end method

.method private onQueryChanged(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Lcom/couchbase/lite/LiteCoreException;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/listener/ChangeListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4QueryEnumerator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/LiteCoreException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/listener/ChangeListenerToken<",
            "Lcom/couchbase/lite/QueryChange;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4QueryEnumerator;",
            "Lcom/couchbase/lite/LiteCoreException;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/QueryChange;

    new-instance v1, Lcom/couchbase/lite/ResultSet;

    iget-object v2, p0, Lcom/couchbase/lite/AbstractQuery;->columnNames:Ljava/util/Map;

    invoke-direct {v1, p0, p2, v2}, Lcom/couchbase/lite/ResultSet;-><init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Ljava/util/Map;)V

    invoke-direct {v0, p0, v1, p3}, Lcom/couchbase/lite/QueryChange;-><init>(Lcom/couchbase/lite/Query;Lcom/couchbase/lite/ResultSet;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->postChange(Ljava/lang/Object;)V

    return-void
.end method

.method private registerLiveQuery()V
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/couchbase/lite/AbstractQuery$1;

    invoke-direct {v1, p0, p0}, Lcom/couchbase/lite/AbstractQuery$1;-><init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/AbstractQuery;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/AbstractDatabase;->registerProcess(Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;)V

    return-void
.end method

.method private removeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->remove(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method private unregisterLiveQuery()V
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery;->getDatabase()Lcom/couchbase/lite/AbstractDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/AbstractDatabase;->unregisterProcess(Ljava/lang/Object;)V

    :cond_0
    return-void
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
    check-cast p1, Lcom/couchbase/lite/QueryChangeListener;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->addChangeListener(Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/QueryChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/AbstractQuery;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;

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
    check-cast p2, Lcom/couchbase/lite/QueryChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractQuery;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/QueryChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/QueryChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 4
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    new-instance v1, Lcom/couchbase/lite/c;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/c;-><init>(Lcom/couchbase/lite/AbstractQuery;)V

    invoke-direct {v0, p2, p1, v1}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;-><init>(Lcom/couchbase/lite/ChangeListener;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    .line 6
    iget-object p2, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractQuery;->getObserver(Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)Lcom/couchbase/lite/internal/core/C4QueryObserver;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->put(Lcom/couchbase/lite/ListenerToken;Lcom/couchbase/lite/internal/core/C4QueryObserver;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object p1

    invoke-interface {p1}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/couchbase/lite/d;

    invoke-direct {p2, p0, v0}, Lcom/couchbase/lite/d;-><init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/listener/ChangeListenerToken;)V

    .line 8
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public execute()Lcom/couchbase/lite/ResultSet;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->parameters:Lcom/couchbase/lite/Parameters;

    if-nez v0, :cond_0

    new-instance v0, Lcom/couchbase/lite/Parameters;

    invoke-direct {v0}, Lcom/couchbase/lite/Parameters;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->parameters:Lcom/couchbase/lite/Parameters;

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->parameters:Lcom/couchbase/lite/Parameters;

    invoke-virtual {v0}, Lcom/couchbase/lite/Parameters;->encode()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object v0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getDbLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/couchbase/lite/AbstractQuery;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getC4QueryLocked()Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/couchbase/lite/internal/core/C4Query;->run(Lcom/couchbase/lite/internal/fleece/FLSliceResult;)Lcom/couchbase/lite/internal/core/C4QueryEnumerator;

    move-result-object v0

    iget-object v3, p0, Lcom/couchbase/lite/AbstractQuery;->columnNames:Ljava/util/Map;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Lcom/couchbase/lite/ResultSet;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/couchbase/lite/ResultSet;-><init>(Lcom/couchbase/lite/AbstractQuery;Lcom/couchbase/lite/internal/core/C4QueryEnumerator;Ljava/util/Map;)V
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public explain()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractQuery;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getC4QueryLocked()Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Query;->explain()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :cond_0
    :try_start_3
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v2, "Could not explain query"

    invoke-direct {p0, v2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public abstract getDatabase()Lcom/couchbase/lite/AbstractDatabase;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public getParameters()Lcom/couchbase/lite/Parameters;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery;->parameters:Lcom/couchbase/lite/Parameters;

    return-object p0
.end method

.method public isLive(Lcom/couchbase/lite/ListenerToken;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->isLive(Lcom/couchbase/lite/ListenerToken;)Z

    move-result p0

    return p0
.end method

.method public liveCount()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractQuery;->liveQueries:Lcom/couchbase/lite/AbstractQuery$LiveQueries;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractQuery$LiveQueries;->liveCount()I

    move-result p0

    return p0
.end method

.method public abstract prepQueryLocked(Lcom/couchbase/lite/AbstractDatabase;)Lcom/couchbase/lite/internal/core/C4Query;
    .param p1    # Lcom/couchbase/lite/AbstractDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation
.end method

.method public removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractQuery;->removeListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method public setParameters(Lcom/couchbase/lite/Parameters;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Parameters;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractQuery;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Parameters;->readonlyCopy()Lcom/couchbase/lite/Parameters;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/couchbase/lite/AbstractQuery;->parameters:Lcom/couchbase/lite/Parameters;

    if-nez p1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;->getC4QueryLocked()Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/Parameters;->encode()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->setParameters(Lcom/couchbase/lite/internal/fleece/FLSliceResult;)V
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed encoding parameters"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
