.class public Ljava/awt/image/FilteredImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageProducer;


# instance fields
.field filter:Ljava/awt/image/ImageFilter;

.field private proxies:Ljava/util/Hashtable;

.field src:Ljava/awt/image/ImageProducer;


# direct methods
.method public constructor <init>(Ljava/awt/image/ImageProducer;Ljava/awt/image/ImageFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/awt/image/FilteredImageSource;->src:Ljava/awt/image/ImageProducer;

    iput-object p2, p0, Ljava/awt/image/FilteredImageSource;->filter:Ljava/awt/image/ImageFilter;

    return-void
.end method


# virtual methods
.method public declared-synchronized addConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->filter:Ljava/awt/image/ImageFilter;

    invoke-virtual {v0, p1}, Ljava/awt/image/ImageFilter;->getFilterInstance(Ljava/awt/image/ImageConsumer;)Ljava/awt/image/ImageFilter;

    move-result-object v0

    iget-object v1, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ljava/awt/image/FilteredImageSource;->src:Ljava/awt/image/ImageProducer;

    invoke-interface {p1, v0}, Ljava/awt/image/ImageProducer;->addConsumer(Ljava/awt/image/ImageConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isConsumer(Ljava/awt/image/ImageConsumer;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/ImageFilter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/awt/image/FilteredImageSource;->src:Ljava/awt/image/ImageProducer;

    invoke-interface {v1, v0}, Ljava/awt/image/ImageProducer;->removeConsumer(Ljava/awt/image/ImageConsumer;)V

    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestTopDownLeftRightResend(Ljava/awt/image/ImageConsumer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/image/ImageFilter;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->src:Ljava/awt/image/ImageProducer;

    invoke-virtual {p1, v0}, Ljava/awt/image/ImageFilter;->resendTopDownLeftRight(Ljava/awt/image/ImageProducer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startProduction(Ljava/awt/image/ImageConsumer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/ImageFilter;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/awt/image/FilteredImageSource;->filter:Ljava/awt/image/ImageFilter;

    invoke-virtual {v0, p1}, Ljava/awt/image/ImageFilter;->getFilterInstance(Ljava/awt/image/ImageConsumer;)Ljava/awt/image/ImageFilter;

    move-result-object v0

    iget-object v1, p0, Ljava/awt/image/FilteredImageSource;->proxies:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Ljava/awt/image/FilteredImageSource;->src:Ljava/awt/image/ImageProducer;

    invoke-interface {p1, v0}, Ljava/awt/image/ImageProducer;->startProduction(Ljava/awt/image/ImageConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
