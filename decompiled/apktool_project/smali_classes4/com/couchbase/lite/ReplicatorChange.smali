.class public final Lcom/couchbase/lite/ReplicatorChange;
.super Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;
.source "SourceFile"


# instance fields
.field private final replicator:Lcom/couchbase/lite/Replicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Replicator;Lcom/couchbase/lite/ReplicatorStatus;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;-><init>(Lcom/couchbase/lite/ReplicatorStatus;)V

    iput-object p1, p0, Lcom/couchbase/lite/ReplicatorChange;->replicator:Lcom/couchbase/lite/Replicator;

    return-void
.end method


# virtual methods
.method public getReplicator()Lcom/couchbase/lite/Replicator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/ReplicatorChange;->replicator:Lcom/couchbase/lite/Replicator;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplicatorChange{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/ReplicatorChange;->replicator:Lcom/couchbase/lite/Replicator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
