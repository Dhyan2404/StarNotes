.class final Lcom/couchbase/lite/internal/core/C4Replicator$C4MessageEndpointReplicator;
.super Lcom/couchbase/lite/internal/core/C4Replicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Replicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C4MessageEndpointReplicator"
.end annotation


# instance fields
.field private final c4Socket:Lcom/couchbase/lite/internal/core/C4Socket;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLcom/couchbase/lite/internal/core/C4Socket;Ljava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V
    .locals 8
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/internal/core/C4Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;",
            "JJ",
            "Lcom/couchbase/lite/internal/core/C4Socket;",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/ReplicationCollection;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Replicator;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLjava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V

    move-object v1, p6

    iput-object v1, v0, Lcom/couchbase/lite/internal/core/C4Replicator$C4MessageEndpointReplicator;->c4Socket:Lcom/couchbase/lite/internal/core/C4Socket;

    return-void
.end method


# virtual methods
.method public documentsEnded(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/core/C4DocumentEnded;",
            ">;Z)V"
        }
    .end annotation

    sget-object p1, Lcom/couchbase/lite/internal/core/C4Replicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Replicator;->getReplId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s: Unsupported call to doc ended for MessageEndpoint"

    invoke-static {p1, p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public releaseResources()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4MessageEndpointRepl{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Replicator;->getReplId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator;->statusListener:Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
