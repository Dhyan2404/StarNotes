.class public Lorg/apache/logging/log4j/spi/LoggerRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/spi/LoggerRegistry$WeakMapFactory;,
        Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;,
        Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/logging/log4j/spi/ExtendedLogger;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/spi/AbstractLogger;->DEFAULT_MESSAGE_FACTORY_CLASS:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry$ConcurrentMapFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;-><init>(Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "factory"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    iput-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->a:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    .line 4
    invoke-interface {p1}, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;->createOuterMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messageFactory"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "factoryName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->a:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    invoke-interface {v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;->createInnerMap()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/ExtendedLogger;

    return-object p0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Lorg/apache/logging/log4j/spi/ExtendedLogger;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/logging/log4j/spi/ExtendedLogger;

    return-object p0
.end method

.method public getLoggers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->getLoggers(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getLoggers(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "destination"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public hasLogger(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasLogger(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactoryClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            ">;)Z"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasLogger(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public putIfAbsent(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "messageFactory",
            "logger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/message/MessageFactory;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/spi/LoggerRegistry;->a:Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;

    invoke-static {p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->b(Lorg/apache/logging/log4j/message/MessageFactory;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/spi/LoggerRegistry;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0, p1, p3}, Lorg/apache/logging/log4j/spi/LoggerRegistry$MapFactory;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lorg/apache/logging/log4j/spi/ExtendedLogger;)V

    return-void
.end method
