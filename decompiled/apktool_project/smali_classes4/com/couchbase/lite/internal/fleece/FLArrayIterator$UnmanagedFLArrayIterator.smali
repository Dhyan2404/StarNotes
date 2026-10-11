.class final Lcom/couchbase/lite/internal/fleece/FLArrayIterator$UnmanagedFLArrayIterator;
.super Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLArrayIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnmanagedFLArrayIterator"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/FLArrayIterator;-><init>(Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
