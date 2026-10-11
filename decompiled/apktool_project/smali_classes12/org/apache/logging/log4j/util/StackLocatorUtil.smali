.class public final Lorg/apache/logging/log4j/util/StackLocatorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lorg/apache/logging/log4j/util/StackLocator;

.field public static volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/logging/log4j/util/StackLocator;->getInstance()Lorg/apache/logging/log4j/util/StackLocator;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fqcnOfLogger"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/StackLocator;->calcLocation(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lorg/apache/logging/log4j/util/StackLocatorUtil;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lorg/apache/logging/log4j/util/StackLocatorUtil;->b:Z

    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    const-string v2, "Unable to locate stack trace element for {}"

    invoke-virtual {v1, v2, p0, v0}, Lorg/apache/logging/log4j/spi/AbstractLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCallerClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getCallerClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "anchor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    .end annotation

    .line 5
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getCallerClass(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "sentinelClass",
            "callerPredicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getCallerClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fqcn"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    .end annotation

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/util/StackLocatorUtil;->getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "pkg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/StackLocator;->getCallerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentStackTrace()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/apache/logging/log4j/util/PerformanceSensitive;
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/StackLocator;->getCurrentStackTrace()Ljava/util/Stack;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceElement(I)Ljava/lang/StackTraceElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "depth"
        }
    .end annotation

    sget-object v0, Lorg/apache/logging/log4j/util/StackLocatorUtil;->a:Lorg/apache/logging/log4j/util/StackLocator;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lorg/apache/logging/log4j/util/StackLocator;->getStackTraceElement(I)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
