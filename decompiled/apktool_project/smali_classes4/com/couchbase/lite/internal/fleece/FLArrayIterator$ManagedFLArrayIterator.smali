.class final Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;
.super Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedFLArrayIterator"
.end annotation


# instance fields
.field private final array:Lcom/couchbase/lite/internal/fleece/FLArray;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;Lcom/couchbase/lite/internal/fleece/FLArray;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/fleece/FLArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/j7g;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/j7g;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;)V

    invoke-virtual {p2, v0}, Lcom/couchbase/lite/internal/fleece/FLArray;->withContent(Lcom/couchbase/lite/internal/utils/Fn$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;Ljava/lang/Long;)V

    iput-object p2, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;->array:Lcom/couchbase/lite/internal/fleece/FLArray;

    return-void
.end method

.method private closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/internal/fleece/a;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/fleece/a;-><init>(Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method private synthetic lambda$closePeer$0(Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;->impl:Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;->nFree(J)V

    :cond_0
    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;->lambda$closePeer$0(Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;->closePeer(Lcom/couchbase/lite/LogDomain;)V

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

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator$ManagedFLArrayIterator;->closePeer(Lcom/couchbase/lite/LogDomain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
