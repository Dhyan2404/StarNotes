.class public Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedSocket"
.end annotation


# instance fields
.field public final alpnProtocol:Lcom/squareup/okhttp/Protocol;

.field public final handshake:Lcom/squareup/okhttp/Handshake;

.field public final route:Lcom/squareup/okhttp/Route;

.field public final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Route;Ljava/net/Socket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->route:Lcom/squareup/okhttp/Route;

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/squareup/okhttp/Protocol;

    .line 5
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/squareup/okhttp/Handshake;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Route;Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/Handshake;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->route:Lcom/squareup/okhttp/Route;

    .line 8
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    .line 9
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/squareup/okhttp/Protocol;

    .line 10
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/squareup/okhttp/Handshake;

    return-void
.end method
