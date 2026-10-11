.class Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "C4ListenerPeer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/couchbase/lite/internal/core/C4Listener;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Listener;J)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->this$0:Lcom/couchbase/lite/internal/core/C4Listener;

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->lambda$closePeer$0(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$0(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->this$0:Lcom/couchbase/lite/internal/core/C4Listener;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Listener;->access$000(Lcom/couchbase/lite/internal/core/C4Listener;)Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4Listener$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/internal/core/e;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/core/e;-><init>(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
