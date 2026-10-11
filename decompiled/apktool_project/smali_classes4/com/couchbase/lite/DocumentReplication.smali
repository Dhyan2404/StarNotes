.class public final Lcom/couchbase/lite/DocumentReplication;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final documents:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/ReplicatedDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final pushing:Z

.field private final replicator:Lcom/couchbase/lite/Replicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Replicator;ZLjava/util/List;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Replicator;",
            "Z",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/ReplicatedDocument;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/DocumentReplication;->replicator:Lcom/couchbase/lite/Replicator;

    iput-boolean p2, p0, Lcom/couchbase/lite/DocumentReplication;->pushing:Z

    iput-object p3, p0, Lcom/couchbase/lite/DocumentReplication;->documents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDocuments()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/ReplicatedDocument;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/DocumentReplication;->documents:Ljava/util/List;

    return-object p0
.end method

.method public getReplicator()Lcom/couchbase/lite/Replicator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/DocumentReplication;->replicator:Lcom/couchbase/lite/Replicator;

    return-object p0
.end method

.method public isPush()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/DocumentReplication;->pushing:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentReplication{#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/DocumentReplication;->documents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/DocumentReplication;->replicator:Lcom/couchbase/lite/Replicator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
