.class public Lcom/onyx/poi/cache/BitmapLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/poi/cache/BitmapLruCache$Builder;
    }
.end annotation


# static fields
.field public static final DISK_CACHE_VERSION:I = 0x4


# instance fields
.field public e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

.field public f:Lcom/jakewharton/disklrucache/DiskLruCache;

.field public g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/poi/cache/BitmapLruCache$a;

    invoke-direct {v0, p0}, Lcom/onyx/poi/cache/BitmapLruCache$a;-><init>(Lcom/onyx/poi/cache/BitmapLruCache;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic f(Lcom/onyx/poi/cache/BitmapLruCache;Lcom/onyx/poi/cache/BitmapMemoryLruCache;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->M(Lcom/onyx/poi/cache/BitmapMemoryLruCache;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/poi/cache/BitmapLruCache;Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->I(Lcom/jakewharton/disklrucache/DiskLruCache;)V

    return-void
.end method


# virtual methods
.method public final H(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final I(Lcom/jakewharton/disklrucache/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    return-void
.end method

.method public final M(Lcom/onyx/poi/cache/BitmapMemoryLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->close()V

    :cond_1
    return-void
.end method

.method public exist(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->getFromMemoryCache(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->getStreamFromDiskCache(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public get(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/poi/cache/BitmapLruCache;->get(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->getFromMemoryCache(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/cache/BitmapLruCache;->getFromDiskCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object p0

    return-object p0
.end method

.method public getFromDiskCache(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 3

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p2, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :cond_2
    :try_start_5
    invoke-static {p2}, Lcom/onyx/poi/cache/BitmapHolder;->create(Landroid/graphics/Bitmap;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/cache/BitmapLruCache;->H(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p2

    :catchall_0
    move-exception p0

    :try_start_8
    invoke-static {v2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_9
    invoke-virtual {v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->close()V

    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public getFromMemoryCache(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 4

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/poi/cache/BitmapHolder;

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/poi/cache/BitmapHolder;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/onyx/poi/cache/BitmapHolder;->detach()V

    monitor-exit v0

    return-object v1

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->getFromMemoryCache(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/poi/cache/BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->getStreamFromDiskCache(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getStreamFromDiskCache(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/onyx/poi/cache/BitmapLruCache;->put(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/poi/cache/BitmapLruCache;->H(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/poi/cache/BitmapLruCache;->w(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-object p2
.end method

.method public final remove(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/poi/cache/BitmapLruCache;->removeFromMemoryCache(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object p0

    return-object p0
.end method

.method public removeFromMemoryCache(Ljava/lang/String;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 0

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->e:Lcom/onyx/poi/cache/BitmapMemoryLruCache;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/poi/cache/BitmapHolder;

    return-object p0
.end method

.method public final w(Ljava/lang/String;Lcom/onyx/poi/cache/BitmapHolder;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/jakewharton/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/disklrucache/DiskLruCache$Editor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Lcom/onyx/poi/cache/BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2, p3, p4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Lcom/jakewharton/disklrucache/DiskLruCache$Editor;->commit()V

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapLruCache;->f:Lcom/jakewharton/disklrucache/DiskLruCache;

    invoke-virtual {p0}, Lcom/jakewharton/disklrucache/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
