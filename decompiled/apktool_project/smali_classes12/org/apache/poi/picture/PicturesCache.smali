.class public abstract Lorg/apache/poi/picture/PicturesCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/wp/draw/ImageCreator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IMAGE:",
        "Ljava/awt/Image;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/wp/draw/ImageCreator<",
        "TIMAGE;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field public static final PICTURE_MAX_SCALE:F = 1.5f


# instance fields
.field protected final LOG:Lorg/apache/logging/log4j/Logger;

.field protected location:Ljava/lang/String;

.field protected sizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/Dimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesCache;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/picture/PicturesCache;->sizeCache:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->sizeCache:Ljava/util/Map;

    invoke-static {p0}, Lorg/apache/poi/util/CollectionUtils;->clear(Ljava/util/Map;)V

    return-void
.end method

.method public abstract existCache(Ljava/lang/String;)Z
.end method

.method public abstract getFilename(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public getImageSize(Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/picture/PicturesCache;->sizeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Dimension;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/picture/PicturesCache;->readImageSize(Ljava/lang/String;)Ljava/awt/Dimension;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->sizeCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    return-object p0
.end method

.method public getScale()F
    .locals 0

    const/high16 p0, 0x3fc00000    # 1.5f

    return p0
.end method

.method public abstract getStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract readImageSize(Ljava/lang/String;)Ljava/awt/Dimension;
.end method

.method public abstract saveImage(Ljava/awt/Image;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIMAGE;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public setImageSize(Ljava/lang/String;Ljava/awt/Dimension;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/picture/PicturesCache;->sizeCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/picture/PicturesCache;->location:Ljava/lang/String;

    return-void
.end method
