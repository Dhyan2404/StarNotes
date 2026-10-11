.class public Lorg/apache/poi/convert/BitmapPicturesManager;
.super Lorg/apache/poi/picture/PicturesManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/picture/PicturesManager<",
        "Lcom/trans/android/AndroidImage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/convert/BitmapPicturesCache;

    invoke-direct {v0, p1}, Lorg/apache/poi/convert/BitmapPicturesCache;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/picture/PicturesManager;-><init>(Lorg/apache/poi/picture/PicturesCache;)V

    return-void
.end method
