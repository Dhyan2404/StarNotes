.class public final synthetic Lcom/couchbase/lite/internal/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/e;->a:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/e;->a:Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;->f(Lcom/couchbase/lite/internal/core/C4Listener$C4ListenerPeer;Ljava/lang/Long;)V

    return-void
.end method
