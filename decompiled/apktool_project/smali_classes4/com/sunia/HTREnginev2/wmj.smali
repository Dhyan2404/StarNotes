.class public final synthetic Lcom/sunia/HTREnginev2/wmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/MessageEndpointListener;

.field public final synthetic f:Lcom/couchbase/lite/internal/core/C4Replicator;

.field public final synthetic g:Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/MessageEndpointListener;Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wmj;->e:Lcom/couchbase/lite/MessageEndpointListener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wmj;->f:Lcom/couchbase/lite/internal/core/C4Replicator;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wmj;->g:Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wmj;->e:Lcom/couchbase/lite/MessageEndpointListener;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wmj;->f:Lcom/couchbase/lite/internal/core/C4Replicator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wmj;->g:Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/MessageEndpointListener;->a(Lcom/couchbase/lite/MessageEndpointListener;Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method
