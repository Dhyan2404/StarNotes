.class public Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;
.super Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;
    }
.end annotation


# instance fields
.field public g:Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;",
            "Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;-><init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;)V

    iput-object p3, p0, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;->g:Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;

    return-void
.end method


# virtual methods
.method public processMedia()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;->g:Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;

    if-eqz p0, :cond_1

    const-string v0, "No file found to process"

    invoke-interface {p0, v0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/onegravity/rteditor/api/media/RTMediaSource;

    sget-object v2, Lcom/onegravity/rteditor/api/media/RTMediaType;->IMAGE:Lcom/onegravity/rteditor/api/media/RTMediaType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->getOriginalFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/onegravity/rteditor/api/media/RTMediaSource;-><init>(Lcom/onegravity/rteditor/api/media/RTMediaType;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;->mMediaFactory:Lcom/onegravity/rteditor/api/RTMediaFactory;

    invoke-interface {v0, v1}, Lcom/onegravity/rteditor/api/RTMediaFactory;->createImage(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTImage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor;->g:Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/onegravity/rteditor/media/choose/processor/ImageProcessor$ImageProcessorListener;->onImageProcessed(Lcom/onegravity/rteditor/api/media/RTImage;)V

    :cond_1
    :goto_0
    return-void
.end method
