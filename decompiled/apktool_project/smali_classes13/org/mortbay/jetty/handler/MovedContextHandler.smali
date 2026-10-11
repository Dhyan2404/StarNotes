.class public Lorg/mortbay/jetty/handler/MovedContextHandler;
.super Lorg/mortbay/jetty/handler/ContextHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/handler/MovedContextHandler$a;
    }
.end annotation


# instance fields
.field public v0:Ljava/lang/String;

.field public w0:Z

.field public x0:Z

.field public y0:Z

.field public z0:Lorg/mortbay/jetty/handler/MovedContextHandler$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 2
    new-instance v0, Lorg/mortbay/jetty/handler/MovedContextHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mortbay/jetty/handler/MovedContextHandler$a;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/a;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->z0:Lorg/mortbay/jetty/handler/MovedContextHandler$a;

    .line 3
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->addHandler(Lorg/mortbay/jetty/Handler;)V

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>(Lorg/mortbay/jetty/HandlerContainer;Ljava/lang/String;)V

    .line 5
    iput-object p3, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->v0:Ljava/lang/String;

    .line 6
    new-instance p1, Lorg/mortbay/jetty/handler/MovedContextHandler$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/mortbay/jetty/handler/MovedContextHandler$a;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/a;)V

    iput-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->z0:Lorg/mortbay/jetty/handler/MovedContextHandler$a;

    .line 7
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/handler/HandlerWrapper;->addHandler(Lorg/mortbay/jetty/Handler;)V

    return-void
.end method


# virtual methods
.method public getNewContextURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->v0:Ljava/lang/String;

    return-object p0
.end method

.method public isDiscardPathInfo()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->w0:Z

    return p0
.end method

.method public isDiscardQuery()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->x0:Z

    return p0
.end method

.method public isPermanent()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->y0:Z

    return p0
.end method

.method public setDiscardPathInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->w0:Z

    return-void
.end method

.method public setDiscardQuery(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->x0:Z

    return-void
.end method

.method public setNewContextURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->v0:Ljava/lang/String;

    return-void
.end method

.method public setPermanent(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler;->y0:Z

    return-void
.end method
