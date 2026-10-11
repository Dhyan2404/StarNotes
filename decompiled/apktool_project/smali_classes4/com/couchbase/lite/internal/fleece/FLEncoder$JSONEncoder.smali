.class public final Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;
.super Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JSONEncoder"
.end annotation


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;JLcom/couchbase/lite/internal/fleece/FLEncoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/FLEncoder$JSONEncoder;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;->close()V

    return-void
.end method

.method public bridge synthetic closePeer(Lcom/couchbase/lite/LogDomain;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder$ManagedFLEncoder;->closePeer(Lcom/couchbase/lite/LogDomain;)V

    return-void
.end method

.method public finish()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "finish not supported for JSONEncoders"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finish2()Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "finish2 not supported for JSONEncoders"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public finishJSON()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLEncoder;->impl:Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/d8g;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/d8g;-><init>(Lcom/couchbase/lite/internal/fleece/FLEncoder$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
