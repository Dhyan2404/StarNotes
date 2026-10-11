.class public Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
.super Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public preBind(JLjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->exists(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "attempt to use un-reserved key"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public preGetBinding(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized reserveKey()J
    .locals 3

    monitor-enter p0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/couchbase/lite/internal/utils/MathUtils;->RANDOM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->exists(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->set(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
