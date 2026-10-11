.class public Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/net/Socket;

.field public c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field public d:Lcom/squareup/okhttp/Protocol;

.field public e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 4
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->d:Lcom/squareup/okhttp/Protocol;

    .line 5
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    .line 6
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->a:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->f:Z

    .line 8
    iput-object p3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->b:Ljava/net/Socket;

    return-void
.end method

.method public constructor <init>(ZLjava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    return-void
.end method

.method public static synthetic a(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->d:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public static synthetic b(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/PushObserver;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-object p0
.end method

.method public static synthetic c(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->f:Z

    return p0
.end method

.method public static synthetic d(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object p0
.end method

.method public static synthetic e(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->b:Ljava/net/Socket;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$a;)V

    return-object v0
.end method

.method public handler(Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object p0
.end method

.method public protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->d:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public pushObserver(Lcom/squareup/okhttp/internal/spdy/PushObserver;)Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->e:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-object p0
.end method
