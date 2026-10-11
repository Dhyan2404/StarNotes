.class abstract Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mgr:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->name:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->mgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getCblMgr()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->mgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    return-object p0
.end method

.method public final getSysMgr()Landroid/net/ConnectivityManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public abstract isConnected()Z
.end method

.method public final logStart()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    iget-object v1, p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getCblMgr()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    move-result-object v2

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Started %s network listener for %s: %s"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onConnectivityChange(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getCblMgr()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->stop()V

    return-void

    :cond_0
    sget-object v1, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    iget-object v2, p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getCblMgr()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    move-result-object v4

    filled-new-array {v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Changed %s connectivity to %s for %s: %s"

    invoke-static {v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;->connectivityChanged(Z)V

    return-void
.end method

.method public abstract start()V
.end method

.method public final startFailed(Ljava/lang/RuntimeException;)V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    iget-object v1, p0, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getCblMgr()Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;

    move-result-object v2

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Failed starting %s network listener for %s: %s"

    invoke-static {v0, v1, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract stop()V
.end method
