.class public Lorg/mortbay/jetty/HttpConnection$a;
.super Lorg/mortbay/jetty/HttpParser$EventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lorg/mortbay/jetty/HttpConnection;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-direct {p0}, Lorg/mortbay/jetty/HttpParser$EventHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/jetty/HttpConnection;Lorg/mortbay/jetty/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/HttpConnection$a;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    return-void
.end method


# virtual methods
.method public content(Lorg/mortbay/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object p1, p1, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v0, p1, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    :cond_0
    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {p1}, Lorg/mortbay/jetty/HttpConnection;->f(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/mortbay/jetty/HttpConnection;->g(Lorg/mortbay/jetty/HttpConnection;Z)Z

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    :cond_1
    return-void
.end method

.method public headerComplete()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v1, v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v0}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->scheduleIdle()V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->l(Lorg/mortbay/jetty/HttpConnection;)I

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->h(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/Generator;->setVersion(I)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->h(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->j(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/Generator;->setHead(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->DATE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v4, v4, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v1, v3, v0, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->a(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v3, 0x190

    invoke-interface {v0, v3, v1}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v1, v0, v2}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->complete()V

    return-void

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->c(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->e()I

    move-result v3

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->c(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_8

    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v3, 0x64

    invoke-interface {v0, v3, v1}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, v1, v2}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->complete()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->c(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v3, 0x1a1

    invoke-interface {v0, v3, v1}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v1, v0, v2}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->complete()V

    return-void

    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->j(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/Generator;->setHead(Z)V

    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v1, v1, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/Request;->setCharacterEncodingUnchecked(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getContentLength()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_a

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->isChunking()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    goto :goto_1

    :cond_a
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {p0, v2}, Lorg/mortbay/jetty/HttpConnection;->g(Lorg/mortbay/jetty/HttpConnection;Z)Z

    :goto_1
    return-void
.end method

.method public messageComplete(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {p1}, Lorg/mortbay/jetty/HttpConnection;->f(Lorg/mortbay/jetty/HttpConnection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/mortbay/jetty/HttpConnection;->g(Lorg/mortbay/jetty/HttpConnection;Z)Z

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    :cond_0
    return-void
.end method

.method public parsedHeader(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 8

    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->b(Lorg/mortbay/jetty/HttpConnection;Z)Z

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/mortbay/jetty/HttpConnection;->d(Lorg/mortbay/jetty/HttpConnection;I)I

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object p2

    invoke-static {p2}, Lorg/mortbay/jetty/MimeTypes;->getCharsetFromContentType(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0, p2}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v0

    const/4 v2, -0x1

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    if-eq v0, v5, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0}, Lorg/mortbay/jetty/HttpConnection;->h(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v0

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v2, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, v4}, Lorg/mortbay/jetty/Generator;->setPersistent(Z)V

    goto :goto_1

    :cond_7
    new-instance v0, Lorg/mortbay/util/QuotedStringTokenizer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ","

    invoke-direct {v0, v2, v6}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v2

    if-eq v2, v1, :cond_a

    if-eq v2, v5, :cond_9

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v2}, Lorg/mortbay/jetty/HttpConnection;->h(Lorg/mortbay/jetty/HttpConnection;)I

    move-result v2

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v7, Lorg/mortbay/jetty/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    sget-object v6, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v7, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v2, v6, v7}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2, v4}, Lorg/mortbay/jetty/Generator;->setPersistent(Z)V

    goto :goto_0

    :cond_b
    :goto_1
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->add(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    return-void
.end method

.method public startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->b(Lorg/mortbay/jetty/HttpConnection;Z)Z

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->e()I

    move-result v2

    invoke-static {v0, v2}, Lorg/mortbay/jetty/HttpConnection;->d(Lorg/mortbay/jetty/HttpConnection;I)I

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpConnection;->g(Lorg/mortbay/jetty/HttpConnection;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/mortbay/jetty/Request;->setTimeStamp(J)V

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setMethod(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, v2, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v3

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result p2

    invoke-virtual {v2, v3, v4, p2}, Lorg/mortbay/jetty/HttpURI;->parse([BII)V

    iget-object p2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object v2, p2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    iget-object p2, p2, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v2, p2}, Lorg/mortbay/jetty/Request;->setUri(Lorg/mortbay/jetty/HttpURI;)V

    if-nez p3, :cond_1

    iget-object p2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object p2, p2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lorg/mortbay/jetty/Request;->setProtocol(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    const/16 p3, 0x9

    invoke-static {p2, p3}, Lorg/mortbay/jetty/HttpConnection;->i(Lorg/mortbay/jetty/HttpConnection;I)I

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    invoke-virtual {p2, p3}, Lorg/mortbay/io/BufferCache;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object p3

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {p2, p3}, Lorg/mortbay/io/BufferCache;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result p2

    invoke-static {v2, p2}, Lorg/mortbay/jetty/HttpConnection;->i(Lorg/mortbay/jetty/HttpConnection;I)I

    iget-object p2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    invoke-static {p2}, Lorg/mortbay/jetty/HttpConnection;->h(Lorg/mortbay/jetty/HttpConnection;)I

    move-result p2

    if-gtz p2, :cond_2

    iget-object p2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lorg/mortbay/jetty/HttpConnection;->i(Lorg/mortbay/jetty/HttpConnection;I)I

    :cond_2
    iget-object p2, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    iget-object p2, p2, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/mortbay/jetty/Request;->setProtocol(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection$a;->b:Lorg/mortbay/jetty/HttpConnection;

    sget-object p2, Lorg/mortbay/jetty/HttpMethods;->HEAD_BUFFER:Lorg/mortbay/io/Buffer;

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {p0, v1}, Lorg/mortbay/jetty/HttpConnection;->k(Lorg/mortbay/jetty/HttpConnection;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    new-instance p1, Lorg/mortbay/jetty/HttpException;

    const/16 p2, 0x190

    invoke-direct {p1, p2, v0, p0}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startResponse(Lorg/mortbay/io/Buffer;ILorg/mortbay/io/Buffer;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Bad request!: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    return-void
.end method
