.class public final Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native create(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZ[BJJ)J
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/couchbase/lite/internal/ReplicationCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createLocal(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJZZZ[BJ)J
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/couchbase/lite/internal/ReplicationCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native createWithSocket(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJ[BJ)J
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/couchbase/lite/internal/ReplicationCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native free(J)V
.end method

.method private static native getPendingDocIds(JLjava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native getStatus(J)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method private static native isDocumentPending(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native setHostReachable(JZ)V
.end method

.method private static native setOptions(J[B)V
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native setProgressLevel(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method private static native start(JZ)V
.end method

.method private static native stop(J)V
.end method


# virtual methods
.method public nCreate(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZ[BJJ)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/couchbase/lite/internal/ReplicationCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p18}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->create(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZ[BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public nCreateLocal(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJZZZ[BJ)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/couchbase/lite/internal/ReplicationCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p12}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->createLocal(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJZZZ[BJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nCreateWithSocket(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJ[BJ)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/couchbase/lite/internal/ReplicationCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static/range {p1 .. p9}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->createWithSocket(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJ[BJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public nFree(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->free(J)V

    return-void
.end method

.method public nGetPendingDocIds(JLjava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->getPendingDocIds(JLjava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0

    return-object p0
.end method

.method public nGetStatus(J)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->getStatus(J)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    move-result-object p0

    return-object p0
.end method

.method public nIsDocumentPending(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->isDocumentPending(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public nSetHostReachable(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->setHostReachable(JZ)V

    return-void
.end method

.method public nSetOptions(J[B)V
    .locals 0
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->setOptions(J[B)V

    return-void
.end method

.method public nSetProgressLevel(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->setProgressLevel(JI)V

    return-void
.end method

.method public nStart(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->start(JZ)V

    return-void
.end method

.method public nStop(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/impl/NativeC4Replicator;->stop(J)V

    return-void
.end method
