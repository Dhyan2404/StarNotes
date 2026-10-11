.class final Lcom/couchbase/lite/internal/replicator/MessageSocket$FramedMessageSocket;
.super Lcom/couchbase/lite/internal/replicator/MessageSocket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/replicator/MessageSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FramedMessageSocket"
.end annotation


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;-><init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/replicator/MessageSocket$1;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "LOOKIE HERE"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.close"

    invoke-static {v0, v3, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed by client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v3, 0x1

    const/16 v4, 0x3e9

    invoke-direct {v2, v3, v4, v1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Ljava/lang/Exception;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public coreClosed()V
    .locals 4

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "%s.coreClosed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Ljava/lang/Exception;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public coreRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object p1

    const-string v0, "%s.coreRequestsClose: ignoring unexpected call"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getStatusForMessagingError(Lcom/couchbase/lite/MessagingError;)Lcom/couchbase/lite/internal/sockets/CloseStatus;
    .locals 2
    .param p1    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/MessagingError;->getError()Ljava/lang/Exception;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const/16 p0, 0x3e8

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->getCodeForError(Lcom/couchbase/lite/MessagingError;)I

    move-result p0

    :goto_1
    new-instance p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v1, 0x6

    invoke-direct {p1, v1, p0, v0}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FramedMessageSocket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
