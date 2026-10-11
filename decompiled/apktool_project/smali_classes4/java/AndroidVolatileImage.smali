.class public Ljava/AndroidVolatileImage;
.super Ljava/awt/image/VolatileImage;
.source "SourceFile"


# instance fields
.field public e:Ljava/awt/GraphicsConfiguration;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/awt/GraphicsConfiguration;IIILjava/awt/ImageCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/awt/image/VolatileImage;-><init>()V

    iput-object p1, p0, Ljava/AndroidVolatileImage;->e:Ljava/awt/GraphicsConfiguration;

    return-void
.end method


# virtual methods
.method public contentsLost()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public createGraphics()Ljava/awt/Graphics2D;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilities()Ljava/awt/ImageCapabilities;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Ljava/AndroidVolatileImage;->g:I

    return p0
.end method

.method public getHeight(Ljava/awt/image/ImageObserver;)I
    .locals 0

    .line 2
    iget p0, p0, Ljava/AndroidVolatileImage;->g:I

    return p0
.end method

.method public getProperty(Ljava/lang/String;Ljava/awt/image/ImageObserver;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSnapshot()Ljava/awt/image/BufferedImage;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Ljava/AndroidVolatileImage;->f:I

    return p0
.end method

.method public getWidth(Ljava/awt/image/ImageObserver;)I
    .locals 0

    .line 2
    iget p0, p0, Ljava/AndroidVolatileImage;->f:I

    return p0
.end method

.method public validate(Ljava/awt/GraphicsConfiguration;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
