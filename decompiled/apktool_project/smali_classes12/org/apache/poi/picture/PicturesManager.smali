.class public abstract Lorg/apache/poi/picture/PicturesManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IMAGE:",
        "Ljava/awt/Image;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field protected final LOG:Lorg/apache/logging/log4j/Logger;

.field private async:Z

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final futureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final identifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private final picturesCache:Lorg/apache/poi/picture/PicturesCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/picture/PicturesCache<",
            "TIMAGE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/picture/PicturesCache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/picture/PicturesCache<",
            "TIMAGE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/picture/PicturesManager;-><init>(Lorg/apache/poi/picture/PicturesCache;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/picture/PicturesCache;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/picture/PicturesCache<",
            "TIMAGE;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->LOG:Lorg/apache/logging/log4j/Logger;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->futureMap:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    .line 7
    iput-boolean p2, p0, Lorg/apache/poi/picture/PicturesManager;->async:Z

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/picture/PicturesManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-direct {p0}, Lorg/apache/poi/picture/PicturesManager;->initExecutor()V

    return-void
.end method

.method private createTask(Lorg/apache/poi/wp/usermodel/IPicture;Ljava/lang/String;)Lorg/apache/poi/picture/PictureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/wp/usermodel/IPicture;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/picture/PictureTask<",
            "TIMAGE;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/picture/PictureTask;

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-direct {v0, p1, p0, p2}, Lorg/apache/poi/picture/PictureTask;-><init>(Lorg/apache/poi/wp/usermodel/IPicture;Lorg/apache/poi/picture/PicturesCache;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic f(Lorg/apache/poi/picture/PicturesManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/picture/PicturesManager;->lambda$finished$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initExecutor()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/picture/PicturesManager;->async:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private synthetic lambda$finished$0(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lorg/apache/poi/picture/PicturesManager;->shutdownExecutor()V

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private shutdownExecutor()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private waitPictureCacheFinished(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/picture/PicturesManager;->async:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->futureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-static {p0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public existCache(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-virtual {p0, p1}, Lorg/apache/poi/picture/PicturesCache;->existCache(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public finished(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/picture/PicturesManager;->async:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sunia/HTREnginev2/b4l;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/b4l;-><init>(Lorg/apache/poi/picture/PicturesManager;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :goto_0
    return-void
.end method

.method public getImageSize(Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/picture/PicturesManager;->waitPictureCacheFinished(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-virtual {p0, p1}, Lorg/apache/poi/picture/PicturesCache;->getImageSize(Ljava/lang/String;)Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public getPicturesCache()Lorg/apache/poi/picture/PicturesCache;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/picture/PicturesCache<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    return-object p0
.end method

.method public getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/picture/PicturesManager;->waitPictureCacheFinished(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-virtual {p0, p1}, Lorg/apache/poi/picture/PicturesCache;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public processPicture(Lorg/apache/poi/wp/usermodel/IPicture;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/picture/PicturesManager;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/wp/usermodel/IPicture;->identifier()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    iget v1, p0, Lorg/apache/poi/picture/PicturesManager;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/picture/PicturesManager;->index:I

    iget-object v1, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-interface {p1}, Lorg/apache/poi/wp/usermodel/IPicture;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/poi/picture/PicturesManager;->index:I

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/picture/PicturesCache;->getFilename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/picture/PicturesManager;->existCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/poi/picture/PicturesManager;->picturesCache:Lorg/apache/poi/picture/PicturesCache;

    invoke-interface {p1, v2}, Lorg/apache/poi/wp/usermodel/IPicture;->getAnchor(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/geom/Rectangle2D;

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    invoke-direct {p0, p1, v1}, Lorg/apache/poi/picture/PicturesManager;->createTask(Lorg/apache/poi/wp/usermodel/IPicture;Ljava/lang/String;)Lorg/apache/poi/picture/PictureTask;

    move-result-object p1

    iget-boolean v2, p0, Lorg/apache/poi/picture/PicturesManager;->async:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/poi/picture/PicturesManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->futureMap:Ljava/util/Map;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/picture/PictureTask;->run()V

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesManager;->identifiers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v1
.end method
