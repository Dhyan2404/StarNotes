.class public abstract Lcom/twelvemonkeys/imageio/util/ProgressListenerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/event/IIOReadProgressListener;
.implements Ljavax/imageio/event/IIOWriteProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    .line 1
    return-void
.end method

.method public imageComplete(Ljavax/imageio/ImageWriter;)V
    .locals 0

    .line 2
    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageReader;F)V
    .locals 0

    .line 1
    return-void
.end method

.method public imageProgress(Ljavax/imageio/ImageWriter;F)V
    .locals 0

    .line 2
    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public imageStarted(Ljavax/imageio/ImageWriter;I)V
    .locals 0

    .line 2
    return-void
.end method

.method public readAborted(Ljavax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public sequenceComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public sequenceStarted(Ljavax/imageio/ImageReader;I)V
    .locals 0

    return-void
.end method

.method public thumbnailComplete(Ljavax/imageio/ImageReader;)V
    .locals 0

    .line 1
    return-void
.end method

.method public thumbnailComplete(Ljavax/imageio/ImageWriter;)V
    .locals 0

    .line 2
    return-void
.end method

.method public thumbnailProgress(Ljavax/imageio/ImageReader;F)V
    .locals 0

    .line 1
    return-void
.end method

.method public thumbnailProgress(Ljavax/imageio/ImageWriter;F)V
    .locals 0

    .line 2
    return-void
.end method

.method public thumbnailStarted(Ljavax/imageio/ImageReader;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public thumbnailStarted(Ljavax/imageio/ImageWriter;II)V
    .locals 0

    .line 2
    return-void
.end method

.method public writeAborted(Ljavax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method
