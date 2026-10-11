.class public Ljavax/imageio/IIOImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected image:Ljava/awt/image/RenderedImage;

.field protected metadata:Ljavax/imageio/metadata/IIOMetadata;

.field protected raster:Ljava/awt/image/Raster;

.field protected thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/awt/image/Raster;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/Raster;",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;",
            "Ljavax/imageio/metadata/IIOMetadata;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Ljavax/imageio/IIOImage;->raster:Ljava/awt/image/Raster;

    .line 11
    iput-object v0, p0, Ljavax/imageio/IIOImage;->image:Ljava/awt/image/RenderedImage;

    .line 12
    iput-object p2, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    .line 13
    iput-object p3, p0, Ljavax/imageio/IIOImage;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "raster == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/image/RenderedImage;",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;",
            "Ljavax/imageio/metadata/IIOMetadata;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Ljavax/imageio/IIOImage;->image:Ljava/awt/image/RenderedImage;

    .line 4
    iput-object v0, p0, Ljavax/imageio/IIOImage;->raster:Ljava/awt/image/Raster;

    .line 5
    iput-object p2, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    .line 6
    iput-object p3, p0, Ljavax/imageio/IIOImage;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "image == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOImage;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-object p0
.end method

.method public getNumThumbnails()I
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRaster()Ljava/awt/image/Raster;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/imageio/IIOImage;->raster:Ljava/awt/image/Raster;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRenderedImage()Ljava/awt/image/RenderedImage;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/imageio/IIOImage;->image:Ljava/awt/image/RenderedImage;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThumbnail(I)Ljava/awt/image/BufferedImage;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "No thumbnails available!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    return-object p0
.end method

.method public hasRaster()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/imageio/IIOImage;->raster:Ljava/awt/image/Raster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/IIOImage;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-void
.end method

.method public setRaster(Ljava/awt/image/Raster;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Ljavax/imageio/IIOImage;->raster:Ljava/awt/image/Raster;

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/IIOImage;->image:Ljava/awt/image/RenderedImage;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "raster == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRenderedImage(Ljava/awt/image/RenderedImage;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Ljavax/imageio/IIOImage;->image:Ljava/awt/image/RenderedImage;

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/IIOImage;->raster:Ljava/awt/image/Raster;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "image == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljavax/imageio/IIOImage;->thumbnails:Ljava/util/List;

    return-void
.end method
