.class public final Lsun/awt/AppContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/AppContext$CreateThreadAction;,
        Lsun/awt/AppContext$PostShutdownEventRunnable;,
        Lsun/awt/AppContext$State;,
        Lsun/awt/AppContext$GetAppContextLock;
    }
.end annotation


# static fields
.field public static final DISPOSED_PROPERTY_NAME:Ljava/lang/String; = "disposed"

.field public static final EVENT_QUEUE_COND_KEY:Ljava/lang/Object;

.field public static final EVENT_QUEUE_KEY:Ljava/lang/Object;

.field public static final EVENT_QUEUE_LOCK_KEY:Ljava/lang/Object;

.field public static final GUI_DISPOSED:Ljava/lang/String; = "guidisposed"

.field private static final getAppContextLock:Ljava/lang/Object;

.field private static volatile mainAppContext:Lsun/awt/AppContext;

.field private static final numAppContexts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final threadAppContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/awt/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadGroup2appContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ThreadGroup;",
            "Lsun/awt/AppContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DISPOSAL_TIMEOUT:J

.field private THREAD_INTERRUPT_TIMEOUT:J

.field private changeSupport:Ljava/beans/PropertyChangeSupport;

.field private final contextClassLoader:Ljava/lang/ClassLoader;

.field private mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

.field private shadowMostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

.field private volatile state:Lsun/awt/AppContext$State;

.field private final table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final threadGroup:Ljava/lang/ThreadGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "EventQueue"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/awt/AppContext;->EVENT_QUEUE_KEY:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventQueue.Lock"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/awt/AppContext;->EVENT_QUEUE_LOCK_KEY:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventQueue.Condition"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/awt/AppContext;->EVENT_QUEUE_COND_KEY:Ljava/lang/Object;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsun/awt/AppContext;->threadGroup2appContext:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lsun/awt/AppContext;->mainAppContext:Lsun/awt/AppContext;

    new-instance v1, Lsun/awt/AppContext$GetAppContextLock;

    invoke-direct {v1, v0}, Lsun/awt/AppContext$GetAppContextLock;-><init>(Lsun/awt/AppContext$1;)V

    sput-object v1, Lsun/awt/AppContext;->getAppContextLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lsun/awt/AppContext;->numAppContexts:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/awt/AppContext;->threadAppContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    sget-object v1, Lsun/awt/AppContext$State;->VALID:Lsun/awt/AppContext$State;

    iput-object v1, p0, Lsun/awt/AppContext;->state:Lsun/awt/AppContext$State;

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lsun/awt/AppContext;->DISPOSAL_TIMEOUT:J

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lsun/awt/AppContext;->THREAD_INTERRUPT_TIMEOUT:J

    iput-object v0, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    iput-object v0, p0, Lsun/awt/AppContext;->shadowMostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    sget-object v0, Lsun/awt/AppContext;->numAppContexts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-object p1, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    sget-object v0, Lsun/awt/AppContext;->threadGroup2appContext:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lsun/awt/AppContext$1;

    invoke-direct {p1, p0}, Lsun/awt/AppContext$1;-><init>(Lsun/awt/AppContext;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    iput-object p1, p0, Lsun/awt/AppContext;->contextClassLoader:Ljava/lang/ClassLoader;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sget-object v0, Lsun/awt/AppContext;->EVENT_QUEUE_LOCK_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    sget-object v0, Lsun/awt/AppContext;->EVENT_QUEUE_COND_KEY:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$102(Lsun/awt/AppContext;)Lsun/awt/AppContext;
    .locals 0

    sput-object p0, Lsun/awt/AppContext;->mainAppContext:Lsun/awt/AppContext;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lsun/awt/AppContext;->getAppContextLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lsun/awt/AppContext;->numAppContexts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static synthetic access$400()V
    .locals 0

    invoke-static {}, Lsun/awt/AppContext;->initMainAppContext()V

    return-void
.end method

.method public static synthetic access$500()Ljava/util/Map;
    .locals 1

    sget-object v0, Lsun/awt/AppContext;->threadGroup2appContext:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lsun/awt/AppContext;->threadAppContext:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static final getAppContext()Lsun/awt/AppContext;
    .locals 2

    sget-object v0, Lsun/awt/AppContext;->numAppContexts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lsun/awt/AppContext;->mainAppContext:Lsun/awt/AppContext;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/awt/AppContext;->mainAppContext:Lsun/awt/AppContext;

    return-object v0

    :cond_0
    sget-object v0, Lsun/awt/AppContext;->threadAppContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/awt/AppContext;

    if-nez v0, :cond_1

    new-instance v0, Lsun/awt/AppContext$3;

    invoke-direct {v0}, Lsun/awt/AppContext$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/awt/AppContext;

    :cond_1
    return-object v0
.end method

.method public static getAppContexts()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lsun/awt/AppContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsun/awt/AppContext;->threadGroup2appContext:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final getExecutionAppContext()Lsun/awt/AppContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSoftReferenceValue(Ljava/lang/Object;Ljava/backport/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/backport/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/backport/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private static final initMainAppContext()V
    .locals 1

    new-instance v0, Lsun/awt/AppContext$2;

    invoke-direct {v0}, Lsun/awt/AppContext$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static final isMainContext(Lsun/awt/AppContext;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lsun/awt/AppContext;->mainAppContext:Lsun/awt/AppContext;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stopEventDispatchThreads()V
    .locals 4

    invoke-static {}, Lsun/awt/AppContext;->getAppContexts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/awt/AppContext;

    invoke-virtual {v1}, Lsun/awt/AppContext;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lsun/awt/AppContext$PostShutdownEventRunnable;

    invoke-direct {v2, v1}, Lsun/awt/AppContext$PostShutdownEventRunnable;-><init>(Lsun/awt/AppContext;)V

    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v3

    if-eq v1, v3, :cond_1

    new-instance v3, Lsun/awt/AppContext$CreateThreadAction;

    invoke-direct {v3, v1, v2}, Lsun/awt/AppContext$CreateThreadAction;-><init>(Lsun/awt/AppContext;Ljava/lang/Runnable;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_1

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    :cond_1
    iget-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dispose()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadGroup;->parentOf(Ljava/lang/ThreadGroup;)Z

    move-result v0

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/awt/AppContext;->state:Lsun/awt/AppContext$State;

    sget-object v1, Lsun/awt/AppContext$State;->VALID:Lsun/awt/AppContext$State;

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    sget-object v0, Lsun/awt/AppContext$State;->BEING_DISPOSED:Lsun/awt/AppContext$State;

    iput-object v0, p0, Lsun/awt/AppContext;->state:Lsun/awt/AppContext$State;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "disposed"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    :cond_1
    monitor-enter p0

    :try_start_1
    sget-object v0, Lsun/awt/AppContext$State;->DISPOSED:Lsun/awt/AppContext$State;

    iput-object v0, p0, Lsun/awt/AppContext;->state:Lsun/awt/AppContext$State;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lsun/awt/AppContext;->THREAD_INTERRUPT_TIMEOUT:J

    add-long/2addr v2, v4

    :catch_0
    :goto_0
    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    const-wide/16 v4, 0xa

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->stop()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lsun/awt/AppContext;->THREAD_INTERRUPT_TIMEOUT:J

    add-long/2addr v2, v6

    :catch_1
    :goto_1
    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v0

    if-lez v0, :cond_4

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iget-object v2, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    sget-object v3, Lsun/awt/AppContext;->threadGroup2appContext:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lsun/awt/AppContext;->threadGroup2appContext:Ljava/util/Map;

    iget-object v1, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/awt/AppContext;->threadAppContext:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_4
    iget-object v0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_4
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    iget-object v0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    iget-object v2, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v0, Lsun/awt/AppContext;->numAppContexts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iput-object v1, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    return-void

    :catchall_0
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Current Thread is contained within AppContext to be disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lsun/awt/MostRecentKeyValue;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    iget-object p0, v1, Lsun/awt/MostRecentKeyValue;->value:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object v1, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    if-nez v2, :cond_1

    new-instance v2, Lsun/awt/MostRecentKeyValue;

    invoke-direct {v2, p1, v1}, Lsun/awt/MostRecentKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    new-instance v2, Lsun/awt/MostRecentKeyValue;

    invoke-direct {v2, p1, v1}, Lsun/awt/MostRecentKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/awt/AppContext;->shadowMostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lsun/awt/AppContext;->shadowMostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    invoke-virtual {v3, p1, v1}, Lsun/awt/MostRecentKeyValue;->setPair(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lsun/awt/AppContext;->shadowMostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    iput-object p1, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    iput-object v2, p0, Lsun/awt/AppContext;->shadowMostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lsun/awt/AppContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public declared-synchronized getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/beans/PropertyChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 0

    iget-object p0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    return-object p0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object p0, p0, Lsun/awt/AppContext;->state:Lsun/awt/AppContext$State;

    sget-object v0, Lsun/awt/AppContext$State;->DISPOSED:Lsun/awt/AppContext$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lsun/awt/MostRecentKeyValue;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    iput-object p2, v1, Lsun/awt/MostRecentKeyValue;->value:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lsun/awt/AppContext;->mostRecentKeyValue:Lsun/awt/MostRecentKeyValue;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lsun/awt/MostRecentKeyValue;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lsun/awt/MostRecentKeyValue;->value:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lsun/awt/AppContext;->table:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lsun/awt/AppContext;->changeSupport:Ljava/beans/PropertyChangeSupport;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lsun/awt/AppContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[threadGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/awt/AppContext;->threadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
