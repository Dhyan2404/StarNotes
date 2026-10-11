.class public interface abstract Lcom/couchbase/lite/internal/sockets/SocketToCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract ackOpenToCore(I[B)V
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract ackWriteToCore(J)V
.end method

.method public abstract closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getLock()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract init(Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketFromCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestCoreClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract writeToCore([B)V
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
