.class public Lorg/mortbay/jetty/handler/MovedContextHandler$a;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/handler/MovedContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/handler/MovedContextHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/handler/MovedContextHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$a;->e:Lorg/mortbay/jetty/handler/MovedContextHandler;

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/handler/MovedContextHandler$a;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    iget-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$a;->e:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-object p1, p1, Lorg/mortbay/jetty/handler/MovedContextHandler;->v0:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p1, p2, Lorg/mortbay/jetty/Request;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p1

    :goto_0
    iget-object p4, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$a;->e:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-object v0, p4, Lorg/mortbay/jetty/handler/MovedContextHandler;->v0:Ljava/lang/String;

    iget-boolean p4, p4, Lorg/mortbay/jetty/handler/MovedContextHandler;->w0:Z

    if-nez p4, :cond_2

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object p4, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$a;->e:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean p4, p4, Lorg/mortbay/jetty/handler/MovedContextHandler;->x0:Z

    if-nez p4, :cond_3

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "?"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$a;->e:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->y0:Z

    if-eqz p0, :cond_4

    const/16 p0, 0x12d

    invoke-interface {p3, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    :cond_4
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    return-void
.end method
