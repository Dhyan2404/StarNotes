.class public Lorg/mortbay/jetty/ResourceCache;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/ResourceCache$Content;
    }
.end annotation


# instance fields
.field protected transient _cache:Ljava/util/Map;

.field protected transient _cachedFiles:I

.field protected transient _cachedSize:I

.field protected transient _leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

.field private _maxCacheSize:I

.field private _maxCachedFileSize:I

.field private _maxCachedFiles:I

.field private _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field protected transient _mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    const/high16 v0, 0x100000

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    const/16 v0, 0x800

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    const/high16 v0, 0x1000000

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    iput-object p1, p0, Lorg/mortbay/jetty/ResourceCache;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-void
.end method

.method public static synthetic access$000(Lorg/mortbay/jetty/ResourceCache;)Lorg/mortbay/jetty/MimeTypes;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/ResourceCache;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object p0
.end method

.method private load(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget v2, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    new-instance v2, Lorg/mortbay/jetty/ResourceCache$Content;

    invoke-direct {v2, p0, p2}, Lorg/mortbay/jetty/ResourceCache$Content;-><init>(Lorg/mortbay/jetty/ResourceCache;Lorg/mortbay/resource/Resource;)V

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/ResourceCache;->fill(Lorg/mortbay/jetty/ResourceCache$Content;)V

    iget-object p2, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/jetty/ResourceCache$Content;->release()V

    monitor-exit p2

    return-object v3

    :cond_0
    iget v3, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    long-to-int v0, v0

    sub-int/2addr v3, v0

    :goto_0
    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lorg/mortbay/jetty/ResourceCache$Content;->a(Ljava/lang/String;)V

    monitor-exit p2

    return-object v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    invoke-virtual {v0}, Lorg/mortbay/jetty/ResourceCache$Content;->invalidate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache;->flushCache()V

    return-void
.end method

.method public fill(Lorg/mortbay/jetty/ResourceCache$Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    invoke-interface {v1, p0, v0}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1, v1}, Lorg/mortbay/jetty/ResourceCache$Content;->setBuffer(Lorg/mortbay/io/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->release()V

    throw p0
.end method

.method public flushCache()V
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/ResourceCache$Content;

    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache$Content;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    iput v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_mostRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    iput-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_leastRecentlyUsed:Lorg/mortbay/jetty/ResourceCache$Content;

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public getCachedFiles()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedFiles:I

    return p0
.end method

.method public getCachedSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/ResourceCache;->_cachedSize:I

    return p0
.end method

.method public getMaxCacheSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    return p0
.end method

.method public getMaxCachedFileSize()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    return p0
.end method

.method public getMaxCachedFiles()I
    .locals 0

    iget p0, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    return p0
.end method

.method public lookup(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache$Content;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    monitor-exit v0

    return-object v1

    .line 13
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/ResourceCache;->load(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public lookup(Ljava/lang/String;Lorg/mortbay/resource/ResourceFactory;)Lorg/mortbay/jetty/ResourceCache$Content;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/ResourceCache$Content;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache$Content;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p2, p1}, Lorg/mortbay/resource/ResourceFactory;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2}, Lorg/mortbay/jetty/ResourceCache;->load(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setMaxCacheSize(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCacheSize:I

    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache;->flushCache()V

    return-void
.end method

.method public setMaxCachedFileSize(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFileSize:I

    invoke-virtual {p0}, Lorg/mortbay/jetty/ResourceCache;->flushCache()V

    return-void
.end method

.method public setMaxCachedFiles(I)V
    .locals 0

    iput p1, p0, Lorg/mortbay/jetty/ResourceCache;->_maxCachedFiles:I

    return-void
.end method
