.class public abstract Lsun/awt/image/SurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/image/SurfaceManager$FlushableCacheData;,
        Lsun/awt/image/SurfaceManager$ProxiedGraphicsConfig;,
        Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;,
        Lsun/awt/image/SurfaceManager$ImageAccessor;
    }
.end annotation


# static fields
.field private static imgaccessor:Lsun/awt/image/SurfaceManager$ImageAccessor;


# instance fields
.field private cacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
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

.method public static getImageScale(Ljava/awt/Image;)I
    .locals 1

    instance-of v0, p0, Ljava/awt/image/VolatileImage;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lsun/awt/image/SurfaceManager;->getManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lsun/awt/image/SurfaceManager;->getPrimarySurfaceData()Lsun/java2d/SurfaceData;

    move-result-object p0

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getDefaultScale()I

    move-result p0

    return p0
.end method

.method public static getManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;
    .locals 1

    sget-object v0, Lsun/awt/image/SurfaceManager;->imgaccessor:Lsun/awt/image/SurfaceManager$ImageAccessor;

    invoke-virtual {v0, p0}, Lsun/awt/image/SurfaceManager$ImageAccessor;->getSurfaceManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    check-cast p0, Ljava/awt/image/BufferedImage;

    invoke-static {p0, v0}, Lsun/awt/image/SurfaceManager;->setManager(Ljava/awt/Image;Lsun/awt/image/SurfaceManager;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Image variant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static setImageAccessor(Lsun/awt/image/SurfaceManager$ImageAccessor;)V
    .locals 1

    sget-object v0, Lsun/awt/image/SurfaceManager;->imgaccessor:Lsun/awt/image/SurfaceManager$ImageAccessor;

    if-nez v0, :cond_0

    sput-object p0, Lsun/awt/image/SurfaceManager;->imgaccessor:Lsun/awt/image/SurfaceManager$ImageAccessor;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Attempt to set ImageAccessor twice"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setManager(Ljava/awt/Image;Lsun/awt/image/SurfaceManager;)V
    .locals 1

    sget-object v0, Lsun/awt/image/SurfaceManager;->imgaccessor:Lsun/awt/image/SurfaceManager$ImageAccessor;

    invoke-virtual {v0, p0, p1}, Lsun/awt/image/SurfaceManager$ImageAccessor;->setSurfaceManager(Ljava/awt/Image;Lsun/awt/image/SurfaceManager;)V

    return-void
.end method


# virtual methods
.method public acceleratedSurfaceLost()V
    .locals 0

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lsun/awt/image/SurfaceManager;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush(Z)V
    .locals 3

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lsun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v2, v1, Lsun/awt/image/SurfaceManager$FlushableCacheData;

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lsun/awt/image/SurfaceManager$FlushableCacheData;

    invoke-interface {v1, p1}, Lsun/awt/image/SurfaceManager$FlushableCacheData;->flush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCacheData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCapabilities(Ljava/awt/GraphicsConfiguration;)Ljava/awt/ImageCapabilities;
    .locals 1

    new-instance v0, Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;

    invoke-direct {v0, p0, p1}, Lsun/awt/image/SurfaceManager$ImageCapabilitiesGc;-><init>(Lsun/awt/image/SurfaceManager;Ljava/awt/GraphicsConfiguration;)V

    return-object v0
.end method

.method public abstract getPrimarySurfaceData()Lsun/java2d/SurfaceData;
.end method

.method public abstract restoreContents()Lsun/java2d/SurfaceData;
.end method

.method public setAccelerationPriority(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lsun/awt/image/SurfaceManager;->flush(Z)V

    :cond_0
    return-void
.end method

.method public setCacheData(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lsun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lsun/awt/image/SurfaceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
