.class public Lcom/onegravity/rteditor/media/choose/processor/VideoProcessor;
.super Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/media/choose/processor/VideoProcessor$VideoProcessorListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/VideoProcessor$VideoProcessorListener;)V
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
            "Lcom/onegravity/rteditor/media/choose/processor/VideoProcessor$VideoProcessorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor;-><init>(Ljava/lang/String;Lcom/onegravity/rteditor/api/RTMediaFactory;Lcom/onegravity/rteditor/media/choose/processor/MediaProcessor$MediaProcessorListener;)V

    return-void
.end method


# virtual methods
.method public processMedia()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
