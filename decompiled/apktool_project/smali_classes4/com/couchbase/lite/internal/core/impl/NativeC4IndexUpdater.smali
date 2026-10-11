.class public Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4IndexUpdater$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native close(J)V
.end method

.method private static native count(J)J
.end method

.method private static native finish(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native setVectorAt(JJ[F)V
    .param p4    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native skipVectorAt(JJ)Z
.end method

.method private static native valueAt(JJ)J
.end method


# virtual methods
.method public nClose(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;->close(J)V

    return-void
.end method

.method public nFinish(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;->finish(J)V

    return-void
.end method

.method public nGetCount(J)J
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;->count(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nGetValueAt(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;->valueAt(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nSetVectorAt(JJ[F)V
    .locals 0
    .param p5    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;->setVectorAt(JJ[F)V

    return-void
.end method

.method public nSkipVectorAt(JJ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4IndexUpdater;->skipVectorAt(JJ)Z

    move-result p0

    return p0
.end method
