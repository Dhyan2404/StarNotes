.class public abstract Lcom/squareup/okhttp/internal/http/HttpConnection$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final e:Lokio/ForwardingTimeout;

.field public f:Z

.field public final synthetic g:Lcom/squareup/okhttp/internal/http/HttpConnection;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->e(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->e:Lokio/ForwardingTimeout;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/HttpConnection;Lcom/squareup/okhttp/internal/http/HttpConnection$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpConnection$b;-><init>(Lcom/squareup/okhttp/internal/http/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public final f(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->c(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->e:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->b(Lcom/squareup/okhttp/internal/http/HttpConnection;Lokio/ForwardingTimeout;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->d(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->f(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {p1, v1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->g(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    sget-object p1, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->h(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/ConnectionPool;

    move-result-object v0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->i(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/squareup/okhttp/internal/Internal;->recycle(Lcom/squareup/okhttp/ConnectionPool;Lcom/squareup/okhttp/Connection;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpConnection;->f(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->d(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->i(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Socket;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->c(Lcom/squareup/okhttp/internal/http/HttpConnection;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->i(Lcom/squareup/okhttp/internal/http/HttpConnection;)Lcom/squareup/okhttp/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->g:Lcom/squareup/okhttp/internal/http/HttpConnection;

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpConnection;->d(Lcom/squareup/okhttp/internal/http/HttpConnection;I)I

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/HttpConnection$b;->e:Lokio/ForwardingTimeout;

    return-object p0
.end method
