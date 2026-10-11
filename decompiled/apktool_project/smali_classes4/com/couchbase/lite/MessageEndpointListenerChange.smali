.class public Lcom/couchbase/lite/MessageEndpointListenerChange;
.super Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;
.source "SourceFile"


# instance fields
.field private final connection:Lcom/couchbase/lite/MessageEndpointConnection;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/ReplicatorStatus;

    invoke-direct {v0, p2}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;-><init>(Lcom/couchbase/lite/ReplicatorStatus;)V

    iput-object p1, p0, Lcom/couchbase/lite/MessageEndpointListenerChange;->connection:Lcom/couchbase/lite/MessageEndpointConnection;

    return-void
.end method


# virtual methods
.method public getConnection()Lcom/couchbase/lite/MessageEndpointConnection;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListenerChange;->connection:Lcom/couchbase/lite/MessageEndpointConnection;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEndpointListenerChange{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/MessageEndpointListenerChange;->connection:Lcom/couchbase/lite/MessageEndpointConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
