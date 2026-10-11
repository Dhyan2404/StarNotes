.class public abstract Ljava/awt/image/VolatileImage;
.super Ljava/awt/Image;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Transparency;


# static fields
.field public static final IMAGE_INCOMPATIBLE:I = 0x2

.field public static final IMAGE_OK:I = 0x0

.field public static final IMAGE_RESTORED:I = 0x1


# instance fields
.field protected transparency:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/awt/Image;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ljava/awt/image/VolatileImage;->transparency:I

    return-void
.end method


# virtual methods
.method public abstract contentsLost()Z
.end method

.method public abstract createGraphics()Ljava/awt/Graphics2D;
.end method

.method public abstract getCapabilities()Ljava/awt/ImageCapabilities;
.end method

.method public getGraphics()Ljava/awt/Graphics;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/image/VolatileImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getSnapshot()Ljava/awt/image/BufferedImage;
.end method

.method public getSource()Ljava/awt/image/ImageProducer;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/image/VolatileImage;->getSnapshot()Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getSource()Ljava/awt/image/ImageProducer;

    move-result-object p0

    return-object p0
.end method

.method public getTransparency()I
    .locals 0

    iget p0, p0, Ljava/awt/image/VolatileImage;->transparency:I

    return p0
.end method

.method public abstract getWidth()I
.end method

.method public abstract validate(Ljava/awt/GraphicsConfiguration;)I
.end method
