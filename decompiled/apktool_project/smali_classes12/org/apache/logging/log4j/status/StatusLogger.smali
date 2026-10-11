.class public final Lorg/apache/logging/log4j/status/StatusLogger;
.super Lorg/apache/logging/log4j/spi/AbstractLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_STATUS_LEVEL:Ljava/lang/String;

.field public static final DEFAULT_STATUS_LISTENER_LEVEL:Ljava/lang/String; = "log4j2.StatusLogger.level"

.field private static final MAX_ENTRIES:I

.field public static final MAX_STATUS_ENTRIES:Ljava/lang/String; = "log4j2.status.entries"

.field private static final NOT_AVAIL:Ljava/lang/String; = "?"

.field private static final PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

.field public static final STATUS_DATE_FORMAT:Ljava/lang/String; = "log4j2.StatusLogger.DateFormat"

.field private static final STATUS_LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/logging/log4j/status/StatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private listenersLevel:I

.field private final listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

.field private final messages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/logging/log4j/status/StatusData;",
            ">;"
        }
    .end annotation
.end field

.field private final msgLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.StatusLogger.properties"

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string v1, "log4j2.status.entries"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/apache/logging/log4j/status/StatusLogger;->MAX_ENTRIES:I

    const-string v1, "log4j2.StatusLogger.level"

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->DEFAULT_STATUS_LEVEL:Ljava/lang/String;

    new-instance v0, Lorg/apache/logging/log4j/status/StatusLogger;

    const-class v1, Lorg/apache/logging/log4j/status/StatusLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;->INSTANCE:Lorg/apache/logging/log4j/message/ParameterizedNoReferenceMessageFactory;

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/status/StatusLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    sput-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->STATUS_LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V
    .locals 11
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

    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance p1, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;

    sget v0, Lorg/apache/logging/log4j/status/StatusLogger;->MAX_ENTRIES:I

    invoke-direct {p1, p0, v0}, Lorg/apache/logging/log4j/status/StatusLogger$BoundedQueue;-><init>(Lorg/apache/logging/log4j/status/StatusLogger;I)V

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    sget-object v9, Lorg/apache/logging/log4j/status/StatusLogger;->PROPS:Lorg/apache/logging/log4j/util/PropertiesUtil;

    const-string p1, "log4j2.StatusLogger.DateFormat"

    const-string v0, ""

    invoke-virtual {v9, p1, v0}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/logging/log4j/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    new-instance p1, Lorg/apache/logging/log4j/simple/SimpleLogger;

    const-string v1, "StatusLogger"

    sget-object v2, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lorg/apache/logging/log4j/simple/SimpleLogger;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/Level;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;Lorg/apache/logging/log4j/util/PropertiesUtil;Ljava/io/PrintStream;)V

    iput-object p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    sget-object p2, Lorg/apache/logging/log4j/status/StatusLogger;->DEFAULT_STATUS_LEVEL:Ljava/lang/String;

    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-static {p2, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p2

    iput p2, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    invoke-direct {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->isDebugPropertyEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    invoke-virtual {p1, p0}, Lorg/apache/logging/log4j/simple/SimpleLogger;->setLevel(Lorg/apache/logging/log4j/Level;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lorg/apache/logging/log4j/status/StatusLogger;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    return-object p0
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resource"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getLogger()Lorg/apache/logging/log4j/status/StatusLogger;
    .locals 1

    sget-object v0, Lorg/apache/logging/log4j/status/StatusLogger;->STATUS_LOGGER:Lorg/apache/logging/log4j/status/StatusLogger;

    return-object v0
.end method

.method private getStackTraceElement(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "stackTrace"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object p0
.end method

.method private isDebugPropertyEnabled()Z
    .locals 3

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "log4j2.debug"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getLevel()Lorg/apache/logging/log4j/Level;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    invoke-virtual {p0}, Lorg/apache/logging/log4j/simple/SimpleLogger;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object p0

    return-object p0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/logging/log4j/status/StatusListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    return-object p0
.end method

.method public getStatusData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/status/StatusData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "marker"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->isDebugPropertyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 19
    iget p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 20
    :cond_2
    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/spi/AbstractLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public varargs isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "params"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "message",
            "t"
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/apache/logging/log4j/status/StatusLogger;->isEnabled(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;)Z

    move-result p0

    return p0
.end method

.method public logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "fqcn",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/status/StatusLogger;->getStackTraceElement(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    new-instance v0, Lorg/apache/logging/log4j/status/StatusData;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/apache/logging/log4j/status/StatusData;-><init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->messages:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->isDebugPropertyEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/logging/log4j/status/StatusListener;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/status/StatusData;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/logging/log4j/status/StatusListener;->getStatusLevel()Lorg/apache/logging/log4j/Level;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/logging/log4j/Level;->isMoreSpecificThan(Lorg/apache/logging/log4j/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1, v0}, Lorg/apache/logging/log4j/status/StatusListener;->log(Lorg/apache/logging/log4j/status/StatusData;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/apache/logging/log4j/simple/SimpleLogger;->logMessage(Ljava/lang/String;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->msgLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public registerListener(Lorg/apache/logging/log4j/status/StatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/apache/logging/log4j/status/StatusListener;->getStatusLevel()Lorg/apache/logging/log4j/Level;

    move-result-object p1

    iget v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    iput p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public removeListener(Lorg/apache/logging/log4j/status/StatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/logging/log4j/status/StatusLogger;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lorg/apache/logging/log4j/status/StatusLogger;->DEFAULT_STATUS_LEVEL:Ljava/lang/String;

    sget-object v0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/Level;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/status/StatusListener;

    invoke-interface {v1}, Lorg/apache/logging/log4j/status/StatusListener;->getStatusLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v1

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/status/StatusListener;

    invoke-static {v1}, Lorg/apache/logging/log4j/status/StatusLogger;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lorg/apache/logging/log4j/status/StatusLogger;->clear()V

    throw v0
.end method

.method public setLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/logging/log4j/status/StatusLogger;->logger:Lorg/apache/logging/log4j/simple/SimpleLogger;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/simple/SimpleLogger;->setLevel(Lorg/apache/logging/log4j/Level;)V

    return-void
.end method

.method public updateListenerLevel(Lorg/apache/logging/log4j/Level;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "status"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result p1

    iput p1, p0, Lorg/apache/logging/log4j/status/StatusLogger;->listenersLevel:I

    :cond_0
    return-void
.end method
