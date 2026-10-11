.class public Lorg/mortbay/jetty/nio/SelectChannelConnector$ConnectorEndPoint;
.super Lorg/mortbay/io/nio/SelectChannelEndPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/nio/SelectChannelConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectorEndPoint"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/mortbay/io/nio/SelectChannelEndPoint;-><init>(Ljava/nio/channels/SocketChannel;Lorg/mortbay/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)V

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->reset()V

    :cond_0
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->close()V

    return-void
.end method

.method public undispatch()V
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->getConnection()Lorg/mortbay/io/Connection;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;

    if-eqz v0, :cond_0

    const-string v1, "continuation {}"

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/nio/SelectChannelConnector$RetryContinuation;->undispatch()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->undispatch()V

    :cond_2
    :goto_0
    return-void
.end method
