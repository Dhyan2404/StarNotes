.class Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher$1;->this$0:Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher$1;->this$0:Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->isConnected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->onConnectivityChange(Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher$1;->this$0:Lcom/couchbase/lite/internal/connectivity/CallbackConnectivityWatcher;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->isConnected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/connectivity/ConnectivityWatcher;->onConnectivityChange(Z)V

    return-void
.end method
