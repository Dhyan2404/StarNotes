.class public Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backgroundColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private bkMode:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

.field private brushBitmap:Lorg/apache/poi/sl/draw/ImageRenderer;

.field private brushColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

.field private brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

.field private final brushTransform:Ljava/awt/geom/AffineTransform;

.field protected clip:Ljava/awt/Shape;

.field private font:Lorg/apache/poi/hwmf/record/HwmfFont;

.field private final location:Ljava/awt/geom/Point2D;

.field private mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

.field private palette:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;",
            ">;"
        }
    .end annotation
.end field

.field private paletteOffset:I

.field private penColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private penMiterLimit:D

.field private penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

.field private penWidth:D

.field private polyfillMode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

.field private rasterOp2:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

.field private rasterOp3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

.field private region:Ljava/awt/Shape;

.field private textAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

.field private textAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

.field private textColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field private textVAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

.field private textVAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

.field protected final transform:Ljava/awt/geom/AffineTransform;

.field private viewport:Ljava/awt/geom/Rectangle2D;

.field private final window:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushTransform:Ljava/awt/geom/AffineTransform;

    .line 3
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->transform:Ljava/awt/geom/AffineTransform;

    .line 4
    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    .line 6
    new-instance v1, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->location:Ljava/awt/geom/Point2D;

    .line 7
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfMapMode;->MM_ANISOTROPIC:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    .line 8
    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    sget-object v2, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-direct {v1, v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->backgroundColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 9
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_SOLID:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    .line 10
    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v1, v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 11
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfHatchStyle;->HS_HORIZONTAL:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 12
    iput-wide v3, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penWidth:D

    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    .line 14
    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v1, v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 15
    iput-wide v3, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penMiterLimit:D

    .line 16
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->OPAQUE:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->bkMode:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    .line 17
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->WINDING:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->polyfillMode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    .line 18
    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v1, v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>(Ljava/awt/Color;)V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 19
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->LEFT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    .line 20
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;->TOP:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    .line 21
    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;->RIGHT:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    .line 22
    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    .line 23
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;->R2_COPYPEN:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp2:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    .line 24
    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    .line 25
    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    .line 26
    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfFont;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfFont;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    .line 27
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfFont;->initDefaults()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;)V
    .locals 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushTransform:Ljava/awt/geom/AffineTransform;

    .line 30
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->transform:Ljava/awt/geom/AffineTransform;

    .line 31
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/Rectangle2D;

    :goto_0
    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    .line 32
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/Rectangle2D;

    :goto_1
    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    .line 33
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->location:Ljava/awt/geom/Point2D;

    invoke-virtual {v2}, Ljava/awt/geom/Point2D;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/geom/Point2D;

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->location:Ljava/awt/geom/Point2D;

    .line 34
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    .line 35
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->backgroundColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->copy()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->backgroundColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 36
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    .line 37
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {v2}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->copy()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 38
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    .line 39
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushBitmap:Lorg/apache/poi/sl/draw/ImageRenderer;

    iput-object v2, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushBitmap:Lorg/apache/poi/sl/draw/ImageRenderer;

    .line 40
    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, v2}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 41
    iget-wide v4, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penWidth:D

    iput-wide v4, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penWidth:D

    .line 42
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfPenStyle;->copy()Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    .line 43
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    if-nez v0, :cond_4

    move-object v0, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->copy()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 44
    iget-wide v4, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penMiterLimit:D

    iput-wide v4, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penMiterLimit:D

    .line 45
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->bkMode:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->bkMode:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    .line 46
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->polyfillMode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->polyfillMode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    .line 47
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->region:Ljava/awt/Shape;

    instance-of v2, v0, Ljava/awt/geom/Rectangle2D;

    if-eqz v2, :cond_5

    .line 48
    invoke-interface {v0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->region:Ljava/awt/Shape;

    goto :goto_5

    .line 49
    :cond_5
    instance-of v0, v0, Ljava/awt/geom/Area;

    if-eqz v0, :cond_6

    .line 50
    new-instance v0, Ljava/awt/geom/Area;

    iget-object v2, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->region:Ljava/awt/Shape;

    invoke-direct {v0, v2}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->region:Ljava/awt/Shape;

    .line 51
    :cond_6
    :goto_5
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->palette:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->palette:Ljava/util/List;

    .line 52
    iget v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->paletteOffset:I

    iput v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->paletteOffset:I

    .line 53
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    .line 54
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->copy()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v3

    :goto_6
    iput-object v3, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    .line 55
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    .line 56
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    .line 57
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    .line 58
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    .line 59
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp2:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp2:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    .line 60
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    .line 61
    iget-object v0, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 62
    iget-object p1, p1, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->backgroundColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method public getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->bkMode:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    return-object p0
.end method

.method public getBrushBitmap()Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushBitmap:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-object p0
.end method

.method public getBrushColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method public getBrushHatch()Lorg/apache/poi/hwmf/record/HwmfHatchStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-object p0
.end method

.method public getBrushStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-object p0
.end method

.method public getBrushTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushTransform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    return-object p0
.end method

.method public getFont()Lorg/apache/poi/hwmf/record/HwmfFont;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    return-object p0
.end method

.method public getLocation()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->location:Ljava/awt/geom/Point2D;

    invoke-virtual {p0}, Ljava/awt/geom/Point2D;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public getMapMode()Lorg/apache/poi/hwmf/record/HwmfMapMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-object p0
.end method

.method public getPalette()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->palette:Ljava/util/List;

    return-object p0
.end method

.method public getPaletteOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->paletteOffset:I

    return p0
.end method

.method public getPenColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method public getPenMiterLimit()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penMiterLimit:D

    return-wide v0
.end method

.method public getPenStyle()Lorg/apache/poi/hwmf/record/HwmfPenStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    return-object p0
.end method

.method public getPenWidth()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penWidth:D

    return-wide v0
.end method

.method public getPolyfillMode()Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->polyfillMode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    return-object p0
.end method

.method public getRasterOp2()Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp2:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-object p0
.end method

.method public getRasterOp3()Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-object p0
.end method

.method public getRegion()Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->region:Ljava/awt/Shape;

    return-object p0
.end method

.method public getTextAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0
.end method

.method public getTextAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-object p0
.end method

.method public getTextColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method public getTextVAlignAsian()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0
.end method

.method public getTextVAlignLatin()Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->transform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getViewport()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/Rectangle2D;

    :goto_0
    return-object p0
.end method

.method public getWindingRule()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getPolyfillMode()Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    move-result-object p0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;->awtFlag:I

    return p0
.end method

.method public getWindow()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public setBackgroundColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->backgroundColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method

.method public setBkMode(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->bkMode:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    return-void
.end method

.method public setBrushBitmap(Ljava/awt/image/BufferedImage;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/poi/hwmf/draw/HwmfGraphics$BufferedImageRenderer;

    invoke-direct {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics$BufferedImageRenderer;-><init>(Ljava/awt/image/BufferedImage;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushBitmap:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-void
.end method

.method public setBrushBitmap(Lorg/apache/poi/sl/draw/ImageRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushBitmap:Lorg/apache/poi/sl/draw/ImageRenderer;

    return-void
.end method

.method public setBrushColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method

.method public setBrushHatch(Lorg/apache/poi/hwmf/record/HwmfHatchStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushHatch:Lorg/apache/poi/hwmf/record/HwmfHatchStyle;

    return-void
.end method

.method public setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushStyle:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-void
.end method

.method public setBrushTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->setToIdentity()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->brushTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    :goto_0
    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->clip:Ljava/awt/Shape;

    return-void
.end method

.method public setFont(Lorg/apache/poi/hwmf/record/HwmfFont;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->font:Lorg/apache/poi/hwmf/record/HwmfFont;

    return-void
.end method

.method public setLocation(DD)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->location:Ljava/awt/geom/Point2D;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-void
.end method

.method public setLocation(Ljava/awt/geom/Point2D;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->location:Ljava/awt/geom/Point2D;

    invoke-virtual {p0, p1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    return-void
.end method

.method public setMapMode(Lorg/apache/poi/hwmf/record/HwmfMapMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->mapMode:Lorg/apache/poi/hwmf/record/HwmfMapMode;

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hwmf/record/HwmfPalette$PaletteEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->palette:Ljava/util/List;

    return-void
.end method

.method public setPaletteOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->paletteOffset:I

    return-void
.end method

.method public setPenColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method

.method public setPenMiterLimit(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penMiterLimit:D

    return-void
.end method

.method public setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penStyle:Lorg/apache/poi/hwmf/record/HwmfPenStyle;

    return-void
.end method

.method public setPenWidth(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->penWidth:D

    return-void
.end method

.method public setPolyfillMode(Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->polyfillMode:Lorg/apache/poi/hwmf/record/HwmfFill$WmfSetPolyfillMode$HwmfPolyfillMode;

    return-void
.end method

.method public setRasterOp2(Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp2:Lorg/apache/poi/hwmf/record/HwmfBinaryRasterOp;

    return-void
.end method

.method public setRasterOp3(Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->rasterOp3:Lorg/apache/poi/hwmf/record/HwmfTernaryRasterOp;

    return-void
.end method

.method public setRegion(Ljava/awt/Shape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->region:Ljava/awt/Shape;

    return-void
.end method

.method public setTextAlignAsian(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-void
.end method

.method public setTextAlignLatin(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;

    return-void
.end method

.method public setTextColor(Lorg/apache/poi/hwmf/record/HwmfColorRef;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textColor:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-void
.end method

.method public setTextVAlignAsian(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignAsian:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-void
.end method

.method public setTextVAlignLatin(Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->textVAlignLatin:Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public setViewportExt(DD)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmpl-double v6, p1, v0

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide p1

    :goto_0
    move-wide v6, p1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p3

    :goto_1
    move-wide v8, p3

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method

.method public setViewportOrg(DD)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/geom/Rectangle2D;

    iput-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->viewport:Ljava/awt/geom/Rectangle2D;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method

.method public setWindowExt(DD)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmpl-double v6, p1, v0

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide p1

    :goto_0
    move-wide v6, p1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p3

    :goto_1
    move-wide v8, p3

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method

.method public setWindowOrg(DD)V
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    iget-object v0, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    iget-object v1, p0, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->window:Ljava/awt/geom/Rectangle2D;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    return-void
.end method
