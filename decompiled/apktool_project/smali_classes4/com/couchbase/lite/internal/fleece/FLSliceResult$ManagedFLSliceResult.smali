.class final Lcom/couchbase/lite/internal/fleece/FLSliceResult$ManagedFLSliceResult;
.super Lcom/couchbase/lite/internal/fleece/FLSliceResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLSliceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedFLSliceResult"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJ)V
    .locals 7
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;-><init>(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;JJLcom/couchbase/lite/internal/fleece/FLSliceResult$1;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->base:J

    iget-wide v2, p0, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->size:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;->nRelease(JJ)V

    return-void
.end method
