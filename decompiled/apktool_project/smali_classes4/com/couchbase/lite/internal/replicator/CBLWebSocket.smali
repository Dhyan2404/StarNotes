.class public final Lcom/couchbase/lite/internal/replicator/CBLWebSocket;
.super Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/sockets/SocketToRemote;Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/net/URI;[BLcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToRemote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/sockets/SocketToRemote;",
            "Lcom/couchbase/lite/internal/sockets/SocketToCore;",
            "Ljava/net/URI;",
            "[B",
            "Lcom/couchbase/lite/internal/replicator/CBLCookieStore;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;-><init>(Lcom/couchbase/lite/internal/sockets/SocketToRemote;Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/net/URI;[BLcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method private handleCloseCausePostAPI23(Ljava/lang/Throwable;)I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    instance-of p0, p1, Ljava/security/cert/CertificateRevokedException;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method


# virtual methods
.method public handleClose(Ljava/lang/Throwable;)Lcom/couchbase/lite/internal/sockets/CloseStatus;
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleCloseCause(Ljava/lang/Throwable;)I
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/CBLWebSocket;->handleCloseCausePostAPI23(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
