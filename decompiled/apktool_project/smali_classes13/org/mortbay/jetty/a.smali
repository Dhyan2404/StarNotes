.class public Lorg/mortbay/jetty/a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lorg/mortbay/jetty/AbstractBuffers;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/AbstractBuffers;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/a;->a:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;

    iget-object v1, p0, Lorg/mortbay/jetty/a;->a:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v1}, Lorg/mortbay/jetty/AbstractBuffers;->f(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lorg/mortbay/jetty/a;->a:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v2}, Lorg/mortbay/jetty/AbstractBuffers;->f(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/mortbay/jetty/a;->a:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {v3}, Lorg/mortbay/jetty/AbstractBuffers;->f(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object p0, p0, Lorg/mortbay/jetty/a;->a:Lorg/mortbay/jetty/AbstractBuffers;

    invoke-static {p0}, Lorg/mortbay/jetty/AbstractBuffers;->f(Lorg/mortbay/jetty/AbstractBuffers;)[I

    move-result-object p0

    const/4 v4, 0x3

    aget p0, p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;-><init>(IIII)V

    return-object v0
.end method
