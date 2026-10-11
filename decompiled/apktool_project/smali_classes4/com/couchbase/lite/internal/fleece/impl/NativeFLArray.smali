.class public final Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/fleece/FLArray$NativeImpl;


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

.method private static native get(JJ)J
.end method

.method private static native getValue(J)J
.end method

.method private static native getValueAt(JI)J
.end method

.method private static native init(J)J
.end method

.method private static native next(J)Z
.end method


# virtual methods
.method public nCount(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->count(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->free(J)V

    return-void
.end method

.method public nGet(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->get(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetValue(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->getValue(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetValueAt(JI)J
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->getValueAt(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public nInit(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->init(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nNext(J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLArray;->next(J)Z

    move-result p0

    return p0
.end method
