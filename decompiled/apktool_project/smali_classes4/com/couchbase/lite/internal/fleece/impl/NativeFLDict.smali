.class public final Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/FLDict$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native count(J)J
.end method

.method private static native free(J)V
.end method

.method private static native get(J[B)J
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native getCount(J)J
.end method

.method private static native getKey(J)Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native getValue(J)J
.end method

.method private static native init(J)J
.end method

.method private static native next(J)Z
.end method


# virtual methods
.method public nCount(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->count(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->free(J)V

    return-void
.end method

.method public nGet(J[B)J
    .locals 0
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->get(J[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetCount(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->getCount(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetKey(J)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->getKey(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nGetValue(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->getValue(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nInit(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->init(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nNext(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLDict;->next(J)Z

    move-result p0

    return p0
.end method
