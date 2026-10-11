.class final Lcom/couchbase/lite/internal/connectivity/ConnectivityListener21to23;
.super Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "21-23"

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getSysMgr()Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 3

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getSysMgr()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;->connectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->logStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->startFailed(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method
