.class public interface abstract Lorg/apache/poi/wp/draw/ImageCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IMAGE:",
        "Ljava/awt/Image;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createImage(II)Ljava/awt/Image;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TIMAGE;"
        }
    .end annotation
.end method

.method public abstract getGraphics(Ljava/awt/Image;)Ljava/awt/Graphics2D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIMAGE;)",
            "Ljava/awt/Graphics2D;"
        }
    .end annotation
.end method

.method public abstract getImageRenderer(Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
.end method

.method public abstract getScale()F
.end method
