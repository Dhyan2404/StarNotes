.class public final synthetic Lcom/sunia/HTREnginev2/vmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/MessageEndpointListener;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/MessageEndpointListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vmj;->a:Lcom/couchbase/lite/MessageEndpointListener;

    return-void
.end method


# virtual methods
.method public final statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vmj;->a:Lcom/couchbase/lite/MessageEndpointListener;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListener;->dispatchStatusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method
