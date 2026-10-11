.class public abstract Lcom/couchbase/lite/internal/replicator/MessageSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ReplicatorConnection;
.implements Lcom/couchbase/lite/internal/sockets/SocketFromCore;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/replicator/MessageSocket$FramedMessageSocket;,
        Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;
    }
.end annotation


# static fields
.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field protected final state:Lcom/couchbase/lite/internal/utils/StateMachine;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getPeerLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/StateMachine<",
            "Lcom/couchbase/lite/internal/sockets/SocketState;",
            ">;"
        }
    .end annotation
.end field

.field protected final toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final toRemote:Lcom/couchbase/lite/MessageEndpointConnection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/couchbase/lite/internal/sockets/SocketState;->getSocketStateMachine()Lcom/couchbase/lite/internal/utils/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    .line 4
    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    .line 5
    iput-object p2, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toRemote:Lcom/couchbase/lite/MessageEndpointConnection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/replicator/MessageSocket$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;-><init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;)V

    return-void
.end method

.method public static synthetic access$100()Lcom/couchbase/lite/LogDomain;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-object v0
.end method

.method public static create(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/replicator/MessageSocket;
    .locals 2
    .param p0    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket$1;->$SwitchMap$com$couchbase$lite$internal$sockets$MessageFraming:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket$UnframedMessageSocket;-><init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognised protocol: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/16 v0, 0x3ef

    invoke-direct {p0, p2, v0, p1}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lcom/couchbase/lite/internal/replicator/MessageSocket$FramedMessageSocket;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket$FramedMessageSocket;-><init>(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;)V

    :goto_0
    sget-object p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p1, "%s.created($d)"

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/replicator/MessageSocket;IZLcom/couchbase/lite/MessagingError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->lambda$coreWrites$0(IZLcom/couchbase/lite/MessagingError;)V

    return-void
.end method

.method private getLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->getLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/replicator/MessageSocket;ZLcom/couchbase/lite/MessagingError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->openConfirmed(ZLcom/couchbase/lite/MessagingError;)V

    return-void
.end method

.method private synthetic lambda$coreWrites$0(IZLcom/couchbase/lite/MessagingError;)V
    .locals 0

    invoke-direct {p0, p2, p3, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->writeConfirmed(ZLcom/couchbase/lite/MessagingError;I)V

    return-void
.end method

.method private static synthetic lambda$shutdownConnection$1()V
    .locals 0

    return-void
.end method

.method private openConfirmed(ZLcom/couchbase/lite/MessagingError;)V
    .locals 3
    .param p2    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p0, v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.RemoteOpenConfirmed: %s, %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Lcom/couchbase/lite/MessagingError;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    const/16 p1, 0xc8

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->ackOpenToCore(I[B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic w()V
    .locals 0

    invoke-static {}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->lambda$shutdownConnection$1()V

    return-void
.end method

.method private writeConfirmed(ZLcom/couchbase/lite/MessagingError;I)V
    .locals 3
    .param p2    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p0, v1, v2, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.RemoteWriteConfirmed(%d): %s, %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Lcom/couchbase/lite/MessagingError;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    int-to-long p1, p3

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->ackWriteToCore(J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final varargs assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z
    .locals 1
    .param p1    # [Lcom/couchbase/lite/internal/sockets/SocketState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/utils/StateMachine;->assertState([Ljava/lang/Enum;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/utils/StateMachine;->setState(Ljava/lang/Enum;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close(Lcom/couchbase/lite/MessagingError;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.ReplicatorConnection.close: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Lcom/couchbase/lite/MessagingError;)V

    return-void
.end method

.method public final connectionFailed(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Ljava/lang/Exception;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public coreAcksWrite(J)V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s.coreAcksWrite(%d)"

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public coreRequestsOpen()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.coreRequestedOpen"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toRemote:Lcom/couchbase/lite/MessageEndpointConnection;

    new-instance v1, Lcom/sunia/HTREnginev2/cnj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cnj;-><init>(Lcom/couchbase/lite/internal/replicator/MessageSocket;)V

    invoke-interface {v0, p0, v1}, Lcom/couchbase/lite/MessageEndpointConnection;->open(Lcom/couchbase/lite/ReplicatorConnection;Lcom/couchbase/lite/MessagingCompletion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Open failed!"

    invoke-static {v1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->connectionFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public coreWrites([B)V
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    sget-object v1, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.coreWrites(%d)"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v2, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v1, v2}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toRemote:Lcom/couchbase/lite/MessageEndpointConnection;

    invoke-static {p1}, Lcom/couchbase/lite/Message;->fromData([B)Lcom/couchbase/lite/Message;

    move-result-object p1

    new-instance v2, Lcom/sunia/HTREnginev2/enj;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/enj;-><init>(Lcom/couchbase/lite/internal/replicator/MessageSocket;I)V

    invoke-interface {v1, p1, v2}, Lcom/couchbase/lite/MessageEndpointConnection;->send(Lcom/couchbase/lite/Message;Lcom/couchbase/lite/MessagingCompletion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Write failed!"

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->connectionFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getCodeForError(Lcom/couchbase/lite/MessagingError;)I
    .locals 0
    .param p1    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/couchbase/lite/MessagingError;->isRecoverable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xfa1

    goto :goto_0

    :cond_0
    const/16 p0, 0xfa2

    :goto_0
    return p0
.end method

.method public getSocketState()Lcom/couchbase/lite/internal/sockets/SocketState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/utils/StateMachine;->getCurrentState()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketState;

    return-object p0
.end method

.method public abstract getStatusForMessagingError(Lcom/couchbase/lite/MessagingError;)Lcom/couchbase/lite/internal/sockets/CloseStatus;
    .param p1    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public receive(Lcom/couchbase/lite/Message;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.receive: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    sget-object v1, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v1}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/utils/StateMachine;->assertState([Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-virtual {p1}, Lcom/couchbase/lite/Message;->toData()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->writeToCore([B)V

    return-void
.end method

.method public final shutdownConnection(Lcom/couchbase/lite/MessagingError;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/MessagingError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/MessagingError;->getError()Ljava/lang/Exception;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->getStatusForMessagingError(Lcom/couchbase/lite/MessagingError;)Lcom/couchbase/lite/internal/sockets/CloseStatus;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->shutdownConnection(Ljava/lang/Exception;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public final shutdownConnection(Ljava/lang/Exception;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v0}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toRemote:Lcom/couchbase/lite/MessageEndpointConnection;

    new-instance v1, Lcom/sunia/HTREnginev2/dnj;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/dnj;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/couchbase/lite/MessageEndpointConnection;->close(Ljava/lang/Exception;Lcom/couchbase/lite/MessagingCloseCompletion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0, p2}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    sget-object v0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Shutdown failed!"

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :goto_2
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0, p2}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    throw p1

    :cond_1
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " <=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/MessageSocket;->toRemote:Lcom/couchbase/lite/MessageEndpointConnection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
