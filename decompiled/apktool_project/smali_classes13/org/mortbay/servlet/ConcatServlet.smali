.class public Lorg/mortbay/servlet/ConcatServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "SourceFile"


# instance fields
.field _context:Ljavax/servlet/ServletContext;

.field _development:Z

.field _lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, 0xcc

    invoke-interface {p2, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    :cond_0
    const-string v1, "\\&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Ljavax/servlet/ServletContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 p0, 0x19f

    invoke-interface {p2, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {p2, v2}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    :cond_4
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2, p1, p2}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public getLastModified(Ljavax/servlet/http/HttpServletRequest;)J
    .locals 0

    iget-boolean p1, p0, Lorg/mortbay/servlet/ConcatServlet;->_development:Z

    if-eqz p1, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lorg/mortbay/servlet/ConcatServlet;->_lastModified:J

    :goto_0
    return-wide p0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_lastModified:J

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    const-string v0, "development"

    invoke-virtual {p0, v0}, Ljavax/servlet/GenericServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_development:Z

    return-void
.end method
