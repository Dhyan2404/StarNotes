.class final Lcom/couchbase/lite/internal/connectivity/ConnectivityListener24to28;
.super Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x18
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/connectivity/AndroidConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "24-28"

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
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->getSysMgr()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;->connectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

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
