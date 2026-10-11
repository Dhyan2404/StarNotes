.class public Lcom/trans/android/AndroidGraphics2D;
.super Ljava/awt/Graphics2D;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trans/android/AndroidGraphics2D$RenderAction;
    }
.end annotation


# static fields
.field public static final CLIP_DEVICE:I = 0x0

.field public static final CLIP_RECTANGULAR:I = 0x1

.field public static final CLIP_SHAPE:I = 0x2

.field public static final DEFAULT_COMPOSITE:Ljava/awt/Composite;

.field public static final NON_RECTILINEAR_TRANSFORM_MASK:I = 0x30

.field public static final NON_UNIFORM_SCALE_MASK:I = 0x24

.field public static final TAG:Ljava/lang/String; = "AndroidGraphics2D"

.field public static final TRANSFORM_ANY_TRANSLATE:I = 0x2

.field public static final TRANSFORM_GENERIC:I = 0x4

.field public static final TRANSFORM_INT_TRANSLATE:I = 0x1

.field public static final TRANSFORM_ISIDENT:I = 0x0

.field public static final TRANSFORM_TRANSLATESCALE:I = 0x3

.field public static final defaultStroke:Ljava/awt/Stroke;


# instance fields
.field private alpha:I

.field public antialiasHint:I

.field private awtPaint:Ljava/awt/Paint;

.field private bgColor:Ljava/awt/Color;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bridge:Lcom/trans/android/ImageBridge;

.field private cachedFRC:Ljava/awt/font/FontRenderContext;

.field private canvas:Landroid/graphics/Canvas;

.field private canvasSaveCount:I

.field public clipState:I

.field private composite:Ljava/awt/Composite;

.field public compositeState:I

.field private fgColor:Ljava/awt/Color;

.field private font:Ljava/awt/Font;

.field public fractionalMetricsHint:I

.field private hbGraphics:Lcom/trans/android/hb/HBGraphics;

.field private hints:Ljava/awt/RenderingHints;

.field private imagePaint:Landroid/graphics/Paint;

.field public interpolationHint:I

.field public interpolationType:I

.field private isTexturePaint:Z

.field public lcdTextContrast:I

.field private paint:Landroid/text/TextPaint;

.field public paintState:I

.field private recycleBitmap:Z

.field public renderHint:I

.field public resolutionVariantHint:I

.field public scaleX:D

.field private stroke:Ljava/awt/Stroke;

.field public strokeHint:I

.field public strokeState:I

.field public textAntialiasHint:I

.field public transX:I

.field public transY:I

.field private transform:Ljava/awt/geom/AffineTransform;

.field public transformState:I

.field public usrClip:Ljava/awt/Shape;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    sput-object v0, Lcom/trans/android/AndroidGraphics2D;->DEFAULT_COMPOSITE:Ljava/awt/Composite;

    new-instance v0, Ljava/awt/BasicStroke;

    invoke-direct {v0}, Ljava/awt/BasicStroke;-><init>()V

    sput-object v0, Lcom/trans/android/AndroidGraphics2D;->defaultStroke:Ljava/awt/Stroke;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    sget-object v0, Ljava/awt/Font;->DEFAULT_FONT:Ljava/awt/Font;

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    const/4 v0, 0x0

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->renderHint:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->antialiasHint:I

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->textAntialiasHint:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->fractionalMetricsHint:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->bitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance p1, Ljava/awt/BasicStroke;

    invoke-direct {p1}, Ljava/awt/BasicStroke;-><init>()V

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    new-instance p1, Ljava/awt/RenderingHints;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p1

    iput p1, p0, Lcom/trans/android/AndroidGraphics2D;->canvasSaveCount:I

    sget-object p1, Lcom/trans/android/AndroidGraphics2D;->DEFAULT_COMPOSITE:Ljava/awt/Composite;

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    new-instance p1, Lcom/trans/android/hb/HBGraphics;

    invoke-direct {p1}, Lcom/trans/android/hb/HBGraphics;-><init>()V

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->initPaint()V

    return-void
.end method

.method public static synthetic H(Ljava/text/AttributedCharacterIterator$Attribute;)Z
    .locals 0

    invoke-static {p0}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawString$0(Ljava/text/AttributedCharacterIterator$Attribute;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lcom/trans/android/AndroidGraphics2D;IILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawImage$6(IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic M(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;IIIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawImage$4(Ljava/awt/Color;IIIILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0, p0}, Ljava/awt/geom/GeneralPath;-><init>(Ljava/awt/Shape;)V

    return-object v0
.end method

.method private drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z
    .locals 5

    instance-of v0, p1, Lcom/trans/android/AndroidImage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/trans/android/AndroidImage;

    move-object v0, v2

    move-object v2, p1

    move-object p1, v0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/trans/android/BufferedImageWrapper;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/trans/android/BufferedImageWrapper;

    invoke-virtual {p1}, Lcom/trans/android/BufferedImageWrapper;->getRenderContext()Ljava/awt/image/renderable/RenderContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v2

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trans/android/BufferedImageWrapper;->getRenderContext()Ljava/awt/image/renderable/RenderContext;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/renderable/RenderContext;->getAreaOfInterest()Ljava/awt/Shape;

    move-result-object v3

    invoke-virtual {p1}, Lcom/trans/android/BufferedImageWrapper;->getRenderContext()Ljava/awt/image/renderable/RenderContext;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/image/renderable/RenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/trans/android/AndroidGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v3}, Lcom/trans/android/AndroidGraphics2D;->setClip(Ljava/awt/Shape;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/trans/android/BufferedImageWrapper;->getAndroidImage()Lcom/trans/android/AndroidImage;

    move-result-object v3

    invoke-virtual {p1}, Lcom/trans/android/BufferedImageWrapper;->clearAndroidImage()V

    invoke-static {p1}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    move-object p1, v2

    move-object v2, v3

    goto :goto_2

    :cond_2
    instance-of v0, p1, Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/trans/android/AndroidImage;

    check-cast p1, Ljava/awt/image/BufferedImage;

    invoke-direct {v0, p1}, Lcom/trans/android/AndroidImage;-><init>(Ljava/awt/image/BufferedImage;)V

    move-object p1, v2

    move-object v2, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move-object p1, v2

    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/trans/android/AndroidImage;->getAndroidBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/trans/android/AndroidGraphics2D$RenderAction;->execute(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setClip(Ljava/awt/Shape;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :cond_6
    return v1
.end method

.method private drawStringWithHBGraphics(Ljava/lang/String;FF)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/lang/String;FF)Z

    move-result p0

    return p0
.end method

.method private drawStringWithHBGraphics(Ljava/lang/String;Ljava/util/List;FF)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;FF)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trans/android/hb/HBGraphics;->drawString(Lcom/trans/android/AndroidGraphics2D;Ljava/util/List;Ljava/lang/String;FF)Z

    move-result p0

    return p0
.end method

.method private drawTexturePaint(Ljava/awt/Shape;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    instance-of v2, v0, Ljava/awt/TexturePaint;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/awt/TexturePaint;

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v3

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setClip(Ljava/awt/Shape;)V

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1, v3}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v0, p1, v2}, Ljava/awt/TexturePaint;->getAndroidImage(Ljava/awt/geom/AffineTransform;Ljava/awt/geom/Rectangle2D;)Lcom/trans/android/AndroidImage;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/trans/android/AndroidGraphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    invoke-static {v0}, Lcom/onyx/common/util/CloseUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Lcom/trans/android/AndroidGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v4}, Lcom/trans/android/AndroidGraphics2D;->setClip(Ljava/awt/Shape;)V

    iput-boolean v1, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic e0(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawRenderedImage$5(Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic f(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawImage$7(Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic f0(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;IILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawImage$3(Ljava/awt/Color;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static fixRectangleOrientation([DLjava/awt/geom/Rectangle2D;)V
    .locals 12

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/4 v5, 0x2

    aget-wide v6, p0, v5

    aget-wide v8, p0, v4

    sub-double v10, v6, v8

    cmpl-double v10, v10, v2

    if-lez v10, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    if-eq v0, v10, :cond_2

    aput-wide v6, p0, v4

    aput-wide v8, p0, v5

    :cond_2
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    cmpl-double p1, v5, v2

    if-lez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    const/4 v0, 0x3

    aget-wide v5, p0, v0

    aget-wide v7, p0, v1

    sub-double v9, v5, v7

    cmpl-double v2, v9, v2

    if-lez v2, :cond_4

    move v4, v1

    :cond_4
    if-eq p1, v4, :cond_5

    aput-wide v5, p0, v1

    aput-wide v7, p0, v0

    :cond_5
    return-void
.end method

.method public static synthetic j(Lcom/trans/android/AndroidGraphics2D;IILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawImage$1(IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$drawImage$1(IILandroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$drawImage$2(IIIILandroid/graphics/Bitmap;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p5, v0, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$drawImage$3(Ljava/awt/Color;IILandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4, p1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$drawImage$4(Ljava/awt/Color;IIIILandroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-direct {p1, p2, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p4, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p6, p1, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$drawImage$6(IILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    int-to-float p1, p1

    int-to-float p2, p2

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3, p1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$drawImage$7(Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Lcom/trans/android/util/MatrixUtils;->convertTransformToMatrix(Ljava/awt/geom/AffineTransform;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private synthetic lambda$drawRenderedImage$5(Ljava/awt/geom/AffineTransform;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Lcom/trans/android/util/MatrixUtils;->convertTransformToMatrix(Ljava/awt/geom/AffineTransform;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$drawString$0(Ljava/text/AttributedCharacterIterator$Attribute;)Z
    .locals 1

    instance-of v0, p0, Ljava/awt/font/TextAttribute;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private restoreCanvas()V
    .locals 2

    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvasSaveCount:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvasSaveCount:I

    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    :cond_0
    return-void
.end method

.method private setCanvasClip(Ljava/awt/Shape;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Lcom/trans/android/util/PathUtils;->toAndroidPath(Ljava/awt/Shape;)Landroid/graphics/Path;

    move-result-object p1

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_0
    return-void
.end method

.method private setPaintShader(Landroid/graphics/Shader;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public static transformShape(IILjava/awt/Shape;)Ljava/awt/Shape;
    .locals 10

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p2, Ljava/awt/Rectangle;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p0, p1}, Ljava/awt/Rectangle;->translate(II)V

    return-object p2

    .line 7
    :cond_1
    instance-of v0, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_2

    .line 8
    check-cast p2, Ljava/awt/geom/Rectangle2D;

    .line 9
    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    int-to-double v2, p0

    add-double v1, v0, v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    int-to-double p0, p1

    add-double/2addr v3, p0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9

    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 10
    invoke-static {p2}, Lcom/trans/android/AndroidGraphics2D;->cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_3
    int-to-double v0, p0

    int-to-double p0, p1

    .line 11
    invoke-static {v0, v1, p0, p1}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static transformShape(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 21

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 13
    :cond_0
    instance-of v1, v0, Ljava/awt/geom/Rectangle2D;

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v1

    and-int/lit8 v1, v1, 0x30

    if-nez v1, :cond_1

    .line 14
    check-cast v0, Ljava/awt/geom/Rectangle2D;

    const/4 v1, 0x4

    new-array v1, v1, [D

    .line 15
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    const/4 v8, 0x0

    aput-wide v2, v1, v8

    .line 16
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    const/4 v9, 0x1

    aput-wide v2, v1, v9

    aget-wide v2, v1, v8

    .line 17
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    add-double/2addr v2, v4

    const/4 v10, 0x2

    aput-wide v2, v1, v10

    aget-wide v2, v1, v9

    .line 18
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    add-double/2addr v2, v4

    const/4 v11, 0x3

    aput-wide v2, v1, v11

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object/from16 v2, p0

    move-object v3, v1

    move-object v5, v1

    .line 19
    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 20
    invoke-static {v1, v0}, Lcom/trans/android/AndroidGraphics2D;->fixRectangleOrientation([DLjava/awt/geom/Rectangle2D;)V

    .line 21
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    aget-wide v13, v1, v8

    aget-wide v15, v1, v9

    aget-wide v2, v1, v10

    sub-double v17, v2, v13

    aget-wide v1, v1, v11

    sub-double v19, v1, v15

    move-object v12, v0

    invoke-direct/range {v12 .. v20}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v0

    .line 22
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/trans/android/AndroidGraphics2D;->cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    return-object v0

    .line 24
    :cond_2
    invoke-virtual/range {p0 .. p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    return-object v0
.end method

.method private updateCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-static {p0}, Lcom/trans/android/util/MatrixUtils;->convertTransformToMatrix(Ljava/awt/geom/AffineTransform;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private validateBasicStroke(Ljava/awt/BasicStroke;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/trans/android/AndroidGraphics2D;->antialiasHint:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget v6, v0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_7

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v2

    float-to-double v6, v2

    sget-wide v8, Lsun/java2d/SunGraphics2D;->MinPenSizeAA:D

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v1

    if-nez v1, :cond_1

    iput v4, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_1
    iput v3, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_2
    iput v5, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_3
    sget-object v2, Lcom/trans/android/AndroidGraphics2D;->defaultStroke:Ljava/awt/Stroke;

    if-ne v1, v2, :cond_4

    iput v4, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v1

    if-nez v1, :cond_5

    iput v4, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_5
    iput v3, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_6
    iput v5, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_7
    iget-object v6, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v6

    and-int/lit8 v6, v6, 0x24

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    goto :goto_1

    :cond_8
    iget-object v6, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v6

    iget-object v8, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v8}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v8

    iget-object v10, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v10}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v10

    iget-object v12, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v12}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v12

    mul-double v14, v6, v6

    mul-double v16, v10, v10

    add-double v14, v14, v16

    mul-double/2addr v6, v8

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v10

    mul-double/2addr v8, v8

    mul-double/2addr v12, v12

    add-double/2addr v8, v12

    mul-double/2addr v6, v6

    sub-double v12, v14, v8

    mul-double/2addr v12, v12

    add-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v14, v8

    add-double/2addr v14, v6

    div-double v6, v14, v10

    :goto_1
    sget-object v8, Lcom/trans/android/AndroidGraphics2D;->defaultStroke:Ljava/awt/Stroke;

    if-eq v1, v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    mul-double/2addr v6, v8

    :cond_9
    if-eqz v2, :cond_a

    sget-wide v8, Lsun/java2d/SunGraphics2D;->MinPenSizeAASquared:D

    goto :goto_2

    :cond_a
    const-wide v8, 0x3ff000000044b830L    # 1.000000001

    :goto_2
    cmpg-double v2, v6, v8

    if-gtz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v1

    if-nez v1, :cond_b

    iput v4, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto :goto_3

    :cond_b
    iput v3, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    goto :goto_3

    :cond_c
    iput v5, v0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    :goto_3
    return-void
.end method

.method public static synthetic w(Lcom/trans/android/AndroidGraphics2D;IIIILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/trans/android/AndroidGraphics2D;->lambda$drawImage$2(IIIILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clearRect(IIII)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    invoke-virtual {p2}, Ljava/awt/Color;->getRGB()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setCanvasClip(Ljava/awt/Shape;)V

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/trans/android/AndroidGraphics2D;->intersectShapes(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->validateCompClip()V

    return-void
.end method

.method public clipRect(IIII)V
    .locals 0

    new-instance p1, Ljava/awt/Rectangle;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->clip(Ljava/awt/Shape;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/trans/android/AndroidGraphics2D;->recycleBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/onyx/common/util/BitmapUtils;->recycle(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/awt/RenderingHints;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/trans/android/hb/HBGraphics;->close()V

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    iput-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bridge:Lcom/trans/android/ImageBridge;

    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "AndroidGraphics2D"

    const-string p2, "copyArea empty"

    invoke-static {p1, p2, p0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public create()Ljava/awt/Graphics;
    .locals 3

    new-instance v0, Lcom/trans/android/AndroidGraphics2D;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/trans/android/AndroidGraphics2D;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trans/android/AndroidGraphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/trans/android/AndroidGraphics2D;->setClip(Ljava/awt/Shape;)V

    iget-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    invoke-virtual {v1, v2}, Lcom/trans/android/hb/HBGraphics;->copy(Lcom/trans/android/hb/HBGraphics;)V

    new-instance v1, Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    iput-boolean v1, v0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    iget-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v1, v2}, Ljava/awt/RenderingHints;->add(Ljava/awt/RenderingHints;)V

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bridge:Lcom/trans/android/ImageBridge;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->bridge:Lcom/trans/android/ImageBridge;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    iput-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    iget v1, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    iput v1, v0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    iget-wide v1, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    iput-wide v1, v0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    return-object v0
.end method

.method public createStaticLayout(Ljava/lang/CharSequence;FF)Landroid/text/StaticLayout;
    .locals 8

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-static {p1, p2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int v3, p2

    new-instance p2, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p2
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->bridge:Lcom/trans/android/ImageBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/onyx/common/util/BitmapUtils;->isValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->bridge:Lcom/trans/android/ImageBridge;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/trans/android/ImageBridge;->setData(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->close()V

    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->drawTexturePaint(Ljava/awt/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/trans/android/util/PathUtils;->toAndroidPath(Ljava/awt/Shape;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p2, p5

    int-to-float p3, p6

    const/4 p4, 0x1

    iget-object p5, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    move-object p0, v0

    move-object p1, v1

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 5

    instance-of v0, p1, Lsun/font/AndroidGlyphVector;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/awt/font/GlyphVector;->getNumGlyphs()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lsun/font/AndroidGlyphVector;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lsun/font/StandardGlyphVector;->getGlyphPositions(II[F)[F

    move-result-object v0

    invoke-virtual {p1}, Lsun/font/AndroidGlyphVector;->getCi()Ljava/text/CharacterIterator;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Ljava/text/AttributedCharacterIterator;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/text/AttributedCharacterIterator;

    aget v1, v0, v1

    add-float/2addr p2, v1

    aget v0, v0, v2

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, v3, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawString(Lsun/font/AndroidGlyphVector;Ljava/text/AttributedCharacterIterator;FF)V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object p1

    aget v1, v0, v1

    add-float/2addr p2, v1

    aget v0, v0, v2

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawString(Ljava/lang/String;FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lsun/font/AndroidGlyphVector;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lsun/font/AndroidGlyphVector;->getText()Ljava/lang/String;

    move-result-object p1

    aget v1, v0, v1

    add-float/2addr p2, v1

    aget v0, v0, v2

    add-float/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawString(Ljava/lang/String;FF)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/trans/android/hb/HBGraphics;->drawGlyphVector(Lcom/trans/android/AndroidGraphics2D;Lsun/font/AndroidGlyphVector;FF)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AndroidGraphics2D"

    const-string p2, "Can\'t draw GlyphVector:%s"

    invoke-static {p1, p2, p0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 0

    .line 7
    new-instance p2, Lcom/trans/android/e;

    invoke-direct {p2, p0, p3, p4}, Lcom/trans/android/e;-><init>(Lcom/trans/android/AndroidGraphics2D;II)V

    invoke-direct {p0, p1, p2}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 7

    .line 6
    new-instance p7, Lcom/trans/android/b;

    move-object v0, p7

    move-object v1, p0

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/trans/android/b;-><init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;IIII)V

    invoke-direct {p0, p1, p7}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 6

    .line 4
    new-instance p6, Lcom/trans/android/g;

    move-object v0, p6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/trans/android/g;-><init>(Lcom/trans/android/AndroidGraphics2D;IIII)V

    invoke-direct {p0, p1, p6}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 5
    new-instance p5, Lcom/trans/android/a;

    invoke-direct {p5, p0, p4, p2, p3}, Lcom/trans/android/a;-><init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/Color;II)V

    invoke-direct {p0, p1, p5}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 0

    .line 3
    new-instance p4, Lcom/trans/android/c;

    invoke-direct {p4, p0, p2, p3}, Lcom/trans/android/c;-><init>(Lcom/trans/android/AndroidGraphics2D;II)V

    invoke-direct {p0, p1, p4}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 0

    .line 8
    new-instance p3, Lcom/trans/android/f;

    invoke-direct {p3, p0, p2}, Lcom/trans/android/f;-><init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/geom/AffineTransform;)V

    invoke-direct {p0, p1, p3}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    move-result p0

    return p0
.end method

.method public drawLayout(Landroid/text/StaticLayout;FF)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineAscent(I)I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawLine(IIII)V
    .locals 8

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, p4

    iget-object v7, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 6

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    aget v4, p1, v1

    aget v5, p2, v1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/trans/android/AndroidGraphics2D;->drawLine(IIII)V

    goto :goto_0

    :cond_0
    aget p3, p1, v0

    aget v0, p2, v0

    aget p1, p1, v2

    aget p2, p2, v2

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/trans/android/AndroidGraphics2D;->drawLine(IIII)V

    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 5

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    aget v3, p1, v0

    aget v4, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/trans/android/AndroidGraphics2D;->drawLine(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 1

    new-instance v0, Lcom/trans/android/d;

    invoke-direct {v0, p0, p2}, Lcom/trans/android/d;-><init>(Lcom/trans/android/AndroidGraphics2D;Ljava/awt/geom/AffineTransform;)V

    invoke-direct {p0, p1, v0}, Lcom/trans/android/AndroidGraphics2D;->drawAndroidImage(Ljava/lang/Object;Lcom/trans/android/AndroidGraphics2D$RenderAction;)Z

    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p5

    int-to-float p2, p6

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawStringWithHBGraphics(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawString(Ljava/lang/String;FF)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 5

    .line 2
    invoke-static {p1}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawStringWithHBGraphics(Ljava/lang/String;Ljava/util/List;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {v1, p1}, Lcom/trans/android/util/BridgeUtils;->setSpannableWithAttributeData(Landroid/text/Spannable;Ljava/util/List;)V

    .line 7
    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    invoke-static {p1, v2}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedData(Ljava/util/List;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setFont(Ljava/awt/Font;)V

    .line 8
    invoke-virtual {p0, v1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->createStaticLayout(Ljava/lang/CharSequence;FF)Landroid/text/StaticLayout;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v2}, Ljava/awt/Font;->getSize2D()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AndroidGraphics2D"

    const-string v2, "text: %s, font: %s(%.2f), x: %.2f, y: %.2f"

    invoke-static {v1, v2, v0}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawLayout(Landroid/text/StaticLayout;FF)V

    return-void
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawString(Ljava/text/AttributedCharacterIterator;FF)V

    return-void
.end method

.method public drawString(Lsun/font/AndroidGlyphVector;Ljava/text/AttributedCharacterIterator;FF)V
    .locals 5

    .line 11
    invoke-static {p2}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/sunia/HTREnginev2/pa;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pa;-><init>()V

    invoke-static {p2, v0, v1}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;Ljava/backport/function/Predicate;)Ljava/util/List;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lsun/font/StandardGlyphVector;->getFont()Ljava/awt/Font;

    move-result-object p1

    .line 14
    invoke-static {p2, p1}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedData(Ljava/util/List;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object p1

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trans/android/common/AttributedData;

    .line 16
    sget-object v3, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trans/android/common/AttributedData;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 17
    sget-object v3, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/trans/android/common/AttributedData;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setFont(Ljava/awt/Font;)V

    .line 19
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->drawStringWithHBGraphics(Ljava/lang/String;Ljava/util/List;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 20
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {v1, p2}, Lcom/trans/android/util/BridgeUtils;->setSpannableWithAttributeData(Landroid/text/Spannable;Ljava/util/List;)V

    .line 22
    invoke-virtual {p0, v1, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->createStaticLayout(Ljava/lang/CharSequence;FF)Landroid/text/StaticLayout;

    move-result-object p2

    .line 23
    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AndroidGraphics2D"

    const-string v1, "text: %s, font: %s(%.2f), x: %.2f, y: %.2f"

    invoke-static {v0, v1, p1}, Lcom/onyx/common/util/JLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0, p2, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->drawLayout(Landroid/text/StaticLayout;FF)V

    return-void
.end method

.method public drawStringWithoutHBGraphics(Ljava/text/AttributedCharacterIterator;FF)I
    .locals 2

    invoke-static {p1}, Lcom/trans/android/util/BridgeUtils;->convertCharacterIterator(Ljava/text/CharacterIterator;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/trans/android/util/BridgeUtils;->collectAttributeData(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1, p1}, Lcom/trans/android/util/BridgeUtils;->setSpannableWithAttributeData(Landroid/text/Spannable;Ljava/util/List;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    invoke-static {p1, v0}, Lcom/trans/android/util/BridgeUtils;->getFontFromAttributedData(Ljava/util/List;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setFont(Ljava/awt/Font;)V

    invoke-virtual {p0, v1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->createStaticLayout(Ljava/lang/CharSequence;FF)Landroid/text/StaticLayout;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/trans/android/AndroidGraphics2D;->drawLayout(Landroid/text/StaticLayout;FF)V

    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result p0

    return p0
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->drawTexturePaint(Ljava/awt/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/trans/android/util/PathUtils;->toAndroidPath(Ljava/awt/Shape;)Landroid/graphics/Path;

    move-result-object p1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p2, p5

    int-to-float p3, p6

    const/4 p4, 0x1

    iget-object p5, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    move-object p0, v0

    move-object p1, v1

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillOval(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 5

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    aget v3, p2, v1

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_0

    aget v3, p1, v2

    int-to-float v3, v3

    aget v4, p2, v2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget p1, p1, v1

    int-to-float p1, p1

    aget p2, p2, v1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 4

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int/2addr p1, p3

    int-to-float p1, p1

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float p1, p5

    int-to-float p2, p6

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Ljava/awt/Graphics;->finalize()V

    return-void
.end method

.method public getAndroidTextPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->untransformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 1

    .line 1
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->clipState:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0}, Ljava/awt/Rectangle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 2

    .line 3
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->clipState:I

    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    instance-of v1, v0, Ljava/awt/Rectangle;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Ljava/awt/Rectangle;

    invoke-virtual {p1, v0}, Ljava/awt/Rectangle;->setBounds(Ljava/awt/Rectangle;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/geom/RectangularShape;->setFrame(Ljava/awt/geom/Rectangle2D;)V

    .line 8
    :goto_0
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    neg-int v0, v0

    iget p0, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Ljava/awt/Rectangle;->translate(II)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->getClip()Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/geom/RectangularShape;->setFrame(Ljava/awt/geom/Rectangle2D;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    return-object p1

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null rectangle parameter"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    return-object p0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public getFontMetrics()Ljava/awt/FontMetrics;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/awt/Graphics;->getFontMetrics()Ljava/awt/FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 0

    .line 2
    new-instance p0, Ljava/awt/AndroidFontMetrics;

    invoke-direct {p0, p1}, Ljava/awt/AndroidFontMetrics;-><init>(Ljava/awt/Font;)V

    return-object p0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trans/android/AndroidGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    if-nez v1, :cond_3

    iget v1, v0, Lcom/trans/android/AndroidGraphics2D;->textAntialiasHint:I

    const/4 v2, 0x2

    if-nez v1, :cond_0

    iget v3, v0, Lcom/trans/android/AndroidGraphics2D;->antialiasHint:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iget v3, v0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v5

    cmpl-double v3, v5, v7

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/awt/geom/AffineTransform;

    iget-object v5, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v6

    iget-object v5, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v8

    iget-object v5, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v10

    iget-object v5, v0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v17}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/awt/font/FontRenderContext;

    invoke-static {v2, v1}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    iget v2, v0, Lcom/trans/android/AndroidGraphics2D;->fractionalMetricsHint:I

    invoke-static {v4, v2}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v2

    invoke-direct {v5, v3, v1, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/trans/android/AndroidGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    :cond_3
    iget-object v0, v0, Lcom/trans/android/AndroidGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    return-object p0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    return-object p0
.end method

.method public getScaleX()D
    .locals 4

    iget-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-static {v0}, Lcom/trans/android/util/MatrixUtils;->getScaleX(Ljava/awt/geom/AffineTransform;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AndroidGraphics2D"

    const-string v2, "Graphics scale is zero"

    invoke-static {v1, v2, v0}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    :cond_0
    iget-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    return-wide v0
.end method

.method public getSize()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initPaint()V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    invoke-static {v0}, Lcom/onyx/common/util/PaintFactory;->create(Ljava/awt/Font;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {}, Lcom/onyx/common/util/PaintFactory;->createImagePaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public intersectByArea(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;
    .locals 0

    if-nez p3, :cond_0

    instance-of p0, p1, Ljava/awt/geom/Area;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/awt/geom/Area;

    move-object p0, p1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    instance-of p0, p2, Ljava/awt/geom/Area;

    if-eqz p0, :cond_1

    move-object p0, p2

    check-cast p0, Ljava/awt/geom/Area;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/awt/geom/Area;

    invoke-direct {p0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    :goto_0
    move-object p1, p2

    :goto_1
    instance-of p2, p1, Ljava/awt/geom/Area;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/awt/geom/Area;

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/awt/geom/Area;

    invoke-direct {p2, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    move-object p1, p2

    :goto_2
    invoke-virtual {p0, p1}, Ljava/awt/geom/Area;->intersect(Ljava/awt/geom/Area;)V

    invoke-virtual {p0}, Ljava/awt/geom/Area;->isRectangular()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/awt/geom/Area;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public intersectRectShape(Ljava/awt/geom/Rectangle2D;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;
    .locals 9

    instance-of v0, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    if-nez p3, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    move-object p0, p2

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide p3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide p3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    add-double/2addr p3, v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide p3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide p3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    add-double/2addr p3, v7

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v7

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p1

    add-double/2addr v7, p1

    invoke-static {p3, p4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    sub-double p1, v5, v1

    const-wide/16 p3, 0x0

    cmpg-double p1, p1, p3

    if-ltz p1, :cond_3

    sub-double p1, v7, v3

    cmpg-double p1, p1, p3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/RectangularShape;->setFrameFromDiagonal(DDDD)V

    goto :goto_2

    :cond_3
    :goto_1
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/RectangularShape;->setFrameFromDiagonal(DDDD)V

    :goto_2
    return-object p0

    :cond_4
    invoke-interface {p2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/awt/geom/RectangularShape;->contains(Ljava/awt/geom/Rectangle2D;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    invoke-static {p2}, Lcom/trans/android/AndroidGraphics2D;->cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    :cond_5
    return-object p2

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->intersectByArea(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public intersectShapes(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;
    .locals 1

    instance-of v0, p1, Ljava/awt/Rectangle;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/awt/Rectangle;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Rectangle;

    check-cast p2, Ljava/awt/Rectangle;

    invoke-virtual {p1, p2}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->intersectRectShape(Ljava/awt/geom/Rectangle2D;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0, p2, p1, p4, p3}, Lcom/trans/android/AndroidGraphics2D;->intersectRectShape(Ljava/awt/geom/Rectangle2D;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trans/android/AndroidGraphics2D;->intersectByArea(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public invalidateTransform()V
    .locals 9

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    iget-object v3, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double v7, v0, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    iget v6, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    int-to-double v6, v6

    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    int-to-double v0, v5

    cmpl-double v0, v3, v0

    if-nez v0, :cond_1

    iput v2, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x78

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    :goto_0
    return-void
.end method

.method public makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;
    .locals 5

    new-instance v0, Ljava/awt/RenderingHints;

    invoke-direct {v0, p1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    sget-object p1, Lsun/awt/SunHints;->KEY_RENDERING:Lsun/awt/SunHints$Key;

    const/4 v1, 0x0

    iget v2, p0, Lcom/trans/android/AndroidGraphics2D;->renderHint:I

    invoke-static {v1, v2}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_ANTIALIASING:Lsun/awt/SunHints$Key;

    iget v1, p0, Lcom/trans/android/AndroidGraphics2D;->antialiasHint:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIASING:Lsun/awt/SunHints$Key;

    iget v1, p0, Lcom/trans/android/AndroidGraphics2D;->textAntialiasHint:I

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_FRACTIONALMETRICS:Lsun/awt/SunHints$Key;

    const/4 v1, 0x3

    iget v4, p0, Lcom/trans/android/AndroidGraphics2D;->fractionalMetricsHint:I

    invoke-static {v1, v4}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    iget v1, p0, Lcom/trans/android/AndroidGraphics2D;->lcdTextContrast:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/trans/android/AndroidGraphics2D;->interpolationHint:I

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lsun/awt/SunHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lsun/awt/SunHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Lsun/awt/SunHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_3

    sget-object v1, Lsun/awt/SunHints;->KEY_INTERPOLATION:Lsun/awt/SunHints$Key;

    invoke-virtual {v0, v1, p1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p1, Lsun/awt/SunHints;->KEY_STROKE_CONTROL:Lsun/awt/SunHints$Key;

    const/16 v1, 0x8

    iget p0, p0, Lcom/trans/android/AndroidGraphics2D;->strokeHint:I

    invoke-static {v1, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public rotate(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 2
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    .line 3
    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    return-void
.end method

.method public rotate(DDD)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 5
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    .line 6
    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    return-void
.end method

.method public scale(DD)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    iget-wide p3, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    mul-double/2addr p3, p1

    iput-wide p3, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    invoke-virtual {p0, p1}, Lcom/trans/android/hb/HBGraphics;->setAntiAlias(Z)V

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->bgColor:Ljava/awt/Color;

    return-void
.end method

.method public setBridge(Lcom/trans/android/ImageBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->bridge:Lcom/trans/android/ImageBridge;

    return-void
.end method

.method public setClip(IIII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    .line 3
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->validateCompClip()V

    .line 4
    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->restoreCanvas()V

    .line 5
    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setCanvasClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->fgColor:Ljava/awt/Color;

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result p1

    iput p1, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    instance-of v0, p1, Ljava/awt/AlphaComposite;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/trans/android/util/ColorUtils;->getAlphaFromComposite(Ljava/awt/Composite;)I

    move-result p1

    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorTable([II)V
    .locals 0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->hbGraphics:Lcom/trans/android/hb/HBGraphics;

    invoke-virtual {p0, p1, p2}, Lcom/trans/android/hb/HBGraphics;->setColorTable([II)Lcom/trans/android/hb/HBGraphics;

    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->composite:Ljava/awt/Composite;

    invoke-static {p1}, Lcom/trans/android/util/XfermodeUtils;->convertCompositeToXfermode(Ljava/awt/Composite;)Landroid/graphics/Xfermode;

    move-result-object v0

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p1}, Lcom/trans/android/util/ColorUtils;->getAlphaFromComposite(Ljava/awt/Composite;)I

    move-result v0

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    instance-of v1, p1, Lsun/java2d/loops/XORComposite;

    if-eqz v1, :cond_0

    check-cast p1, Lsun/java2d/loops/XORComposite;

    invoke-virtual {p1}, Lsun/java2d/loops/XORComposite;->getXorColor()Ljava/awt/Color;

    move-result-object p1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setColor(Ljava/awt/Color;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->font:Ljava/awt/Font;

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/awt/Font;->getSize2D()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/trans/android/font/FontManager;->getTypeface(Ljava/awt/Font;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontProvider(Lcom/trans/android/font/FontProvider;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/trans/android/font/FontManager;->setFontProvider(Lcom/trans/android/font/FontProvider;Z)V

    return-void
.end method

.method public setImageColorFilter(Landroid/graphics/ColorMatrix;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 2

    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setColor(Ljava/awt/Color;)V

    return-void

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/trans/android/AndroidGraphics2D;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    instance-of v0, p1, Ljava/awt/IAndroidGradient;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    check-cast p1, Ljava/awt/IAndroidGradient;

    invoke-interface {p1}, Ljava/awt/IAndroidGradient;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setPaintShader(Landroid/graphics/Shader;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/trans/android/poi/POIUtils;->isPOIPaint(Ljava/awt/Paint;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    invoke-static {p1}, Lcom/trans/android/poi/POIUtils;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setPaintShader(Landroid/graphics/Shader;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/trans/android/batik/BatikUtils;->isBatikPaint(Ljava/awt/Paint;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->awtPaint:Ljava/awt/Paint;

    invoke-static {p1}, Lcom/trans/android/batik/BatikUtils;->getShader(Ljava/awt/Paint;)Landroid/graphics/Shader;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->setPaintShader(Landroid/graphics/Shader;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/awt/TexturePaint;

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/trans/android/AndroidGraphics2D;->isTexturePaint:Z

    goto :goto_0

    :cond_5
    const-string p0, "Error param : %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AndroidGraphics2D"

    invoke-static {v0, p0, p1}, Lcom/onyx/common/util/JLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setPaintMode()V
    .locals 1

    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void
.end method

.method public setRecycleBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/trans/android/AndroidGraphics2D;->recycleBitmap:Z

    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p1, p2}, Ljava/awt/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of v0, p1, Lsun/awt/SunHints$Key;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lsun/awt/SunHints$Key;

    sget-object v1, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    if-ne v0, v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    check-cast v1, Lsun/awt/SunHints$Value;

    invoke-virtual {v1}, Lsun/awt/SunHints$Value;->getIndex()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lsun/awt/SunHints$Key;->getIndex()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    const/4 v5, 0x3

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    if-eq v0, v5, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    goto :goto_3

    :cond_1
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->resolutionVariantHint:I

    goto :goto_3

    :cond_2
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->strokeHint:I

    goto :goto_3

    :cond_3
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->lcdTextContrast:I

    goto :goto_3

    :cond_4
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->interpolationHint:I

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v5

    :cond_6
    :goto_1
    iput v3, p0, Lcom/trans/android/AndroidGraphics2D;->interpolationType:I

    goto :goto_3

    :cond_7
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->fractionalMetricsHint:I

    goto :goto_3

    :cond_8
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->textAntialiasHint:I

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->antialiasHint:I

    if-eq v0, v1, :cond_a

    move v2, v4

    :cond_a
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->antialiasHint:I

    if-eqz v2, :cond_e

    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->strokeState:I

    if-eq v0, v5, :cond_e

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast v0, Ljava/awt/BasicStroke;

    invoke-direct {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->validateBasicStroke(Ljava/awt/BasicStroke;)V

    goto :goto_3

    :cond_b
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->renderHint:I

    if-eq v0, v1, :cond_c

    move v2, v4

    :cond_c
    if-eqz v2, :cond_e

    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->renderHint:I

    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->interpolationHint:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    if-ne v1, v3, :cond_d

    goto :goto_2

    :cond_d
    move v3, v4

    :goto_2
    iput v3, p0, Lcom/trans/android/AndroidGraphics2D;->interpolationType:I

    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;

    move-result-object v0

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    :cond_f
    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not compatible with "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRenderingHints(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    new-instance v0, Ljava/awt/RenderingHints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 4

    iput-object p1, p0, Lcom/trans/android/AndroidGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast p1, Ljava/awt/BasicStroke;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_1
    invoke-virtual {p1}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/common/util/ArrayUtils;->isNullOrEmpty([F)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/awt/BasicStroke;->getDashPhase()F

    move-result v2

    new-instance v3, Landroid/graphics/DashPathEffect;

    invoke-direct {v3, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/awt/BasicStroke;->getMiterLimit()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->paint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lsun/java2d/loops/XORComposite;

    new-instance v1, Lsun/java2d/NullSurfaceData;

    invoke-direct {v1}, Lsun/java2d/NullSurfaceData;-><init>()V

    invoke-direct {v0, p1, v1}, Lsun/java2d/loops/XORComposite;-><init>(Ljava/awt/Color;Lsun/java2d/SurfaceData;)V

    invoke-virtual {p0, v0}, Lcom/trans/android/AndroidGraphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null XORColor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shear(DD)V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->shear(DD)V

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 2

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/trans/android/AndroidGraphics2D;->scaleX:D

    return-void
.end method

.method public transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-static {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->transformShape(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    iget p0, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    invoke-static {v0, p0, p1}, Lcom/trans/android/AndroidGraphics2D;->transformShape(IILjava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public translate(DD)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 9
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    .line 10
    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    return-void
.end method

.method public translate(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 2
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    .line 4
    iget p1, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    or-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 5
    :cond_0
    iput v1, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/trans/android/AndroidGraphics2D;->invalidateTransform()V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/trans/android/AndroidGraphics2D;->updateCanvas()V

    return-void
.end method

.method public untransformShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/trans/android/AndroidGraphics2D;->transformState:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/trans/android/AndroidGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/trans/android/AndroidGraphics2D;->transformShape(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/trans/android/AndroidGraphics2D;->transX:I

    neg-int v0, v0

    iget p0, p0, Lcom/trans/android/AndroidGraphics2D;->transY:I

    neg-int p0, p0

    invoke-static {v0, p0, p1}, Lcom/trans/android/AndroidGraphics2D;->transformShape(IILjava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public validateCompClip()V
    .locals 1

    iget-object v0, p0, Lcom/trans/android/AndroidGraphics2D;->usrClip:Ljava/awt/Shape;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->clipState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/trans/android/AndroidGraphics2D;->clipState:I

    :goto_0
    return-void
.end method
