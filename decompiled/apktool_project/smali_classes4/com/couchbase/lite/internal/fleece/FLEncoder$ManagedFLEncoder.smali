.class Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;
.super Lcom/couchbase/lite/internal/fleece/FLEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagedFLEncoder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;JLcom/couchbase/lite/internal/fleece/FLEncoder$1;)V

    return-void
.end method

.method public static synthetic i0(Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;->lambda$closePeer$0(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$closePeer$0(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/internal/fleece/b;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/fleece/b;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

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

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
