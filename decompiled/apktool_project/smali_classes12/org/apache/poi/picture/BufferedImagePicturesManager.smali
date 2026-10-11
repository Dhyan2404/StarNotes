.class public Lorg/apache/poi/picture/BufferedImagePicturesManager;
.super Lorg/apache/poi/picture/PicturesManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/picture/PicturesManager<",
        "Ljava/awt/image/BufferedImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/picture/BufferedImagePicturesCache;

    invoke-direct {v0, p1}, Lorg/apache/poi/picture/BufferedImagePicturesCache;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/picture/PicturesManager;-><init>(Lorg/apache/poi/picture/PicturesCache;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/picture/BufferedImagePicturesCache;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/picture/PicturesManager;-><init>(Lorg/apache/poi/picture/PicturesCache;)V

    return-void
.end method
