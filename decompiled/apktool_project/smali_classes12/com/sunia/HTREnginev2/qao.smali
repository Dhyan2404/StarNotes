.class public Lcom/sunia/HTREnginev2/qao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lorg/apache/http/protocol/HttpService;

.field public final f:Lorg/apache/http/HttpServerConnection;

.field public final g:Lorg/apache/http/ExceptionLogger;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;Lorg/apache/http/ExceptionLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qao;->e:Lorg/apache/http/protocol/HttpService;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qao;->g:Lorg/apache/http/ExceptionLogger;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/HttpServerConnection;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    return-object p0
.end method

.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {v0}, Lorg/apache/http/protocol/HttpCoreContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/protocol/HttpCoreContext;

    move-result-object v1

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v2}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/qao;->e:Lorg/apache/http/protocol/HttpService;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    invoke-virtual {v2, v3, v1}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V

    invoke-virtual {v0}, Lorg/apache/http/protocol/BasicHttpContext;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/sunia/HTREnginev2/qao;->g:Lorg/apache/http/ExceptionLogger;

    invoke-interface {v1, v0}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qao;->g:Lorg/apache/http/ExceptionLogger;

    invoke-interface {p0, v0}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/sunia/HTREnginev2/qao;->f:Lorg/apache/http/HttpServerConnection;

    invoke-interface {v1}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qao;->g:Lorg/apache/http/ExceptionLogger;

    invoke-interface {p0, v1}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    :goto_3
    throw v0
.end method
