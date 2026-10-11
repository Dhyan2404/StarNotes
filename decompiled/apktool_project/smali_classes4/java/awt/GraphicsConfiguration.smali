.class public abstract Ljava/awt/GraphicsConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/GraphicsConfiguration$DefaultBufferCapabilities;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static defaultBufferCaps:Ljava/awt/BufferCapabilities;

.field private static defaultImageCaps:Ljava/awt/ImageCapabilities;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCompatibleImage(II)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    .line 3
    new-instance p2, Ljava/awt/image/BufferedImage;

    .line 4
    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p2
.end method

.method public createCompatibleImage(III)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 5
    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Ljava/awt/GraphicsConfiguration;->createCompatibleImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p3}, Ljava/awt/GraphicsConfiguration;->getColorModel(I)Ljava/awt/image/ColorModel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p3

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object p2

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown transparency: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCompatibleVolatileImage(II)Ljava/awt/image/VolatileImage;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/awt/GraphicsConfiguration;->createCompatibleVolatileImage(IILjava/awt/ImageCapabilities;I)Ljava/awt/image/VolatileImage;

    move-result-object v1
    :try_end_0
    .catch Ljava/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public createCompatibleVolatileImage(III)Ljava/awt/image/VolatileImage;
    .locals 1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/awt/GraphicsConfiguration;->createCompatibleVolatileImage(IILjava/awt/ImageCapabilities;I)Ljava/awt/image/VolatileImage;

    move-result-object v0
    :try_end_0
    .catch Ljava/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public createCompatibleVolatileImage(IILjava/awt/ImageCapabilities;)Ljava/awt/image/VolatileImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/AWTException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/awt/GraphicsConfiguration;->createCompatibleVolatileImage(IILjava/awt/ImageCapabilities;I)Ljava/awt/image/VolatileImage;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleVolatileImage(IILjava/awt/ImageCapabilities;I)Ljava/awt/image/VolatileImage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/AWTException;
        }
    .end annotation

    .line 4
    new-instance v6, Ljava/AndroidVolatileImage;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/AndroidVolatileImage;-><init>(Ljava/awt/GraphicsConfiguration;IIILjava/awt/ImageCapabilities;)V

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p3}, Ljava/awt/ImageCapabilities;->isAccelerated()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {v6}, Ljava/awt/image/VolatileImage;->getCapabilities()Ljava/awt/ImageCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/ImageCapabilities;->isAccelerated()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/awt/AWTException;

    const-string p1, "Supplied image capabilities could not be met by this graphics configuration."

    invoke-direct {p0, p1}, Ljava/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v6
.end method

.method public abstract getBounds()Ljava/awt/Rectangle;
.end method

.method public getBufferCapabilities()Ljava/awt/BufferCapabilities;
    .locals 1

    sget-object v0, Ljava/awt/GraphicsConfiguration;->defaultBufferCaps:Ljava/awt/BufferCapabilities;

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/GraphicsConfiguration$DefaultBufferCapabilities;

    invoke-virtual {p0}, Ljava/awt/GraphicsConfiguration;->getImageCapabilities()Ljava/awt/ImageCapabilities;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/awt/GraphicsConfiguration$DefaultBufferCapabilities;-><init>(Ljava/awt/ImageCapabilities;)V

    sput-object v0, Ljava/awt/GraphicsConfiguration;->defaultBufferCaps:Ljava/awt/BufferCapabilities;

    :cond_0
    sget-object p0, Ljava/awt/GraphicsConfiguration;->defaultBufferCaps:Ljava/awt/BufferCapabilities;

    return-object p0
.end method

.method public abstract getColorModel()Ljava/awt/image/ColorModel;
.end method

.method public abstract getColorModel(I)Ljava/awt/image/ColorModel;
.end method

.method public abstract getDefaultTransform()Ljava/awt/geom/AffineTransform;
.end method

.method public abstract getDevice()Ljava/awt/GraphicsDevice;
.end method

.method public getImageCapabilities()Ljava/awt/ImageCapabilities;
    .locals 1

    sget-object p0, Ljava/awt/GraphicsConfiguration;->defaultImageCaps:Ljava/awt/ImageCapabilities;

    if-nez p0, :cond_0

    new-instance p0, Ljava/awt/ImageCapabilities;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/awt/ImageCapabilities;-><init>(Z)V

    sput-object p0, Ljava/awt/GraphicsConfiguration;->defaultImageCaps:Ljava/awt/ImageCapabilities;

    :cond_0
    sget-object p0, Ljava/awt/GraphicsConfiguration;->defaultImageCaps:Ljava/awt/ImageCapabilities;

    return-object p0
.end method

.method public abstract getNormalizingTransform()Ljava/awt/geom/AffineTransform;
.end method

.method public isTranslucencyCapable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
