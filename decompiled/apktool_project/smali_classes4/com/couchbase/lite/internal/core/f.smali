.class public final synthetic Lcom/couchbase/lite/internal/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

.field public final synthetic f:Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/f;->e:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/f;->f:Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/f;->e:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/f;->f:Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->a(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    return-void
.end method
