.class public final Lcom/couchbase/lite/internal/core/C4Socket;
.super Lcom/couchbase/lite/internal/core/C4NativePeer;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/sockets/SocketToCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;,
        Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;
    }
.end annotation


# static fields
.field static final BOUND_SOCKETS:Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding<",
            "Lcom/couchbase/lite/internal/core/C4Socket;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final fromCore:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromCore;",
            ">;"
        }
    .end annotation
.end field

.field private final impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final queue:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Socket;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->BOUND_SOCKETS:Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;J)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->queue:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->fromCore:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-interface {p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nRetain(J)V

    return-void
.end method

.method public static synthetic H(ILjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$requestClose$3(ILjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4Socket;IILjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$release$10(IILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$continueWith$9(Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method

.method public static close(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "^C4Socket.close@%x"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/couchbase/lite/internal/core/m;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/m;-><init>()V

    const-string v1, "close"

    invoke-static {p0, p1, v1, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->withSocket(JLjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method

.method public static completedReceive(JJ)V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "^C4Socket.completedReceive@%x(%d)"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/couchbase/lite/internal/core/j;

    invoke-direct {v0, p2, p3}, Lcom/couchbase/lite/internal/core/j;-><init>(J)V

    const-string p2, "completedReceive"

    invoke-static {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->withSocket(JLjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method

.method private continueWith(Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->queue:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/couchbase/lite/internal/core/h;

    invoke-direct {v1, p0, p1}, Lcom/couchbase/lite/internal/core/h;-><init>(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static createPassiveSocket(ILcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/core/C4Socket;
    .locals 9
    .param p1    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v8, Lcom/couchbase/lite/internal/core/C4Socket;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    const-wide/16 v1, 0x0

    const-string v3, "x-msg-conn"

    const-string v4, ""

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/couchbase/lite/internal/sockets/MessageFraming;->getC4Framing(Lcom/couchbase/lite/internal/sockets/MessageFraming;)I

    move-result v7

    move-object v0, v8

    invoke-interface/range {v0 .. v7}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nFromNative(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)J

    move-result-wide p0

    invoke-static {v8, p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->createSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;J)Lcom/couchbase/lite/internal/core/C4Socket;

    move-result-object p0

    return-object p0
.end method

.method public static createSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;J)Lcom/couchbase/lite/internal/core/C4Socket;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Socket;

    invoke-direct {v0, p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;-><init>(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;J)V

    sget-object p0, Lcom/couchbase/lite/internal/core/C4Socket;->BOUND_SOCKETS:Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;

    invoke-virtual {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic e0(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/CloseStatus;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$requestCoreClose$8(Lcom/couchbase/lite/internal/sockets/CloseStatus;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$close$4(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method

.method public static synthetic f0(JLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$completedReceive$2(JLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method

.method public static synthetic g0(Lcom/couchbase/lite/internal/core/C4Socket;[BLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$writeToCore$7([BLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic h0(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$open$0(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method

.method public static synthetic i0(Lcom/couchbase/lite/internal/core/C4Socket;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$ackWriteToCore$6(JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/core/C4Socket;I[BLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$ackOpenToCore$5(I[BLjava/lang/Long;)V

    return-void
.end method

.method private synthetic lambda$ackOpenToCore$5(I[BLjava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nGotHTTPResponse(JI[B)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nOpened(J)V

    return-void
.end method

.method private synthetic lambda$ackWriteToCore$6(JLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nCompletedWrite(JJ)V

    return-void
.end method

.method private static synthetic lambda$close$4(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-interface {p1}, Lcom/couchbase/lite/internal/sockets/SocketFromCore;->coreClosed()V

    return-void
.end method

.method private static synthetic lambda$completedReceive$2(JLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-interface {p3, p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketFromCore;->coreAcksWrite(J)V

    return-void
.end method

.method private synthetic lambda$continueWith$9(Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->fromCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/sockets/SocketFromCore;

    invoke-interface {p1, p0, v0}, Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;->accept(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method

.method private static synthetic lambda$open$0(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lcom/couchbase/lite/internal/sockets/SocketFromCore;->coreRequestsOpen()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->openFailed(Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$release$10(IILjava/lang/String;Ljava/lang/Long;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->BOUND_SOCKETS:Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->unbind(J)V

    iget-object v3, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lcom/couchbase/lite/internal/core/C4Socket;->releaseSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;JIILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$requestClose$3(ILjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 1

    new-instance p2, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p0, p1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-interface {p3, p2}, Lcom/couchbase/lite/internal/sockets/SocketFromCore;->coreRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method private synthetic lambda$requestCoreClose$8(Lcom/couchbase/lite/internal/sockets/CloseStatus;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget p2, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    iget-object p1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p2, p1}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nCloseRequested(JILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$write$1([BLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-interface {p2, p0}, Lcom/couchbase/lite/internal/sockets/SocketFromCore;->coreWrites([B)V

    return-void
.end method

.method private synthetic lambda$writeToCore$7([BLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->impl:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nReceived(J[B)V

    return-void
.end method

.method public static open(JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)V
    .locals 12
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
    .param p8    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-wide v10, p0

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->BOUND_SOCKETS:Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Socket;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "^C4Socket.open@%x: %s@%x"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;

    move-wide v1, p0

    move-wide v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/couchbase/lite/internal/core/C4Socket;->openSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/couchbase/lite/internal/core/k;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/k;-><init>()V

    const-string v1, "open"

    invoke-static {p0, p1, v1, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->withSocket(JLjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method

.method private openFailed(Ljava/lang/RuntimeException;)V
    .locals 3
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Failed opening connection"

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;->getDomain()I

    move-result v1

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;->getCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    const/16 v0, 0xd

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->release(Lcom/couchbase/lite/LogDomain;IILjava/lang/String;)V

    return-void
.end method

.method public static openSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Z
    .locals 10
    .param p0    # Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
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
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p3, p4}, Lcom/couchbase/lite/internal/BaseSocketFactory;->getBoundSocketFactory(J)Lcom/couchbase/lite/internal/BaseSocketFactory;

    move-result-object v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C4Socket.open: no such socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p3

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v8

    :cond_0
    if-nez p5, :cond_1

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "C4Socket.open: scheme is null"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v8

    :cond_1
    if-nez p6, :cond_2

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "C4Socket.open: hostname is null"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v8

    :cond_2
    if-nez p8, :cond_3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "C4Socket.open: path is null"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v8

    :cond_3
    if-nez p9, :cond_4

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "C4Socket.open: options are null"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return v8

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->createSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;J)Lcom/couchbase/lite/internal/core/C4Socket;

    move-result-object v9

    move-object v2, v9

    move-object v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    :try_start_0
    invoke-interface/range {v1 .. v7}, Lcom/couchbase/lite/internal/BaseSocketFactory;->createSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/couchbase/lite/internal/sockets/SocketFromCore;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->init(Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-direct {v9, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->openFailed(Ljava/lang/RuntimeException;)V

    return v8
.end method

.method private release(Lcom/couchbase/lite/LogDomain;IILjava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/l00;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sunia/HTREnginev2/l00;-><init>(Lcom/couchbase/lite/internal/core/C4Socket;IILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method private static releaseSocket(Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;JIILjava/lang/String;)V
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p5}, Lcom/couchbase/lite/internal/core/C4Socket$NativeImpl;->nClosed(JIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static requestClose(JILjava/lang/String;)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "^C4Socket.requestClose@%x(%d): \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/couchbase/lite/internal/core/l;

    invoke-direct {v0, p2, p3}, Lcom/couchbase/lite/internal/core/l;-><init>(ILjava/lang/String;)V

    const-string p2, "requestClose"

    invoke-static {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->withSocket(JLjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method

.method public static synthetic w([BLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Socket;->lambda$write$1([BLcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V

    return-void
.end method

.method private static withSocket(JLjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->BOUND_SOCKETS:Lcom/couchbase/lite/internal/core/C4Socket$NativeRefPeerBinding;

    invoke-virtual {v0, p0, p1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Socket;

    if-eqz v0, :cond_0

    invoke-direct {v0, p3}, Lcom/couchbase/lite/internal/core/C4Socket;->continueWith(Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void

    :cond_0
    sget-object p3, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "C4Socket.%s@%x: No socket for peer"

    invoke-static {p3, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static write(J[B)V
    .locals 4
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_PARAMETER_MUST_BE_NONNULL_BUT_MARKED_AS_NULLABLE"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    sget-object v1, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "^C4Socket.write@%x(%d)"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v0, :cond_1

    const-string p0, "C4Socket.write: empty data"

    invoke-static {v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/couchbase/lite/internal/core/i;

    invoke-direct {v0, p2}, Lcom/couchbase/lite/internal/core/i;-><init>([B)V

    const-string p2, "write"

    invoke-static {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->withSocket(JLjava/lang/String;Lcom/couchbase/lite/internal/core/C4Socket$SocketTask;)V

    return-void
.end method


# virtual methods
.method public ackOpenToCore(I[B)V
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.ackOpenToCore"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/k00;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/k00;-><init>(Lcom/couchbase/lite/internal/core/C4Socket;I[B)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public ackWriteToCore(J)V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.ackWriteToCore(%d)"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/m00;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/m00;-><init>(Lcom/couchbase/lite/internal/core/C4Socket;J)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public close()V
    .locals 4

    const/16 v0, 0x10

    const-string v1, "Closed by client"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/couchbase/lite/internal/core/C4Socket;->release(Lcom/couchbase/lite/LogDomain;IILjava/lang/String;)V

    return-void
.end method

.method public closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    iget v1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    filled-new-array {p0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.closeCore(%d, %d): \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->domain:I

    iget v1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    iget-object p1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->release(Lcom/couchbase/lite/LogDomain;IILjava/lang/String;)V

    return-void
.end method

.method public finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Finalized"

    const/4 v2, 0x5

    const/16 v3, 0x11

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/couchbase/lite/internal/core/C4Socket;->release(Lcom/couchbase/lite/LogDomain;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFromCore()Lcom/couchbase/lite/internal/sockets/SocketFromCore;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->fromCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketFromCore;

    return-object p0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPeerHandle()J
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeer()J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketFromCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.init: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "fromCore"

    invoke-static {p1, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Socket;->fromCore:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Socket;->fromCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Attempt to re-initialize C4Socket"

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestCoreClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    iget v1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    filled-new-array {p0, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.requestCoreClose(%d): \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/n00;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/n00;-><init>(Lcom/couchbase/lite/internal/core/C4Socket;Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vC4Socket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToCore([B)V
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Socket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.sendToCore(%d)"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/o00;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/o00;-><init>(Lcom/couchbase/lite/internal/core/C4Socket;[B)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method
