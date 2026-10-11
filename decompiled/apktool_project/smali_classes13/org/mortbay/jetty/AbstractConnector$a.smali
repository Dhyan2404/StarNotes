.class public Lorg/mortbay/jetty/AbstractConnector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/AbstractConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lorg/mortbay/jetty/AbstractConnector;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractConnector;I)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v2}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v2}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v2

    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    aput-object v0, v2, v3

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v2}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v2

    iget v3, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " - Acceptor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v4}, Lorg/mortbay/jetty/AbstractConnector;->h(Lorg/mortbay/jetty/AbstractConnector;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    :goto_0
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-virtual {v4}, Lorg/mortbay/component/AbstractLifeCycle;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-interface {v4}, Lorg/mortbay/jetty/Connector;->getConnection()Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_1

    :try_start_2
    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    iget v5, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/AbstractConnector;->accept(I)V
    :try_end_2
    .catch Lorg/mortbay/jetty/EofException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v4

    throw v4

    :catch_1
    move-exception v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    monitor-enter v4

    :try_start_4
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v0}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v0}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v0

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    aput-object v3, v0, p0

    :cond_2
    monitor-exit v4

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception v4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v1}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/mortbay/jetty/AbstractConnector$a;->f:Lorg/mortbay/jetty/AbstractConnector;

    invoke-static {v1}, Lorg/mortbay/jetty/AbstractConnector;->g(Lorg/mortbay/jetty/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v1

    iget p0, p0, Lorg/mortbay/jetty/AbstractConnector$a;->e:I

    aput-object v3, v1, p0

    :cond_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method
