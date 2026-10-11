.class public abstract Lorg/mortbay/component/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/component/LifeCycle;


# static fields
.field static synthetic class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;


# instance fields
.field private final FAILED:I

.field private final STARTED:I

.field private final STARTING:I

.field private final STOPPED:I

.field private final STOPPING:I

.field protected _listeners:[Lorg/mortbay/component/LifeCycle$Listener;

.field private _lock:Ljava/lang/Object;

.field private volatile _state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->FAILED:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->STOPPED:I

    const/4 v1, 0x1

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->STARTING:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->STARTED:I

    const/4 v1, 0x3

    iput v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->STOPPING:I

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

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
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1, p0, p1}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleFailure(Lorg/mortbay/component/LifeCycle;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addLifeCycleListener(Lorg/mortbay/component/LifeCycle$Listener;)V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    sget-object v1, Lorg/mortbay/component/AbstractLifeCycle;->class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.component.LifeCycle$Listener"

    invoke-static {v1}, Lorg/mortbay/component/AbstractLifeCycle;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/component/AbstractLifeCycle;->class$org$mortbay$component$LifeCycle$Listener:Ljava/lang/Class;

    :cond_0
    invoke-static {v0, p1, v1}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/component/LifeCycle$Listener;

    check-cast p1, [Lorg/mortbay/component/LifeCycle$Listener;

    iput-object p1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStarted(Lorg/mortbay/component/LifeCycle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStarting(Lorg/mortbay/component/LifeCycle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStopped(Lorg/mortbay/component/LifeCycle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-interface {v1, p0}, Lorg/mortbay/component/LifeCycle$Listener;->lifeCycleStopping(Lorg/mortbay/component/LifeCycle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isFailed()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 3

    iget v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isStarted()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStarting()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 0

    iget p0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStopping()Z
    .locals 1

    iget p0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeLifeCycleListener(Lorg/mortbay/component/LifeCycle$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mortbay/component/LifeCycle$Listener;

    check-cast p1, [Lorg/mortbay/component/LifeCycle$Listener;

    iput-object p1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_listeners:[Lorg/mortbay/component/LifeCycle$Listener;

    return-void
.end method

.method public final start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->c()V

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    const-string v1, "started {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/mortbay/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/mortbay/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/component/AbstractLifeCycle;->_lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/mortbay/component/AbstractLifeCycle;->_state:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->e()V

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStop()V

    const-string v1, "stopped {}"

    invoke-static {v1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/mortbay/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Lorg/mortbay/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
