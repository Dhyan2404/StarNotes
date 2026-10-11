.class final Lcom/couchbase/lite/DocumentReplicationListenerToken;
.super Lcom/couchbase/lite/ListenerToken;
.source "SourceFile"


# instance fields
.field private final listener:Lcom/couchbase/lite/DocumentReplicationListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentReplicationListener;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DocumentReplicationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/couchbase/lite/DocumentReplicationListener;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/ListenerToken;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/couchbase/lite/ListenerToken;-><init>(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/DocumentReplicationListener;

    iput-object p1, p0, Lcom/couchbase/lite/DocumentReplicationListenerToken;->listener:Lcom/couchbase/lite/DocumentReplicationListener;

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/DocumentReplicationListenerToken;Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/DocumentReplicationListenerToken;->lambda$postChange$0(Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method

.method private synthetic lambda$postChange$0(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/DocumentReplicationListenerToken;->listener:Lcom/couchbase/lite/DocumentReplicationListener;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/DocumentReplicationListener;->replication(Lcom/couchbase/lite/DocumentReplication;)V

    return-void
.end method


# virtual methods
.method public postChange(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/DocumentReplication;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/u;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/u;-><init>(Lcom/couchbase/lite/DocumentReplicationListenerToken;Lcom/couchbase/lite/DocumentReplication;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/ListenerToken;->send(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentReplicationListenerToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/DocumentReplicationListenerToken;->listener:Lcom/couchbase/lite/DocumentReplicationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/ListenerToken;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
