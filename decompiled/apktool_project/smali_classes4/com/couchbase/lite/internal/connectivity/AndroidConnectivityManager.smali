.class public Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;


# instance fields
.field private final androidVersion:I

.field private final listener:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "observers"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final runner:Lcom/couchbase/lite/internal/utils/Fn$Runner;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/couchbase/lite/internal/utils/Fn$Runner;)V
    .locals 2
    .param p2    # Lcom/couchbase/lite/internal/utils/Fn$Runner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p2, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->runner:Lcom/couchbase/lite/internal/utils/Fn$Runner;

    .line 6
    iput p1, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->androidVersion:I

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/utils/Fn$Runner;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Runner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;-><init>(ILcom/couchbase/lite/internal/utils/Fn$Runner;)V

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->lambda$connectivityChanged$0(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;Z)V

    return-void
.end method

.method private static synthetic lambda$connectivityChanged$0(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;Z)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;->onConnectivityChanged(Z)V

    return-void
.end method

.method public static newInstance()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    new-instance v2, Lcom/sunia/HTREnginev2/la;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/la;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;-><init>(Lcom/couchbase/lite/internal/utils/Fn$Runner;)V

    return-object v1
.end method

.method private start()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->androidVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/couchbase/lite/internal/connectivity/ConnectivityListener21to23;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityListener21to23;-><init>(Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/couchbase/lite/internal/connectivity/ConnectivityListener24to28;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityListener24to28;-><init>(Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/couchbase/lite/internal/connectivity/ConnectivityListenerPost28;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityListenerPost28;-><init>(Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V

    :goto_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->start()V

    :cond_3
    return-void
.end method

.method private stop()V
    .locals 1

    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->unregisterObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public connectivityChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->stop()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;

    iget-object v2, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->runner:Lcom/couchbase/lite/internal/utils/Fn$Runner;

    new-instance v3, Lcom/sunia/HTREnginev2/ma;

    invoke-direct {v3, v1, p1}, Lcom/sunia/HTREnginev2/ma;-><init>(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;Z)V

    invoke-interface {v2, v3}, Lcom/couchbase/lite/internal/utils/Fn$Runner;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->listener:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public unregisterObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->observers:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->stop()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
