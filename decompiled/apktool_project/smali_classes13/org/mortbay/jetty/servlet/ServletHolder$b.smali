.class public Lorg/mortbay/jetty/servlet/ServletHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/Servlet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:Ljava/util/Stack;

.field public final synthetic f:Lorg/mortbay/jetty/servlet/ServletHolder;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;Lorg/mortbay/jetty/servlet/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder$b;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    invoke-interface {v0}, Ljavax/servlet/Servlet;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {p0}, Lorg/mortbay/jetty/servlet/ServletHolder;->access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$a;

    move-result-object p0

    return-object p0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Holder;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/Holder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V

    iget-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/Holder;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/Holder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->f:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-enter p0

    :try_start_4
    iget-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    monitor-enter p0

    :try_start_5
    iget-object p2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$b;->e:Ljava/util/Stack;

    invoke-virtual {p2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catch_0
    move-exception p1

    :try_start_7
    new-instance p2, Ljavax/servlet/ServletException;

    invoke-direct {p2, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method
