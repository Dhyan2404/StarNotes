.class public Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;


# instance fields
.field private final connectivityManager:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final replFactory:Lcom/couchbase/lite/internal/utils/Fn$Provider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/Fn$Provider<",
            "Lcom/couchbase/lite/internal/core/C4Replicator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;Lcom/couchbase/lite/internal/utils/Fn$Provider;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/utils/Fn$Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;",
            "Lcom/couchbase/lite/internal/utils/Fn$Provider<",
            "Lcom/couchbase/lite/internal/core/C4Replicator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->connectivityManager:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    iput-object p2, p0, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->replFactory:Lcom/couchbase/lite/internal/utils/Fn$Provider;

    return-void
.end method


# virtual methods
.method public handleOffline(Lcom/couchbase/lite/ReplicatorActivityLevel;Z)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorActivityLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->connectivityManager:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;->unregisterObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V

    return-void

    :cond_0
    sget-object p2, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->connectivityManager:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;->registerObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V

    iget-object p1, p0, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->connectivityManager:Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    invoke-interface {p1}, Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;->isConnected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->onConnectivityChanged(Z)V

    return-void
.end method

.method public onConnectivityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->replFactory:Lcom/couchbase/lite/internal/utils/Fn$Provider;

    invoke-interface {v0}, Lcom/couchbase/lite/internal/utils/Fn$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Replicator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Connectivity change for @%s: %s"

    invoke-static {v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/internal/core/C4Replicator;->setHostReachable(Z)V

    return-void
.end method
