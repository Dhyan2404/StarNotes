.class Lorg/apache/poi/hwmf/draw/HwmfGraphics$BufferedImageRenderer;
.super Lorg/apache/poi/sl/draw/BitmapImageRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/draw/HwmfGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferedImageRenderer"
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;->img:Ljava/awt/image/BufferedImage;

    return-void
.end method
