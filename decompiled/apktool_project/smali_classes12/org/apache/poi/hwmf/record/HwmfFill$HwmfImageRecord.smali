.class public interface abstract Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwmfImageRecord"
.end annotation


# virtual methods
.method public abstract getBMPData()[B
.end method

.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 4

    .line 1
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    new-instance v1, Ljava/awt/Color;

    const v2, 0xffffff

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/awt/Color;-><init>(IZ)V

    invoke-interface {p0, v0, v1, v3}, Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public abstract getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
.end method
