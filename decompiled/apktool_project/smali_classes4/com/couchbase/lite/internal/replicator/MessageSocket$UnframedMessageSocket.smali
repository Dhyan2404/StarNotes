.class final Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;
.super Lcom/couchbase/lite/internal/replicator/MessageSocket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/replicator/MessageSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnframedMessageSocket"
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

.method public static synthetic H(Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;->lambda$coreRequestsClose$0(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method private closeConfirmed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "%s.coreRequestsClose-confirmed: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method private synthetic lambda$coreRequestsClose$0(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;->closeConfirmed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "%s.close"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/16 v1, 0x3e9

    const-string v2, "Closed by client"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->requestCoreClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public coreClosed()V
    .locals 2

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "%s.coreClosed: ignoring unexpected call"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public coreRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 5
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "%s.coreRequestsClose: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toRemote:Lcom/couchbase/lite/MessageEndpointConnection;

    iget v1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v4, v1, v2, v3}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(IILjava/lang/String;Ljava/lang/Exception;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v3

    :goto_0
    new-instance v1, Lcom/couchbase/lite/internal/replicator/a;

    invoke-direct {v1, p0, p1}, Lcom/couchbase/lite/internal/replicator/a;-><init>(Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    invoke-interface {v0, v3, v1}, Lcom/couchbase/lite/MessageEndpointConnection;->close(Ljava/lang/Exception;Lcom/couchbase/lite/MessagingCloseCompletion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->access$100()Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    const-string v1, "Close failed!"

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->connectionFailed(Ljava/lang/Exception;)V

    :goto_1
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

    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->getCodeForError(Lcom/couchbase/lite/MessagingError;)I

    move-result p1

    const/4 p0, 0x6

    :goto_1
    new-instance v1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-direct {v1, p0, p1, v0}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnframedMessageSocket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
