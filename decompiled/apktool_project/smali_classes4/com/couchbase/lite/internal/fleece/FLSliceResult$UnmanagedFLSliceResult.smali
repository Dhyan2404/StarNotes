.class final Lcom/couchbase/lite/internal/fleece/FLSliceResult$UnmanagedFLSliceResult;
.super Lcom/couchbase/lite/internal/fleece/FLSliceResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/fleece/FLSliceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnmanagedFLSliceResult"
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
.method public release(Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
