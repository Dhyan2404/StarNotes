.class public Lcom/onegravity/rteditor/api/media/RTAudioImpl;
.super Lcom/onegravity/rteditor/api/media/RTMediaImpl;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/api/media/RTAudio;


# static fields
.field private static final serialVersionUID:J = -0x10d5f185d58a01c9L


# instance fields
.field private mAudioPreviewImage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAudioPreviewImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTAudioImpl;->mAudioPreviewImage:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTAudioImpl;->mAudioPreviewImage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getHeight(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTAudioImpl;->mAudioPreviewImage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getWidth(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 1

    invoke-super {p0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->remove()V

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTAudioImpl;->mAudioPreviewImage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->removeFile(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioPreviewImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/api/media/RTAudioImpl;->mAudioPreviewImage:Ljava/lang/String;

    return-void
.end method
