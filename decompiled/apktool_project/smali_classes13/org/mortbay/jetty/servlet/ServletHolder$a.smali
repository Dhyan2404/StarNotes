.class public Lorg/mortbay/jetty/servlet/ServletHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/servlet/ServletHolder;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$a;->e:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$a;->e:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$a;->e:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$a;->e:Lorg/mortbay/jetty/servlet/ServletHolder;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object p0

    return-object p0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$a;->e:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
