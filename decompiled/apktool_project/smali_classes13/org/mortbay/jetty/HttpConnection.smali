.class public Lorg/mortbay/jetty/HttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/HttpConnection$OutputWriter;,
        Lorg/mortbay/jetty/HttpConnection$Output;,
        Lorg/mortbay/jetty/HttpConnection$a;
    }
.end annotation


# static fields
.field public static l:I = -0x2

.field public static m:Ljava/lang/ThreadLocal;


# instance fields
.field protected final _connector:Lorg/mortbay/jetty/Connector;

.field protected final _endp:Lorg/mortbay/io/EndPoint;

.field protected final _generator:Lorg/mortbay/jetty/Generator;

.field protected _in:Ljavax/servlet/ServletInputStream;

.field protected _out:Lorg/mortbay/jetty/HttpConnection$Output;

.field protected final _parser:Lorg/mortbay/jetty/Parser;

.field protected _printWriter:Ljava/io/PrintWriter;

.field protected final _request:Lorg/mortbay/jetty/Request;

.field protected final _requestFields:Lorg/mortbay/jetty/HttpFields;

.field protected final _response:Lorg/mortbay/jetty/Response;

.field protected final _responseFields:Lorg/mortbay/jetty/HttpFields;

.field protected final _server:Lorg/mortbay/jetty/Server;

.field protected final _uri:Lorg/mortbay/jetty/HttpURI;

.field protected _writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

.field public a:J

.field public b:I

.field public c:Z

.field public d:Z

.field public e:I

.field public f:Ljava/lang/Object;

.field public transient g:I

.field public transient h:I

.field public transient i:Z

.field public transient j:Z

.field public transient k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/HttpConnection;->m:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpConnection;->a:J

    .line 3
    sget v0, Lorg/mortbay/jetty/HttpConnection;->l:I

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->g:I

    .line 4
    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->h:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->i:Z

    .line 6
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->j:Z

    .line 7
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->k:Z

    .line 8
    sget-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v1, "UTF-8"

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpURI;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/mortbay/jetty/EncodedHttpURI;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 9
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    .line 10
    iput-object p2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    .line 11
    new-instance v0, Lorg/mortbay/jetty/HttpParser;

    new-instance v4, Lorg/mortbay/jetty/HttpConnection$a;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lorg/mortbay/jetty/HttpConnection$a;-><init>(Lorg/mortbay/jetty/HttpConnection;Lorg/mortbay/jetty/b;)V

    invoke-interface {p1}, Lorg/mortbay/jetty/Connector;->getHeaderBufferSize()I

    move-result v5

    invoke-interface {p1}, Lorg/mortbay/jetty/Connector;->getRequestBufferSize()I

    move-result v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/mortbay/jetty/HttpParser;-><init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/HttpParser$EventHandler;II)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    .line 12
    new-instance v0, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    .line 13
    new-instance v0, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    .line 14
    new-instance v0, Lorg/mortbay/jetty/Request;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/Request;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    .line 15
    new-instance v0, Lorg/mortbay/jetty/Response;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/Response;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    .line 16
    new-instance v0, Lorg/mortbay/jetty/HttpGenerator;

    invoke-interface {p1}, Lorg/mortbay/jetty/Connector;->getHeaderBufferSize()I

    move-result v1

    invoke-interface {p1}, Lorg/mortbay/jetty/Connector;->getResponseBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/mortbay/jetty/HttpGenerator;-><init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;II)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    .line 17
    invoke-virtual {p3}, Lorg/mortbay/jetty/Server;->getSendServerVersion()Z

    move-result p1

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Generator;->setSendServerVersion(Z)V

    .line 18
    iput-object p3, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/Connector;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Server;Lorg/mortbay/jetty/Parser;Lorg/mortbay/jetty/Generator;Lorg/mortbay/jetty/Request;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpConnection;->a:J

    .line 21
    sget v0, Lorg/mortbay/jetty/HttpConnection;->l:I

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->g:I

    .line 22
    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->h:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->i:Z

    .line 24
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->j:Z

    .line 25
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->k:Z

    .line 26
    sget-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v1, "UTF-8"

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v0}, Lorg/mortbay/jetty/HttpURI;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/mortbay/jetty/EncodedHttpURI;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 27
    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    .line 28
    iput-object p2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    .line 29
    iput-object p4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    .line 30
    new-instance p1, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {p1}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    .line 31
    new-instance p1, Lorg/mortbay/jetty/HttpFields;

    invoke-direct {p1}, Lorg/mortbay/jetty/HttpFields;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    .line 32
    iput-object p6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    .line 33
    new-instance p1, Lorg/mortbay/jetty/Response;

    invoke-direct {p1, p0}, Lorg/mortbay/jetty/Response;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    .line 34
    iput-object p5, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    .line 35
    invoke-virtual {p3}, Lorg/mortbay/jetty/Server;->getSendServerVersion()Z

    move-result p1

    invoke-interface {p5, p1}, Lorg/mortbay/jetty/Generator;->setSendServerVersion(Z)V

    .line 36
    iput-object p3, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/jetty/HttpConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/HttpConnection;->j:Z

    return p0
.end method

.method public static synthetic b(Lorg/mortbay/jetty/HttpConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpConnection;->j:Z

    return p1
.end method

.method public static synthetic c(Lorg/mortbay/jetty/HttpConnection;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpConnection;->g:I

    return p0
.end method

.method public static synthetic d(Lorg/mortbay/jetty/HttpConnection;I)I
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/HttpConnection;->g:I

    return p1
.end method

.method public static synthetic e()I
    .locals 1

    sget v0, Lorg/mortbay/jetty/HttpConnection;->l:I

    return v0
.end method

.method public static synthetic f(Lorg/mortbay/jetty/HttpConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/HttpConnection;->k:Z

    return p0
.end method

.method public static synthetic g(Lorg/mortbay/jetty/HttpConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpConnection;->k:Z

    return p1
.end method

.method public static getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/HttpConnection;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpConnection;

    return-object v0
.end method

.method public static synthetic h(Lorg/mortbay/jetty/HttpConnection;)I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpConnection;->h:I

    return p0
.end method

.method public static synthetic i(Lorg/mortbay/jetty/HttpConnection;I)I
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/HttpConnection;->h:I

    return p1
.end method

.method public static synthetic j(Lorg/mortbay/jetty/HttpConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/HttpConnection;->i:Z

    return p0
.end method

.method public static synthetic k(Lorg/mortbay/jetty/HttpConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpConnection;->i:Z

    return p1
.end method

.method public static synthetic l(Lorg/mortbay/jetty/HttpConnection;)I
    .locals 2

    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mortbay/jetty/HttpConnection;->b:I

    return v0
.end method

.method public static setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/HttpConnection;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public commitResponse(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v1

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v0, v1, p1}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "header full: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    instance-of v1, v0, Lorg/mortbay/jetty/HttpGenerator;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/mortbay/jetty/HttpGenerator;

    iget-object v0, v0, Lorg/mortbay/jetty/AbstractGenerator;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->toDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->reset()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v0, v2, v1}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->complete()V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->complete()V

    :cond_2
    return-void
.end method

.method public completeResponse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v1

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v1, v2, v0}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "header full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->reset()V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/mortbay/jetty/Generator;->setResponse(ILjava/lang/String;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-interface {v2, v3, v0}, Lorg/mortbay/jetty/Generator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->complete()V

    throw v1

    :catch_1
    move-exception p0

    throw p0

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->complete()V

    return-void
.end method

.method public destroy()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->d:Z

    iget-boolean v1, p0, Lorg/mortbay/jetty/HttpConnection;->c:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->destroy()V

    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->destroy()V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flushResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpConnection;->commitResponse(Z)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->flush()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    instance-of v0, p0, Lorg/mortbay/jetty/EofException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mortbay/jetty/EofException;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    throw p0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public getConnector()Lorg/mortbay/jetty/Connector;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    return-object p0
.end method

.method public getEndPoint()Lorg/mortbay/io/EndPoint;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    return-object p0
.end method

.method public getGenerator()Lorg/mortbay/jetty/Generator;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    return-object p0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpParser$Input;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    check-cast v1, Lorg/mortbay/jetty/HttpParser;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {v2}, Lorg/mortbay/jetty/Connector;->getMaxIdleTime()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/mortbay/jetty/HttpParser$Input;-><init>(Lorg/mortbay/jetty/HttpParser;J)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    return-object p0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/HttpConnection$Output;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    return-object p0
.end method

.method public getParser()Lorg/mortbay/jetty/Parser;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    return-object p0
.end method

.method public getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/HttpConnection$OutputWriter;-><init>(Lorg/mortbay/jetty/HttpConnection;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    new-instance v0, Lorg/mortbay/jetty/b;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/b;-><init>(Lorg/mortbay/jetty/HttpConnection;Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_printWriter:Ljava/io/PrintWriter;

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_writer:Lorg/mortbay/jetty/HttpConnection$OutputWriter;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/AbstractGenerator$OutputWriter;->setCharacterEncoding(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_printWriter:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public getRequest()Lorg/mortbay/jetty/Request;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    return-object p0
.end method

.method public getRequestFields()Lorg/mortbay/jetty/HttpFields;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    return-object p0
.end method

.method public getRequests()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpConnection;->b:I

    return p0
.end method

.method public getResolveNames()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    invoke-interface {p0}, Lorg/mortbay/jetty/Connector;->getResolveNames()Z

    move-result p0

    return p0
.end method

.method public getResponse()Lorg/mortbay/jetty/Response;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    return-object p0
.end method

.method public getResponseFields()Lorg/mortbay/jetty/HttpFields;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpConnection;->a:J

    return-wide v0
.end method

.method public handle()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_25

    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-boolean v4, p0, Lorg/mortbay/jetty/HttpConnection;->c:Z

    if-nez v4, :cond_1b

    iput-boolean v0, p0, Lorg/mortbay/jetty/HttpConnection;->c:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "resume continuation {}"

    invoke-static {v5, v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->handleRequest()V

    goto/16 :goto_6

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_2
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v4}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v4}, Lorg/mortbay/jetty/Parser;->parseAvailable()J

    move-result-wide v7

    goto :goto_1

    :cond_3
    move-wide v7, v5

    :cond_4
    :goto_1
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->flush()J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v4, v9, v5

    if-gtz v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->flush()V

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->flush()V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v4
    :try_end_2
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v4, :cond_7

    move v3, v1

    :cond_7
    cmp-long v4, v7, v5

    if-lez v4, :cond_8

    move v3, v1

    goto/16 :goto_6

    :cond_8
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x2

    if-lt v3, v5, :cond_11

    invoke-static {v2}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v1

    goto :goto_4

    :cond_a
    :goto_3
    move v2, v0

    :goto_4
    monitor-enter p0

    :try_start_3
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpConnection;->c:Z

    iget-boolean v3, p0, Lorg/mortbay/jetty/HttpConnection;->d:Z

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    monitor-exit p0

    return-void

    :cond_b
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v3}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v3}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v3}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v3}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    move v2, v1

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v0}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v0

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_f

    :cond_f
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_10

    check-cast p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0, v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->setWritable(Z)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_11
    move v3, v4

    :goto_6
    invoke-static {v2}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_7

    :cond_12
    move v2, v1

    goto :goto_8

    :cond_13
    :goto_7
    move v2, v0

    :goto_8
    monitor-enter p0

    :try_start_5
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpConnection;->c:Z

    iget-boolean v4, p0, Lorg/mortbay/jetty/HttpConnection;->d:Z

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v4}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v3}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    move v2, v1

    :cond_15
    if-eqz v2, :cond_18

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_9

    :cond_16
    move v2, v1

    goto :goto_a

    :cond_17
    :goto_9
    move v2, v0

    goto :goto_a

    :cond_18
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    :goto_a
    move v3, v1

    :cond_19
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto/16 :goto_f

    :cond_1a
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v5, v4, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {v4, v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->setWritable(Z)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_1b
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v3

    goto :goto_b

    :catch_0
    move-exception v3

    :try_start_9
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "fields="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    :cond_1c
    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpException;->getStatus()I

    move-result v5

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpException;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2, v0}, Lorg/mortbay/jetty/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v4, v0}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->close()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_b
    invoke-static {v2}, Lorg/mortbay/jetty/HttpConnection;->setCurrentConnection(Lorg/mortbay/jetty/HttpConnection;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v2}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    goto :goto_d

    :cond_1e
    :goto_c
    move v2, v0

    :goto_d
    monitor-enter p0

    :try_start_a
    iput-boolean v1, p0, Lorg/mortbay/jetty/HttpConnection;->c:Z

    iget-boolean v4, p0, Lorg/mortbay/jetty/HttpConnection;->d:Z

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->destroy()V

    monitor-exit p0

    return-void

    :cond_1f
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v4}, Lorg/mortbay/jetty/Parser;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v4}, Lorg/mortbay/io/EndPoint;->isBufferingOutput()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v4}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v2, v0}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    move v2, v1

    :cond_20
    if-eqz v2, :cond_21

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v0}, Lorg/mortbay/jetty/Parser;->isMoreInBuffer()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isBufferingInput()Z

    move-result v0

    goto :goto_e

    :cond_21
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpConnection;->reset(Z)V

    :cond_22
    :goto_e
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_f

    :cond_23
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isComplete()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    instance-of v0, p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    if-eqz v0, :cond_24

    check-cast p0, Lorg/mortbay/io/nio/SelectChannelEndPoint;

    invoke-virtual {p0, v1}, Lorg/mortbay/io/nio/SelectChannelEndPoint;->setWritable(Z)V

    :cond_24
    throw v3

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :cond_25
    :goto_f
    return-void
.end method

.method public handleRequest()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "continuation still pending {}"

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0x194

    const/16 v2, 0x190

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/mortbay/jetty/EofException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_7

    :try_start_1
    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v6, v5}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/mortbay/jetty/AbstractGenerator$Output;->j()V

    :cond_0
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/mortbay/jetty/EofException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v8, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v9, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-interface {v7, v8, v9}, Lorg/mortbay/jetty/Connector;->customize(Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/Request;)V

    iget-object v7, p0, Lorg/mortbay/jetty/HttpConnection;->_server:Lorg/mortbay/jetty/Server;

    invoke-virtual {v7, p0}, Lorg/mortbay/jetty/Server;->handle(Lorg/mortbay/jetty/HttpConnection;)V
    :try_end_2
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0, v2}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->sendError(I)V

    :cond_5
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_a

    :cond_6
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_a

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v6

    goto/16 :goto_4

    :catch_1
    move-exception v2

    move-object v4, v6

    goto/16 :goto_5

    :catch_2
    move-exception v2

    move-object v4, v6

    goto/16 :goto_6

    :catch_3
    move-exception v2

    move-object v4, v6

    goto/16 :goto_7

    :catchall_1
    move-exception v6

    move-object v7, v4

    goto :goto_1

    :cond_7
    :try_start_3
    new-instance v6, Lorg/mortbay/jetty/HttpException;

    invoke-direct {v6, v2}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v6
    :try_end_3
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/mortbay/jetty/EofException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/mortbay/jetty/HttpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/mortbay/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception v6

    move-object v5, v4

    move-object v7, v5

    :goto_1
    :try_start_4
    instance-of v8, v6, Ljava/lang/ThreadDeath;

    if-nez v8, :cond_c

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v5, v2, v4, v4, v3}, Lorg/mortbay/jetty/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const/16 v5, 0x1f4

    invoke-interface {v2, v5, v4, v4, v3}, Lorg/mortbay/jetty/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    if-eqz v7, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_a
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0, v1}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    :cond_b
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {p0}, Lorg/mortbay/io/EndPoint;->close()V

    goto/16 :goto_a

    :cond_c
    :try_start_5
    check-cast v6, Ljava/lang/ThreadDeath;

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    goto/16 :goto_8

    :catch_4
    move-exception v2

    :goto_4
    :try_start_6
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_e
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :catch_5
    move-exception v2

    :goto_5
    :try_start_7
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    iget-object v5, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpException;->getStatus()I

    move-result v5

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpException;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_10
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_3

    :catch_6
    move-exception v2

    :goto_6
    :try_start_8
    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v4, :cond_11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_11
    iget-object v1, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_12
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_3

    :catch_7
    move-exception v2

    :goto_7
    :try_start_9
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v2}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_13
    if-eqz v4, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_a

    :catchall_4
    move-exception v2

    move-object v7, v4

    :goto_8
    if-eqz v7, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_14
    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    :cond_15
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpConnection;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0, v3}, Lorg/mortbay/jetty/Connector;->persist(Lorg/mortbay/io/EndPoint;)V

    :cond_16
    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Response;->sendError(I)V

    :cond_17
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto :goto_9

    :cond_18
    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    :goto_9
    throw v2

    :cond_19
    :goto_a
    return-void
.end method

.method public include()V
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->e:I

    return-void
.end method

.method public included()V
    .locals 1

    iget v0, p0, Lorg/mortbay/jetty/HttpConnection;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpConnection;->e:I

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_out:Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractGenerator$Output;->j()V

    :cond_0
    return-void
.end method

.method public isConfidential(Lorg/mortbay/jetty/Request;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/Connector;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v0}, Lorg/mortbay/jetty/Parser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lorg/mortbay/jetty/HttpConnection;->k:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIncluding()Z
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/HttpConnection;->e:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIntegral(Lorg/mortbay/jetty/Request;)Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_connector:Lorg/mortbay/jetty/Connector;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/Connector;->isIntegral(Lorg/mortbay/jetty/Request;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isResponseCommitted()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {p0}, Lorg/mortbay/jetty/Generator;->isCommitted()Z

    move-result p0

    return p0
.end method

.method public reset(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_parser:Lorg/mortbay/jetty/Parser;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Parser;->reset(Z)V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_requestFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->clear()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_request:Lorg/mortbay/jetty/Request;

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->recycle()V

    iget-object v0, p0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Generator;->reset(Z)V

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_responseFields:Lorg/mortbay/jetty/HttpFields;

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpFields;->clear()V

    iget-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->_response:Lorg/mortbay/jetty/Response;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->recycle()V

    iget-object p0, p0, Lorg/mortbay/jetty/HttpConnection;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpURI;->clear()V

    return-void
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/HttpConnection;->f:Ljava/lang/Object;

    return-void
.end method
