.class public interface abstract Ljavax/imageio/event/IIOWriteProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract imageComplete(Ljavax/imageio/ImageWriter;)V
.end method

.method public abstract imageProgress(Ljavax/imageio/ImageWriter;F)V
.end method

.method public abstract imageStarted(Ljavax/imageio/ImageWriter;I)V
.end method

.method public abstract thumbnailComplete(Ljavax/imageio/ImageWriter;)V
.end method

.method public abstract thumbnailProgress(Ljavax/imageio/ImageWriter;F)V
.end method

.method public abstract thumbnailStarted(Ljavax/imageio/ImageWriter;II)V
.end method

.method public abstract writeAborted(Ljavax/imageio/ImageWriter;)V
.end method
