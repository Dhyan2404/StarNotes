.class public interface abstract Ljavax/imageio/event/IIOReadProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract imageComplete(Ljavax/imageio/ImageReader;)V
.end method

.method public abstract imageProgress(Ljavax/imageio/ImageReader;F)V
.end method

.method public abstract imageStarted(Ljavax/imageio/ImageReader;I)V
.end method

.method public abstract readAborted(Ljavax/imageio/ImageReader;)V
.end method

.method public abstract sequenceComplete(Ljavax/imageio/ImageReader;)V
.end method

.method public abstract sequenceStarted(Ljavax/imageio/ImageReader;I)V
.end method

.method public abstract thumbnailComplete(Ljavax/imageio/ImageReader;)V
.end method

.method public abstract thumbnailProgress(Ljavax/imageio/ImageReader;F)V
.end method

.method public abstract thumbnailStarted(Ljavax/imageio/ImageReader;II)V
.end method
