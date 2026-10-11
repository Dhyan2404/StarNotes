.class public interface abstract Lorg/apache/poi/wp/usermodel/IPicture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract getAnchor()Ljava/awt/geom/Rectangle2D;
.end method

.method public getAnchor(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/geom/Rectangle2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)",
            "Ljava/awt/geom/Rectangle2D;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/wp/usermodel/IPicture;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getImage(Lorg/apache/poi/wp/draw/ImageCreator;)Ljava/awt/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IMAGE:",
            "Ljava/awt/Image;",
            ">(",
            "Lorg/apache/poi/wp/draw/ImageCreator<",
            "TIMAGE;>;)TIMAGE;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPosition()Lorg/apache/poi/wp/usermodel/Position;
.end method

.method public abstract identifier()I
.end method

.method public isBehindDoc()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
