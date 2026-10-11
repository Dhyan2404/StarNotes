.class public final Lcom/couchbase/lite/internal/sockets/OkHttpSocket;
.super Lokhttp3/WebSocketListener;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/sockets/SocketToRemote;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;
    }
.end annotation


# static fields
.field private static final BASE_HTTP_CLIENT:Lokhttp3/OkHttpClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

.field private static final NULL_WS:Lokhttp3/WebSocket;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final socketFactory:Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;

.field private final toCore:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromRemote;",
            ">;"
        }
    .end annotation
.end field

.field private final toRemote:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lokhttp3/WebSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->BASE_HTTP_CLIENT:Lokhttp3/OkHttpClient;

    new-instance v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket$1;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket$1;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->NULL_WS:Lokhttp3/WebSocket;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/couchbase/lite/internal/sockets/a;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/sockets/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;-><init>(Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p1, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->socketFactory:Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;

    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$onMessage$3(Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lokhttp3/WebSocket;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$closeRemote$1(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lokhttp3/WebSocket;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lokio/ByteString;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$onMessage$4(Lokio/ByteString;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method private closeSocket(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 2
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/WebSocket;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromRemote;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p2, "Ignoring attempt to close the wrong socket: %s, %s"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2, p0}, Lcom/couchbase/lite/internal/utils/Fn$Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic e0(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$onClosing$5(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method public static synthetic f(ILjava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$onClosed$6(ILjava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method public static synthetic f0([BLokhttp3/WebSocket;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$writeToRemote$0([BLokhttp3/WebSocket;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$cancelRemote$2(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method private getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Attempt to use socket before initialization"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic j(Ljava/lang/Throwable;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$onFailure$7(Ljava/lang/Throwable;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method private static synthetic lambda$cancelRemote$2(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lokhttp3/WebSocket;->cancel()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$closeRemote$1(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lokhttp3/WebSocket;)Ljava/lang/Boolean;
    .locals 1

    iget v0, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onClosed$6(ILjava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 2

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteClosed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method private static synthetic lambda$onClosing$5(Lcom/couchbase/lite/internal/sockets/CloseStatus;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method private static synthetic lambda$onFailure$7(Ljava/lang/Throwable;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$onFailure$8(Lokhttp3/Response;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, p0}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteClosed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method private static synthetic lambda$onMessage$3(Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteWrites([B)V

    return-void
.end method

.method private static synthetic lambda$onMessage$4(Lokio/ByteString;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteWrites([B)V

    return-void
.end method

.method private static synthetic lambda$writeToRemote$0([BLokhttp3/WebSocket;)Ljava/lang/Boolean;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lokio/ByteString;->of([BII)Lokio/ByteString;

    move-result-object p0

    invoke-interface {p1, p0}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private newRequest(Ljava/net/URI;Ljava/util/Map;)Lokhttp3/Request;
    .locals 2
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "Host"

    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz p2, :cond_2

    const-string p1, "headers"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    const-string p1, "WS-Protocols"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p2, "Sec-WebSocket-Protocol"

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static parseCookies(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0    # Lokhttp3/HttpUrl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/Cookie;->parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private verifyRemote(Lokhttp3/WebSocket;)Z
    .locals 3
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocket;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-object p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Ignoring operation on closed socket: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    sget-object v1, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Ignoring operation on the wrong socket(%s): %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static synthetic w(Lokhttp3/Response;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->lambda$onFailure$8(Lokhttp3/Response;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method

.method private withCore(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 1
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/WebSocket;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromRemote;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->verifyRemote(Lokhttp3/WebSocket;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, v0}, Lcom/couchbase/lite/internal/utils/Fn$Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private withRemote(Lcom/couchbase/lite/internal/utils/Fn$Function;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Function;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/utils/Fn$Function<",
            "Lokhttp3/WebSocket;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocket;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public cancelRemote()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.cancel"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocket;

    new-instance v1, Lcom/sunia/HTREnginev2/kfk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/kfk;-><init>(Lokhttp3/WebSocket;)V

    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->closeSocket(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method public close()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/16 v1, 0x3e9

    const-string v2, "Closed by client"

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocket;

    if-eqz p0, :cond_0

    iget v2, v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    iget-object v3, v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    invoke-interface {p0, v2, v3}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    if-eqz v1, :cond_1

    sget-object p0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v1, v0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteClosed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    :cond_1
    return-void
.end method

.method public closeRemote(Lcom/couchbase/lite/internal/sockets/CloseStatus;)Z
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.close: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    new-instance v0, Lcom/sunia/HTREnginev2/ifk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/ifk;-><init>(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->withRemote(Lcom/couchbase/lite/internal/utils/Fn$Function;)Z

    move-result p0

    return p0
.end method

.method public getCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    return-object p0
.end method

.method public getRemote()Lokhttp3/WebSocket;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/WebSocket;

    return-object p0
.end method

.method public init(Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketFromRemote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.init: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-static {v1, v2, p1}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toCore:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    if-nez v1, :cond_1

    const-string p1, "Ignoring attempt to initialize a closed socket socket: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "Ignoring socket re-initialization: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to re-initialize socket("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;)V

    throw p0
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 3
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.onClosed(%d): \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    new-instance v0, Lcom/sunia/HTREnginev2/dfk;

    invoke-direct {v0, p2, p3}, Lcom/sunia/HTREnginev2/dfk;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->closeSocket(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 3
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.onClosing(%d): \'%s\'"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-direct {v0, p2, p3}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(ILjava/lang/String;)V

    new-instance p2, Lcom/sunia/HTREnginev2/hfk;

    invoke-direct {p2, v0}, Lcom/sunia/HTREnginev2/hfk;-><init>(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->withCore(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 3
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.onFailure: %s"

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    if-nez p3, :cond_0

    new-instance p3, Lcom/sunia/HTREnginev2/efk;

    invoke-direct {p3, p2}, Lcom/sunia/HTREnginev2/efk;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, p1, p3}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->closeSocket(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void

    :cond_0
    new-instance p2, Lcom/sunia/HTREnginev2/ffk;

    invoke-direct {p2, p3}, Lcom/sunia/HTREnginev2/ffk;-><init>(Lokhttp3/Response;)V

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->closeSocket(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    :goto_0
    sget-object v1, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.onText(%d)"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/jfk;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/jfk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->withCore(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokio/ByteString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    .line 5
    :goto_0
    sget-object v1, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.onBytes(%d)"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v0, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/lfk;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/lfk;-><init>(Lokio/ByteString;)V

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->withCore(Lokhttp3/WebSocket;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 4
    .param p1    # Lokhttp3/WebSocket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.onOpen: %s"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->verifyRemote(Lokhttp3/WebSocket;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result p1

    if-lez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->remoteOpened(ILjava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public openRemote(Ljava/net/URI;Ljava/util/Map;)Z
    .locals 6
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.open: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->NULL_WS:Lokhttp3/WebSocket;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "Attempt to re-open open socket: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    sget-object v0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->BASE_HTTP_CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;->setupRemoteSocketFactory(Lokhttp3/OkHttpClient$Builder;)V

    iget-object v1, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->toRemote:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->socketFactory:Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->newRequest(Ljava/net/URI;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    invoke-interface {v2, v0, p1, p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket$SocketFactory;->create(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object p0

    invoke-static {v1, v4, p0}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    const/16 p1, 0xd

    const-string p2, "Failed setting remote web socket"

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttpSocket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToRemote([B)Z
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    sget-object v1, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.write(%d)"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->getOpenCore()Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    new-instance v0, Lcom/sunia/HTREnginev2/gfk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/gfk;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->withRemote(Lcom/couchbase/lite/internal/utils/Fn$Function;)Z

    move-result p0

    return p0
.end method
