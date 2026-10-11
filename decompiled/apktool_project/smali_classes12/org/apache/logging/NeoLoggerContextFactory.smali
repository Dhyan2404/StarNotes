.class public Lorg/apache/logging/NeoLoggerContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/spi/LoggerContextFactory;


# static fields
.field public static a:Lorg/apache/logging/log4j/spi/LoggerContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/logging/NeoLoggerContext;

    invoke-direct {v0}, Lorg/apache/logging/NeoLoggerContext;-><init>()V

    sput-object v0, Lorg/apache/logging/NeoLoggerContextFactory;->a:Lorg/apache/logging/log4j/spi/LoggerContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/logging/NeoLoggerContextFactory;->a:Lorg/apache/logging/log4j/spi/LoggerContext;

    return-object p0
.end method

.method public getContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLjava/net/URI;Ljava/lang/String;)Lorg/apache/logging/log4j/spi/LoggerContext;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/logging/NeoLoggerContextFactory;->a:Lorg/apache/logging/log4j/spi/LoggerContext;

    return-object p0
.end method

.method public isClassLoaderDependent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeContext(Lorg/apache/logging/log4j/spi/LoggerContext;)V
    .locals 0

    return-void
.end method
