.class public Lsun/util/logging/NeoPlatformLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;,
        Lsun/util/logging/NeoPlatformLogger$Bridge;,
        Lsun/util/logging/NeoPlatformLogger$Level;
    }
.end annotation


# static fields
.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_OFF:I = 0x8

.field private static final loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lsun/util/logging/NeoPlatformLogger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final spi2platformLevelMapping:[Lsun/util/logging/NeoPlatformLogger$Level;


# instance fields
.field private final loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/logging/NeoPlatformLogger;->loggers:Ljava/util/Map;

    sget-object v1, Lsun/util/logging/NeoPlatformLogger$Level;->ALL:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v2, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v3, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v4, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v5, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v6, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v7, Lsun/util/logging/NeoPlatformLogger$Level;->ASSERT:Lsun/util/logging/NeoPlatformLogger$Level;

    sget-object v8, Lsun/util/logging/NeoPlatformLogger$Level;->OFF:Lsun/util/logging/NeoPlatformLogger$Level;

    filled-new-array/range {v1 .. v8}, [Lsun/util/logging/NeoPlatformLogger$Level;

    move-result-object v0

    sput-object v0, Lsun/util/logging/NeoPlatformLogger;->spi2platformLevelMapping:[Lsun/util/logging/NeoPlatformLogger$Level;

    return-void
.end method

.method private constructor <init>(Lsun/util/logging/NeoPlatformLogger$Bridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lsun/util/logging/NeoPlatformLogger;
    .locals 4

    const-class v0, Lsun/util/logging/NeoPlatformLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/util/logging/NeoPlatformLogger;->loggers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/logging/NeoPlatformLogger;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Lsun/util/logging/NeoPlatformLogger;

    new-instance v3, Lsun/util/logging/LoggerWrapper;

    invoke-direct {v3, p0}, Lsun/util/logging/LoggerWrapper;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lsun/util/logging/NeoPlatformLogger;-><init>(Lsun/util/logging/NeoPlatformLogger$Bridge;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static toPlatformLevel(I)Lsun/util/logging/NeoPlatformLogger$Level;
    .locals 5

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->ALL:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0

    :cond_0
    sget-object v0, Lsun/util/logging/NeoPlatformLogger;->spi2platformLevelMapping:[Lsun/util/logging/NeoPlatformLogger$Level;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lsun/util/logging/NeoPlatformLogger$Level;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lsun/util/logging/NeoPlatformLogger$Level;->OFF:Lsun/util/logging/NeoPlatformLogger$Level;

    return-object p0
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->CONFIG:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->CONFIG:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs config(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->CONFIG:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs fine(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs finer(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINER:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs finest(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->FINEST:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    invoke-interface {p0}, Lsun/util/logging/NeoPlatformLogger$Bridge;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->INFO:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    invoke-interface {p0}, Lsun/util/logging/NeoPlatformLogger$Bridge;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    invoke-interface {p0, p1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->isLoggable(Lsun/util/logging/NeoPlatformLogger$Level;)Z

    move-result p0

    return p0
.end method

.method public level()Lsun/util/logging/NeoPlatformLogger$Level;
    .locals 0

    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    invoke-static {p0}, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;->getLoggerConfiguration(Lsun/util/logging/NeoPlatformLogger$Bridge;)Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;->getPlatformLevel()Lsun/util/logging/NeoPlatformLogger$Level;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setLevel(Lsun/util/logging/NeoPlatformLogger$Level;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    invoke-static {p0}, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;->getLoggerConfiguration(Lsun/util/logging/NeoPlatformLogger$Bridge;)Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;->setPlatformLevel(Lsun/util/logging/NeoPlatformLogger$Level;)V

    :cond_0
    return-void
.end method

.method public severe(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->SEVERE:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lsun/util/logging/NeoPlatformLogger;->loggerProxy:Lsun/util/logging/NeoPlatformLogger$Bridge;

    sget-object v0, Lsun/util/logging/NeoPlatformLogger$Level;->WARNING:Lsun/util/logging/NeoPlatformLogger$Level;

    invoke-interface {p0, v0, p1, p2}, Lsun/util/logging/NeoPlatformLogger$Bridge;->log(Lsun/util/logging/NeoPlatformLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
