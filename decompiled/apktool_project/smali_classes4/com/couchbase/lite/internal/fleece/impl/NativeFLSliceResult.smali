.class public final Lcom/couchbase/lite/internal/fleece/impl/NativeFLSliceResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/FLSliceResult$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getBuf(JJ)[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native release(JJ)V
.end method


# virtual methods
.method public nGetBuf(JJ)[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLSliceResult;->getBuf(JJ)[B

    move-result-object p0

    return-object p0
.end method

.method public nRelease(JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLSliceResult;->release(JJ)V

    return-void
.end method
