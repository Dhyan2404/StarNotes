.class public Lorg/mortbay/jetty/servlet/FilterHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/FilterConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/FilterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lorg/mortbay/jetty/servlet/FilterHolder;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/FilterHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterHolder$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object p0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/FilterHolder$a;->a:Lorg/mortbay/jetty/servlet/FilterHolder;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p0

    return-object p0
.end method
