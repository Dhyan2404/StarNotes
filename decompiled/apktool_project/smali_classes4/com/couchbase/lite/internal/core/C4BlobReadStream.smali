.class public final Lcom/couchbase/lite/internal/core/C4BlobReadStream;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/aw;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/aw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobReadStream;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4BlobReadStream;[BIJLjava/lang/Long;)Ljava/lang/Integer;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->lambda$read$0([BIJLjava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4BlobReadStream;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->lambda$seek$1(JLjava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$2(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nCloseReadStream(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$read$0([BIJLjava/lang/Long;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nRead(J[BIJ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$seek$1(JLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nSeek(JJ)V

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4BlobReadStream;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->lambda$closePeer$2(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getLength()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4BlobReadStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/yv;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/yv;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BIJ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v7, Lcom/sunia/HTREnginev2/bw;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/bw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobReadStream;[BIJ)V

    invoke-virtual {p0, v0, v7}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/zv;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/zv;-><init>(Lcom/couchbase/lite/internal/core/C4BlobReadStream;J)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
