.class public final synthetic Lcom/couchbase/lite/internal/core/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/g;->e:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/g;->e:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->b(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

    return-void
.end method
