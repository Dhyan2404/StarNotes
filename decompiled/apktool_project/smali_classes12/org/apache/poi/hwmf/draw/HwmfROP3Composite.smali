.class public Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Composite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;
    }
.end annotation


# instance fields
.field private final background:I

.field private final foreground:I

.field private final hasPattern:Z

.field private final mask:[B

.field private final mask_height:I

.field private final mask_width:I

.field private final rop3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

.field private final startPnt:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;Ljava/awt/image/BufferedImage;Ljava/awt/Color;Ljava/awt/Color;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->rop3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    if-nez p4, :cond_0

    const/4 p4, 0x1

    iput p4, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask_width:I

    iput p4, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask_height:I

    new-array v0, p4, [B

    const/4 v1, 0x0

    aput-byte p4, v0, v1

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    iput v5, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask_width:I

    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v6

    iput v6, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask_height:I

    mul-int v0, v5, v6

    new-array v7, v0, [B

    iput-object v7, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask:[B

    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p5}, Ljava/awt/Color;->getRGB()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->background:I

    invoke-virtual {p6}, Ljava/awt/Color;->getRGB()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->foreground:I

    invoke-interface {p2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMinX()D

    move-result-wide p4

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getMinY()D

    move-result-wide v0

    invoke-direct {p2, p4, p5, v0, v1}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object p2, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->startPnt:Ljava/awt/geom/Point2D;

    invoke-virtual {p3}, Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;->calcCmd()Ljava/lang/String;

    move-result-object p1

    const-string p2, "P"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->hasPattern:Z

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->startPnt:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->hasPattern:Z

    return p0
.end method

.method public static synthetic access$300(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->rop3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask_height:I

    return p0
.end method

.method public static synthetic access$500(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask_width:I

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->mask:[B

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->background:I

    return p0
.end method

.method public static synthetic access$800(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;->foreground:I

    return p0
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 0

    new-instance p1, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$Rop3Context;-><init>(Lorg/apache/poi/hwmf/draw/HwmfROP3Composite;Lorg/apache/poi/hwmf/draw/HwmfROP3Composite$1;)V

    return-object p1
.end method
