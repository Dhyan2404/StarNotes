.class public Lcom/sun/imageio/stream/StreamCloser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/stream/StreamCloser$CloseAction;
    }
.end annotation


# static fields
.field private static streamCloser:Ljava/lang/Thread;

.field private static toCloseQueue:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/sun/imageio/stream/StreamCloser$CloseAction;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/sun/imageio/stream/StreamCloser;->lambda$addToQueue$0(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Lcom/sun/imageio/stream/StreamCloser;->toCloseQueue:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method public static addToQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V
    .locals 3

    const-class v0, Lcom/sun/imageio/stream/StreamCloser;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/stream/StreamCloser;->toCloseQueue:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/sun/imageio/stream/StreamCloser;->toCloseQueue:Ljava/util/WeakHashMap;

    :cond_0
    sget-object v1, Lcom/sun/imageio/stream/StreamCloser;->toCloseQueue:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sun/imageio/stream/StreamCloser;->streamCloser:Ljava/lang/Thread;

    if-nez p0, :cond_1

    new-instance p0, Lcom/sun/imageio/stream/StreamCloser$1;

    invoke-direct {p0}, Lcom/sun/imageio/stream/StreamCloser$1;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/b0n;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b0n;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createCloseAction(Ljavax/imageio/stream/ImageInputStream;)Lcom/sun/imageio/stream/StreamCloser$CloseAction;
    .locals 2

    new-instance v0, Lcom/sun/imageio/stream/StreamCloser$CloseAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/imageio/stream/StreamCloser$CloseAction;-><init>(Ljavax/imageio/stream/ImageInputStream;Lcom/sun/imageio/stream/StreamCloser$1;)V

    return-object v0
.end method

.method private static synthetic lambda$addToQueue$0(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lsun/awt/util/ThreadGroupUtils;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    new-instance v6, Ljava/lang/Thread;

    const-string v3, "StreamCloser"

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    sput-object v6, Lcom/sun/imageio/stream/StreamCloser;->streamCloser:Ljava/lang/Thread;

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sget-object v1, Lcom/sun/imageio/stream/StreamCloser;->streamCloser:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-object p0
.end method

.method public static removeFromQueue(Lcom/sun/imageio/stream/StreamCloser$CloseAction;)V
    .locals 2

    const-class v0, Lcom/sun/imageio/stream/StreamCloser;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/stream/StreamCloser;->toCloseQueue:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
