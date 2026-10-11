.class final Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;
.super Lcom/couchbase/lite/internal/fleece/FLEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnmanagedFLEncoder"
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

.method public static synthetic i0(Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;->lambda$close$0(Ljava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$close$0(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->arguments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;->nReset(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Lcom/couchbase/lite/internal/fleece/c;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/fleece/c;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$UnmanagedFLEncoder;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
