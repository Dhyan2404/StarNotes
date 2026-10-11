.class public Ljava/awt/BufferCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/BufferCapabilities$FlipContents;
    }
.end annotation


# instance fields
.field private backCaps:Ljava/awt/ImageCapabilities;

.field private flipContents:Ljava/awt/BufferCapabilities$FlipContents;

.field private frontCaps:Ljava/awt/ImageCapabilities;


# direct methods
.method public constructor <init>(Ljava/awt/ImageCapabilities;Ljava/awt/ImageCapabilities;Ljava/awt/BufferCapabilities$FlipContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Ljava/awt/BufferCapabilities;->frontCaps:Ljava/awt/ImageCapabilities;

    iput-object p2, p0, Ljava/awt/BufferCapabilities;->backCaps:Ljava/awt/ImageCapabilities;

    iput-object p3, p0, Ljava/awt/BufferCapabilities;->flipContents:Ljava/awt/BufferCapabilities$FlipContents;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image capabilities specified cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBackBufferCapabilities()Ljava/awt/ImageCapabilities;
    .locals 0

    iget-object p0, p0, Ljava/awt/BufferCapabilities;->backCaps:Ljava/awt/ImageCapabilities;

    return-object p0
.end method

.method public getFlipContents()Ljava/awt/BufferCapabilities$FlipContents;
    .locals 0

    iget-object p0, p0, Ljava/awt/BufferCapabilities;->flipContents:Ljava/awt/BufferCapabilities$FlipContents;

    return-object p0
.end method

.method public getFrontBufferCapabilities()Ljava/awt/ImageCapabilities;
    .locals 0

    iget-object p0, p0, Ljava/awt/BufferCapabilities;->frontCaps:Ljava/awt/ImageCapabilities;

    return-object p0
.end method

.method public isFullScreenRequired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMultiBufferAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPageFlipping()Z
    .locals 0

    invoke-virtual {p0}, Ljava/awt/BufferCapabilities;->getFlipContents()Ljava/awt/BufferCapabilities$FlipContents;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
