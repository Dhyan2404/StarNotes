.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4QueryEnumerator$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native free(J)V
.end method

.method private static native getColumns(J)J
.end method

.method private static native getMissingColumns(J)J
.end method

.method private static native next(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method


# virtual methods
.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;->free(J)V

    return-void
.end method

.method public nGetColumns(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;->getColumns(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetMissingColumns(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;->getMissingColumns(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nNext(J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4QueryEnumerator;->next(J)Z

    move-result p0

    return p0
.end method
