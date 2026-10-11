.class public final synthetic Lcom/sunia/HTREnginev2/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/AbstractReplicator;

.field public final synthetic f:Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f4;->e:Lcom/couchbase/lite/AbstractReplicator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/f4;->f:Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f4;->e:Lcom/couchbase/lite/AbstractReplicator;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f4;->f:Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    invoke-static {v0, p0}, Lcom/couchbase/lite/AbstractReplicator;->g0(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method
