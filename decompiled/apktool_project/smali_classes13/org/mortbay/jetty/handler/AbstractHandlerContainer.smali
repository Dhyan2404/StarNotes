.class public abstract Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/HandlerContainer;


# static fields
.field public static synthetic e:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {p2, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    instance-of p0, p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;

    if-eqz p0, :cond_3

    check-cast p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;

    invoke-virtual {p1, p2, p3}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    instance-of p0, p1, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz p0, :cond_5

    check-cast p1, Lorg/mortbay/jetty/HandlerContainer;

    if-nez p3, :cond_4

    invoke-interface {p1}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-interface {p1, p3}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object p0

    :goto_0
    invoke-static {p2, p0}, Lorg/mortbay/util/LazyList;->addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_5
    :goto_1
    return-object p2
.end method

.method public getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mortbay/jetty/Handler;

    return-object p0
.end method

.method public getChildHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.Handler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->e:Ljava/lang/Class;

    :cond_0
    invoke-static {p0, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/mortbay/jetty/Handler;

    check-cast p0, [Lorg/mortbay/jetty/Handler;

    return-object p0
.end method

.method public getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->e:Ljava/lang/Class;

    if-nez p1, :cond_0

    const-string p1, "org.mortbay.jetty.Handler"

    invoke-static {p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->e:Ljava/lang/Class;

    :cond_0
    invoke-static {p0, p1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/mortbay/jetty/Handler;

    check-cast p0, [Lorg/mortbay/jetty/Handler;

    return-object p0
.end method
