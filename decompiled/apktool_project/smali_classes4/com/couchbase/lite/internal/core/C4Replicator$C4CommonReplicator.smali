.class final Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;
.super Lcom/couchbase/lite/internal/core/C4Replicator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Replicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "C4CommonReplicator"
.end annotation


# instance fields
.field private final docEndsListener:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final replicator:Lcom/couchbase/lite/AbstractReplicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final socketFactory:Lcom/couchbase/lite/internal/SocketFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final socketFactoryToken:J


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLjava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/couchbase/lite/internal/SocketFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;",
            "JJ",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/ReplicationCollection;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            "Lcom/couchbase/lite/internal/SocketFactory;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/couchbase/lite/internal/core/C4Replicator;-><init>(Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;JJLjava/util/List;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V

    iput-object p8, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->docEndsListener:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

    const-string p1, "replicator"

    invoke-static {p9, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/AbstractReplicator;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->replicator:Lcom/couchbase/lite/AbstractReplicator;

    iput-object p10, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->socketFactory:Lcom/couchbase/lite/internal/SocketFactory;

    iput-wide p11, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->socketFactoryToken:J

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

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->docEndsListener:Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;->documentsEnded(Ljava/util/List;Z)V

    return-void
.end method

.method public releaseResources()V
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->socketFactoryToken:J

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/BaseSocketFactory;->unbindSocketFactory(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C4CommonRepl{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->replicator:Lcom/couchbase/lite/AbstractReplicator;

    invoke-static {v2}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Replicator$C4CommonReplicator;->socketFactory:Lcom/couchbase/lite/internal/SocketFactory;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
