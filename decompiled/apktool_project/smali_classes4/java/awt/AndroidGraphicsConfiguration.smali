.class public Ljava/awt/AndroidGraphicsConfiguration;
.super Ljava/awt/GraphicsConfiguration;
.source "SourceFile"


# instance fields
.field private device:Ljava/awt/GraphicsDevice;


# direct methods
.method public constructor <init>(Ljava/awt/GraphicsDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/awt/GraphicsConfiguration;-><init>()V

    iput-object p1, p0, Ljava/awt/AndroidGraphicsConfiguration;->device:Ljava/awt/GraphicsDevice;

    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 3

    invoke-static {}, Lcom/onyx/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    .line 1
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    return-object p0
.end method

.method public getColorModel(I)Ljava/awt/image/ColorModel;
    .locals 6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/awt/image/DirectColorModel;

    const/16 v1, 0x19

    const/high16 v2, 0xff0000

    const v3, 0xff00

    const/16 v4, 0xff

    const/high16 v5, -0x1000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    return-object p0

    .line 4
    :cond_2
    new-instance p0, Ljava/awt/image/DirectColorModel;

    const p1, 0xff00

    const/16 v0, 0xff

    const/16 v1, 0x18

    const/high16 v2, 0xff0000

    invoke-direct {p0, v1, v2, p1, v0}, Ljava/awt/image/DirectColorModel;-><init>(IIII)V

    return-object p0
.end method

.method public getDefaultTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    new-instance p0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;-><init>()V

    return-object p0
.end method

.method public getDevice()Ljava/awt/GraphicsDevice;
    .locals 0

    iget-object p0, p0, Ljava/awt/AndroidGraphicsConfiguration;->device:Ljava/awt/GraphicsDevice;

    return-object p0
.end method

.method public getNormalizingTransform()Ljava/awt/geom/AffineTransform;
    .locals 14

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "AndroidGraphicsConfiguration"

    const-string v1, "getNormalizingTransform"

    invoke-static {v0, v1, p0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/onyx/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-instance v13, Ljava/awt/geom/AffineTransform;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, p0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    float-to-double v7, p0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v13
.end method
