.class Lsun/font/CreatedFontTracker$TempFileDeletionHook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/CreatedFontTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempFileDeletionHook"
.end annotation


# static fields
.field private static files:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->lambda$init$0()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized add(Ljava/io/File;)V
    .locals 3

    const-class v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->init()V

    sget-object v1, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static init()V
    .locals 1

    sget-object v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/b;

    invoke-direct {v0}, Lsun/font/b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$init$0()Ljava/lang/Void;
    .locals 7

    invoke-static {}, Lsun/awt/util/ThreadGroupUtils;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    new-instance v6, Ljava/lang/Thread;

    new-instance v2, Lsun/font/a;

    invoke-direct {v2}, Lsun/font/a;-><init>()V

    const-string v3, "TempFontFileDeleter"

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    sput-object v6, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->t:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-object v0
.end method

.method public static declared-synchronized remove(Ljava/io/File;)V
    .locals 2

    const-class v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized runHooks()V
    .locals 4

    const-class v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized set(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 2

    const-class v0, Lsun/font/CreatedFontTracker$TempFileDeletionHook;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->files:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
