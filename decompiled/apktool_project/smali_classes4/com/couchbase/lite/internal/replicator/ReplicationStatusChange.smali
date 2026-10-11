.class public Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final status:Lcom/couchbase/lite/ReplicatorStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorStatus;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->status:Lcom/couchbase/lite/ReplicatorStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/couchbase/lite/ReplicatorStatus;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->status:Lcom/couchbase/lite/ReplicatorStatus;

    return-object p0
.end method
