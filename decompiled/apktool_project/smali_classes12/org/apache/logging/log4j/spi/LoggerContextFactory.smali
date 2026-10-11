.class public interface abstract Lorg/apache/logging/log4j/spi/LoggerContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext"
        }
    .end annotation
.end method

.method public abstract getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "externalContext",
            "currentContext",
            "configLocation",
            "name"
        }
    .end annotation
.end method

.method public hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "currentContext"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isClassLoaderDependent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract removeContext(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public shutdown(Ljava/lang/String;Ljava/lang/ClassLoader;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fqcn",
            "loader",
            "currentContext",
            "allContexts"
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->hasContext(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    invoke-interface {p0, p1, p2, p4, p3}, Lorg/apache/logging/log4j/spi/LoggerContextFactory;->getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/logging/log4j/spi/Terminable;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/logging/log4j/spi/Terminable;

    invoke-interface {p0}, Lorg/apache/logging/log4j/spi/Terminable;->terminate()V

    :cond_0
    return-void
.end method
