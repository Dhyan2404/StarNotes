.class public final Lcom/couchbase/lite/internal/core/C4BlobWriteStream;
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

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/jw;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->lambda$closePeer$2(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;[BILjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->lambda$write$0([BILjava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$2(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nCloseWriteStream(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$computeBlobKey$1(Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nComputeBlobKey(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobKey;->create(J)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$write$0([BILjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;->nWrite(J[BI)V

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->lambda$computeBlobKey$1(Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4BlobKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public computeBlobKey()Lcom/couchbase/lite/internal/core/C4BlobKey;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/mw;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/mw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4BlobKey;

    return-object p0
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

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public install()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->impl:Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/lw;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/lw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobStore$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const-string v0, "bytes"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4BlobWriteStream;->write([BI)V

    return-void
.end method

.method public write([BI)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const-string v0, "bytes"

    .line 3
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gtz p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/kw;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/kw;-><init>(Lcom/couchbase/lite/internal/core/C4BlobWriteStream;[BI)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
