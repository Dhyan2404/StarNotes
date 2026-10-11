.class public interface abstract Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;
    }
.end annotation


# virtual methods
.method public abstract isConnected()Z
.end method

.method public abstract registerObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V
    .param p1    # Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract unregisterObserver(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;)V
    .param p1    # Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
