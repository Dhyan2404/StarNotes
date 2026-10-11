.class public interface abstract Lcom/onegravity/rteditor/api/RTMediaFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lcom/onegravity/rteditor/api/media/RTImage;",
        "A::",
        "Lcom/onegravity/rteditor/api/media/RTAudio;",
        "V::",
        "Lcom/onegravity/rteditor/api/media/RTVideo;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract createAudio(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTAudio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/media/RTMediaSource;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract createAudio(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTAudio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract createImage(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/media/RTMediaSource;",
            ")TI;"
        }
    .end annotation
.end method

.method public abstract createImage(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TI;"
        }
    .end annotation
.end method

.method public abstract createVideo(Lcom/onegravity/rteditor/api/media/RTMediaSource;)Lcom/onegravity/rteditor/api/media/RTVideo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/media/RTMediaSource;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract createVideo(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTVideo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method
