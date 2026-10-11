.class public Lcom/onyx/poi/cache/BitmapHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/graphics/Bitmap;

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->e:Z

    iput-object p1, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput p1, p0, Lcom/onyx/poi/cache/BitmapHolder;->a:I

    return-void
.end method

.method public static create(IILandroid/graphics/Bitmap$Config;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/onyx/poi/cache/BitmapHolder;->create(Landroid/graphics/Bitmap;)Lcom/onyx/poi/cache/BitmapHolder;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/graphics/Bitmap;)Lcom/onyx/poi/cache/BitmapHolder;
    .locals 1

    .line 1
    new-instance v0, Lcom/onyx/poi/cache/BitmapHolder;

    invoke-direct {v0, p0}, Lcom/onyx/poi/cache/BitmapHolder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public attach()Lcom/onyx/poi/cache/BitmapHolder;
    .locals 2

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->a:I

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->a:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapHolder;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

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

.method public eraseColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapHolder;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

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

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapHolder;->a()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->c:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapHolder;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/onyx/common/util/BitmapUtils;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcom/onyx/poi/cache/BitmapHolder;->c:I

    :cond_0
    iget p0, p0, Lcom/onyx/poi/cache/BitmapHolder;->c:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapHolder;->a()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/poi/cache/BitmapHolder;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/poi/cache/BitmapHolder;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/onyx/poi/cache/BitmapHolder;->a()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
