.class public Lorg/mortbay/jetty/servlet/ServletHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/FilterChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/mortbay/jetty/servlet/FilterHolder;

.field public b:Lorg/mortbay/jetty/servlet/ServletHandler$a;

.field public c:Lorg/mortbay/jetty/servlet/ServletHolder;

.field public final synthetic d:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 2

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->d:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/FilterHolder;

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-static {p2, v0}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHandler$a;

    invoke-direct {v0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ServletHandler$a;-><init>(Lorg/mortbay/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/mortbay/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->b:Lorg/mortbay/jetty/servlet/ServletHandler$a;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->c:Lorg/mortbay/jetty/servlet/ServletHolder;

    :goto_0
    return-void
.end method


# virtual methods
.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "call filter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getFilter()Ljavax/servlet/Filter;

    move-result-object v0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->b:Lorg/mortbay/jetty/servlet/ServletHandler$a;

    invoke-interface {v0, p1, p2, p0}, Ljavax/servlet/Filter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->c:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "call servlet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->c:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->c:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->d:Lorg/mortbay/jetty/servlet/ServletHandler;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->b:Lorg/mortbay/jetty/servlet/ServletHandler$a;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler$a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$a;->c:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method
