.class public Lsun/font/CreatedFontTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/CreatedFontTracker$TempFileDeletionHook;
    }
.end annotation


# static fields
.field public static final MAX_FILE_SIZE:I = 0x2000000

.field public static final MAX_TOTAL_BYTES:I = 0x14000000

.field static tracker:Lsun/font/CreatedFontTracker;


# instance fields
.field numBytes:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/CreatedFontTracker;->numBytes:I

    return-void
.end method

.method private static declared-synchronized getCS()Ljava/util/concurrent/Semaphore;
    .locals 5

    const-class v0, Lsun/font/CreatedFontTracker;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lsun/awt/AppContext;->getAppContext()Lsun/awt/AppContext;

    move-result-object v1

    const-class v2, Lsun/font/CreatedFontTracker;

    invoke-virtual {v1, v2}, Lsun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    const-class v3, Lsun/font/CreatedFontTracker;

    invoke-virtual {v1, v3, v2}, Lsun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTracker()Lsun/font/CreatedFontTracker;
    .locals 2

    const-class v0, Lsun/font/CreatedFontTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/CreatedFontTracker;->tracker:Lsun/font/CreatedFontTracker;

    if-nez v1, :cond_0

    new-instance v1, Lsun/font/CreatedFontTracker;

    invoke-direct {v1}, Lsun/font/CreatedFontTracker;-><init>()V

    sput-object v1, Lsun/font/CreatedFontTracker;->tracker:Lsun/font/CreatedFontTracker;

    :cond_0
    sget-object v1, Lsun/font/CreatedFontTracker;->tracker:Lsun/font/CreatedFontTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquirePermit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lsun/font/CreatedFontTracker;->getCS()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/io/File;)V
    .locals 0

    invoke-static {p1}, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->add(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized addBytes(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/font/CreatedFontTracker;->numBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/font/CreatedFontTracker;->numBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNumBytes()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/font/CreatedFontTracker;->numBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releasePermit()V
    .locals 0

    invoke-static {}, Lsun/font/CreatedFontTracker;->getCS()Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public remove(Ljava/io/File;)V
    .locals 0

    invoke-static {p1}, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->remove(Ljava/io/File;)V

    return-void
.end method

.method public set(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p1, p2}, Lsun/font/CreatedFontTracker$TempFileDeletionHook;->set(Ljava/io/File;Ljava/io/OutputStream;)V

    return-void
.end method

.method public declared-synchronized subBytes(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/font/CreatedFontTracker;->numBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lsun/font/CreatedFontTracker;->numBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
