.class public Lorg/mortbay/servlet/ThrottlingFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/Filter;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->b:I

    iget v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->a:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->b:I

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lorg/mortbay/util/ajax/Continuation;)V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    return-void
.end method

.method public final c(Ljavax/servlet/ServletRequest;)Lorg/mortbay/util/ajax/Continuation;
    .locals 0

    const-string p0, "org.mortbay.jetty.ajax.Continuation"

    invoke-interface {p1, p0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/util/ajax/Continuation;

    return-object p0
.end method

.method public final d(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p3

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p1, Ljavax/servlet/ServletException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Parameter "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " must be a number (was "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " instead)"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mortbay/servlet/ThrottlingFilter;->doFilter(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljavax/servlet/FilterChain;)V

    return-void
.end method

.method public doFilter(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/mortbay/servlet/ThrottlingFilter;->c(Ljavax/servlet/ServletRequest;)Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 4
    :try_start_1
    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Request {} / {} was already queued, rejecting"

    .line 5
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/ThrottlingFilter;->b(Lorg/mortbay/util/ajax/Continuation;)V

    .line 7
    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/servlet/ThrottlingFilter;->f(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/util/ajax/Continuation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->a()Z

    move-result v0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 10
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/ThrottlingFilter;->rejectRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->g()V

    .line 13
    invoke-virtual {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->e()V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->g()V

    .line 15
    invoke-virtual {p0}, Lorg/mortbay/servlet/ThrottlingFilter;->e()V

    .line 16
    :cond_4
    throw p1
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/util/ajax/Continuation;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Resuming continuation {}"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/mortbay/util/ajax/Continuation;->resume()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final f(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/util/ajax/Continuation;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    iget-object p2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->d:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const-string p0, "Queue is full, rejecting request {}"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p2

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "Queuing request {} / {}"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v2, p0, Lorg/mortbay/servlet/ThrottlingFilter;->c:J

    invoke-interface {p3, v2, v3}, Lorg/mortbay/util/ajax/Continuation;->suspend(J)Z

    const-string p0, "Resuming blocking continuation for request {}"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mortbay/servlet/ThrottlingFilter;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "maximum"

    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->d(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->a:I

    const-string v0, "block"

    const/16 v1, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->d(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->c:J

    const-string v0, "queue"

    const/16 v1, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lorg/mortbay/servlet/ThrottlingFilter;->d(Ljavax/servlet/FilterConfig;Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->d:J

    iget-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->c:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->c:J

    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Config{maximum:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", block:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, ", queue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p0, Lorg/mortbay/servlet/ThrottlingFilter;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public rejectRequest(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Too many active connections to resource "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1f7

    invoke-interface {p2, p1, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void
.end method
