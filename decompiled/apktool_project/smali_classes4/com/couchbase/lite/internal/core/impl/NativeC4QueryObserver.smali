.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4QueryObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4QueryObserver$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native create(JJ)J
.end method

.method private static native enable(J)V
.end method

.method private static native free(J)V
.end method


# virtual methods
.method public nCreate(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryObserver;->create(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nEnable(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryObserver;->enable(J)V

    return-void
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryObserver;->free(J)V

    return-void
.end method
