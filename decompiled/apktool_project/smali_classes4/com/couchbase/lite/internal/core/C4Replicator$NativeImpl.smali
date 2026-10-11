.class public interface abstract Lcom/couchbase/lite/internal/core/C4Replicator$NativeImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Replicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeImpl"
.end annotation


# virtual methods
.method public abstract nCreate(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZ[BJJ)J
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
.end method

.method public abstract nCreateLocal(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJZZZ[BJ)J
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
.end method

.method public abstract nCreateWithSocket(Ljava/lang/String;[Lcom/couchbase/lite/internal/ReplicationCollection;JJ[BJ)J
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
.end method

.method public abstract nFree(J)V
.end method

.method public abstract nGetPendingDocIds(JLjava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/fleece/FLSliceResult;
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
.end method

.method public abstract nGetStatus(J)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract nIsDocumentPending(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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
.end method

.method public abstract nSetHostReachable(JZ)V
.end method

.method public abstract nSetOptions(J[B)V
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract nSetProgressLevel(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public abstract nStart(JZ)V
.end method

.method public abstract nStop(J)V
.end method
