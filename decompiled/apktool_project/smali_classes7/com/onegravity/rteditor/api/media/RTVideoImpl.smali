.class public Lcom/onegravity/rteditor/api/media/RTVideoImpl;
.super Lcom/onegravity/rteditor/api/media/RTMediaImpl;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/api/media/RTVideo;


# static fields
.field private static final serialVersionUID:J = 0x52cd1ebd1a4f855aL


# instance fields
.field private mVideoPreviewImage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTVideoImpl;->mVideoPreviewImage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getHeight(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVideoPreviewImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTVideoImpl;->mVideoPreviewImage:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTVideoImpl;->mVideoPreviewImage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->getWidth(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public remove()V
    .locals 1

    invoke-super {p0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->remove()V

    iget-object v0, p0, Lcom/onegravity/rteditor/api/media/RTVideoImpl;->mVideoPreviewImage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onegravity/rteditor/api/media/RTMediaImpl;->removeFile(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoPreviewImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/api/media/RTVideoImpl;->mVideoPreviewImage:Ljava/lang/String;

    return-void
.end method
