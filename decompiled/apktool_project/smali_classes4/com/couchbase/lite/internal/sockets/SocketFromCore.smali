.class public interface abstract Lcom/couchbase/lite/internal/sockets/SocketFromCore;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract coreAcksWrite(J)V
.end method

.method public abstract coreClosed()V
.end method

.method public abstract coreRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract coreRequestsOpen()V
.end method

.method public abstract coreWrites([B)V
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
