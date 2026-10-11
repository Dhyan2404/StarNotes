.class public interface abstract Ljavax/imageio/event/IIOReadUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract imageUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
.end method

.method public abstract passComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V
.end method

.method public abstract passStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
.end method

.method public abstract thumbnailPassComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V
.end method

.method public abstract thumbnailPassStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
.end method

.method public abstract thumbnailUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
.end method
