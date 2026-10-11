.class public Lorg/apache/http/impl/bootstrap/HttpServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/bootstrap/HttpServer$Status;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/net/InetAddress;

.field public final c:Lorg/apache/http/config/SocketConfig;

.field public final d:Ljavax/net/ServerSocketFactory;

.field public final e:Lorg/apache/http/protocol/HttpService;

.field public final f:Lorg/apache/http/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/HttpConnectionFactory<",
            "+",
            "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

.field public final h:Lorg/apache/http/ExceptionLogger;

.field public final i:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final j:Ljava/lang/ThreadGroup;

.field public final k:Lcom/sunia/HTREnginev2/rao;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/http/impl/bootstrap/HttpServer$Status;",
            ">;"
        }
    .end annotation
.end field

.field public volatile m:Ljava/net/ServerSocket;

.field public volatile n:Lcom/sunia/HTREnginev2/dll;


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Lorg/apache/http/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;Lorg/apache/http/ExceptionLogger;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/net/InetAddress;",
            "Lorg/apache/http/config/SocketConfig;",
            "Ljavax/net/ServerSocketFactory;",
            "Lorg/apache/http/protocol/HttpService;",
            "Lorg/apache/http/HttpConnectionFactory<",
            "+",
            "Lorg/apache/http/impl/DefaultBHttpServerConnection;",
            ">;",
            "Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;",
            "Lorg/apache/http/ExceptionLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->a:I

    move-object v2, p2

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->b:Ljava/net/InetAddress;

    move-object v2, p3

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->c:Lorg/apache/http/config/SocketConfig;

    move-object/from16 v2, p4

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->d:Ljavax/net/ServerSocketFactory;

    move-object/from16 v2, p5

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->e:Lorg/apache/http/protocol/HttpService;

    move-object/from16 v2, p6

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->f:Lorg/apache/http/HttpConnectionFactory;

    move-object/from16 v2, p7

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->g:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    move-object/from16 v2, p8

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->h:Lorg/apache/http/ExceptionLogger;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/zgn;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP-listener-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/sunia/HTREnginev2/zgn;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    move p2, v3

    move p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    invoke-direct/range {p1 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/lang/ThreadGroup;

    const-string v2, "HTTP-workers"

    invoke-direct {v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->j:Ljava/lang/ThreadGroup;

    new-instance v2, Lcom/sunia/HTREnginev2/rao;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lcom/sunia/HTREnginev2/zgn;

    const-string v10, "HTTP-worker"

    invoke-direct {v9, v10, v1}, Lcom/sunia/HTREnginev2/zgn;-><init>(Ljava/lang/String;Ljava/lang/ThreadGroup;)V

    move-object p1, v2

    move p2, v3

    move p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    invoke-direct/range {p1 .. p8}, Lcom/sunia/HTREnginev2/rao;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->k:Lcom/sunia/HTREnginev2/rao;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lorg/apache/http/impl/bootstrap/HttpServer;->l:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->k:Lcom/sunia/HTREnginev2/rao;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLocalPort()I
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public shutdown(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/http/impl/bootstrap/HttpServer;->stop()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/bootstrap/HttpServer;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->k:Lcom/sunia/HTREnginev2/rao;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/rao;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/qao;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/qao;->a()Lorg/apache/http/HttpServerConnection;

    move-result-object p2

    :try_start_1
    invoke-interface {p2}, Lorg/apache/http/HttpConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    iget-object p3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->h:Lorg/apache/http/ExceptionLogger;

    invoke-interface {p3, p2}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public start()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->READY:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-static {v0, v1, v2}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->d:Ljavax/net/ServerSocketFactory;

    iget v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->a:I

    iget-object v2, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->c:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2}, Lorg/apache/http/config/SocketConfig;->getBacklogSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->b:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->c:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/SocketConfig;->isSoReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->c:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->c:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v1}, Lorg/apache/http/config/SocketConfig;->getRcvBufSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->g:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    instance-of v0, v0, Ljavax/net/ssl/SSLServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->g:Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    invoke-interface {v0, v1}, Lorg/apache/http/impl/bootstrap/SSLServerSetupHandler;->initialize(Ljavax/net/ssl/SSLServerSocket;)V

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/dll;

    iget-object v3, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->c:Lorg/apache/http/config/SocketConfig;

    iget-object v4, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->m:Ljava/net/ServerSocket;

    iget-object v5, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->e:Lorg/apache/http/protocol/HttpService;

    iget-object v6, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->f:Lorg/apache/http/HttpConnectionFactory;

    iget-object v7, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->h:Lorg/apache/http/ExceptionLogger;

    iget-object v8, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->k:Lcom/sunia/HTREnginev2/rao;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sunia/HTREnginev2/dll;-><init>(Lorg/apache/http/config/SocketConfig;Ljava/net/ServerSocket;Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpConnectionFactory;Lorg/apache/http/ExceptionLogger;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->n:Lcom/sunia/HTREnginev2/dll;

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->n:Lcom/sunia/HTREnginev2/dll;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->ACTIVE:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    sget-object v2, Lorg/apache/http/impl/bootstrap/HttpServer$Status;->STOPPING:Lorg/apache/http/impl/bootstrap/HttpServer$Status;

    invoke-static {v0, v1, v2}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->k:Lcom/sunia/HTREnginev2/rao;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->n:Lcom/sunia/HTREnginev2/dll;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/dll;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->h:Lorg/apache/http/ExceptionLogger;

    invoke-interface {v1, v0}, Lorg/apache/http/ExceptionLogger;->log(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/apache/http/impl/bootstrap/HttpServer;->j:Ljava/lang/ThreadGroup;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->interrupt()V

    :cond_1
    return-void
.end method
