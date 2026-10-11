.class public final Lsun/java2d/SunGraphics2D;
.super Ljava/awt/Graphics2D;
.source "SourceFile"


# static fields
.field public static final CLIP_DEVICE:I = 0x0

.field public static final CLIP_RECTANGULAR:I = 0x1

.field public static final CLIP_SHAPE:I = 0x2

.field public static final COMP_ALPHA:I = 0x1

.field public static final COMP_CUSTOM:I = 0x3

.field public static final COMP_ISCOPY:I = 0x0

.field public static final COMP_XOR:I = 0x2

.field private static final IDENT_ATX:Ljava/awt/geom/AffineTransform;

.field private static final IDENT_MATRIX:[D

.field private static final MINALLOCATED:I = 0x8

.field public static final MinPenSizeAA:D

.field public static final MinPenSizeAASquared:D

.field public static final MinPenSizeSquared:D = 1.000000001

.field static final NON_RECTILINEAR_TRANSFORM_MASK:I = 0x30

.field static final NON_UNIFORM_SCALE_MASK:I = 0x24

.field public static final PAINT_ALPHACOLOR:I = 0x1

.field public static final PAINT_CUSTOM:I = 0x6

.field public static final PAINT_GRADIENT:I = 0x2

.field public static final PAINT_LIN_GRADIENT:I = 0x3

.field public static final PAINT_OPAQUECOLOR:I = 0x0

.field public static final PAINT_RAD_GRADIENT:I = 0x4

.field public static final PAINT_TEXTURE:I = 0x5

.field public static final STROKE_CUSTOM:I = 0x3

.field public static final STROKE_THIN:I = 0x0

.field public static final STROKE_THINDASHED:I = 0x1

.field public static final STROKE_WIDE:I = 0x2

.field private static final TEXTARRSIZE:I = 0x11

.field public static final TRANSFORM_ANY_TRANSLATE:I = 0x2

.field public static final TRANSFORM_GENERIC:I = 0x4

.field public static final TRANSFORM_INT_TRANSLATE:I = 0x1

.field public static final TRANSFORM_ISIDENT:I = 0x0

.field public static final TRANSFORM_TRANSLATESCALE:I = 0x3

.field protected static final defaultComposite:Ljava/awt/Composite;

.field private static final defaultFont:Ljava/awt/Font;

.field protected static final defaultStroke:Ljava/awt/Stroke;

.field protected static invalidpipe:Lsun/java2d/pipe/ValidatePipe; = null

.field private static lcdTextContrastDefaultValue:I = 0x0

.field private static final slowTextTransformMask:I = 0x78

.field private static textAtArr:[Ljava/awt/geom/AffineTransform;

.field private static textTxArr:[[D


# instance fields
.field public alphafill:Lsun/java2d/loops/MaskFill;

.field public antialiasHint:I

.field public backgroundColor:Ljava/awt/Color;

.field private cachedFRC:Ljava/awt/font/FontRenderContext;

.field public clipRegion:Lsun/java2d/pipe/Region;

.field public clipState:I

.field public composite:Ljava/awt/Composite;

.field public compositeState:I

.field public constrainClip:Lsun/java2d/pipe/Region;

.field public constrainX:I

.field public constrainY:I

.field protected devClip:Lsun/java2d/pipe/Region;

.field private final devScale:I

.field public drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

.field public eargb:I

.field public fillpipe:Lsun/java2d/pipe/PixelFillPipe;

.field protected font:Ljava/awt/Font;

.field private fontInfo:Lsun/java2d/loops/FontInfo;

.field protected fontMetrics:Ljava/awt/FontMetrics;

.field public foregroundColor:Ljava/awt/Color;

.field protected fractionalMetricsHint:I

.field private glyphVectorFRC:Ljava/awt/font/FontRenderContext;

.field private glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

.field public hints:Ljava/awt/RenderingHints;

.field public imageComp:Lsun/java2d/loops/CompositeType;

.field public imagepipe:Lsun/java2d/pipe/DrawImagePipe;

.field private interpolationHint:I

.field public interpolationType:I

.field lastCAblit:Lsun/java2d/loops/Blit;

.field lastCAcomp:Ljava/awt/Composite;

.field public lcdTextContrast:I

.field public loops:Lsun/java2d/loops/RenderLoops;

.field public paint:Ljava/awt/Paint;

.field public paintState:I

.field public pixel:I

.field public renderHint:I

.field private resolutionVariantHint:I

.field public shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

.field public stroke:Ljava/awt/Stroke;

.field public strokeHint:I

.field public strokeState:I

.field public surfaceData:Lsun/java2d/SurfaceData;

.field public textAntialiasHint:I

.field public textpipe:Lsun/java2d/pipe/TextPipe;

.field public transX:I

.field public transY:I

.field public transform:Ljava/awt/geom/AffineTransform;

.field public transformState:I

.field public usrClip:Ljava/awt/Shape;

.field private validFontInfo:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/awt/BasicStroke;

    invoke-direct {v0}, Ljava/awt/BasicStroke;-><init>()V

    sput-object v0, Lsun/java2d/SunGraphics2D;->defaultStroke:Ljava/awt/Stroke;

    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    sput-object v0, Lsun/java2d/SunGraphics2D;->defaultComposite:Ljava/awt/Composite;

    new-instance v0, Ljava/awt/Font;

    const/16 v1, 0xc

    const-string v2, "Dialog"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/java2d/SunGraphics2D;->defaultFont:Ljava/awt/Font;

    const/16 v0, 0x8c

    sput v0, Lsun/java2d/SunGraphics2D;->lcdTextContrastDefaultValue:I

    new-instance v0, Lsun/java2d/pipe/ValidatePipe;

    invoke-direct {v0}, Lsun/java2d/pipe/ValidatePipe;-><init>()V

    sput-object v0, Lsun/java2d/SunGraphics2D;->invalidpipe:Lsun/java2d/pipe/ValidatePipe;

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lsun/java2d/SunGraphics2D;->IDENT_MATRIX:[D

    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    sput-object v1, Lsun/java2d/SunGraphics2D;->IDENT_ATX:Ljava/awt/geom/AffineTransform;

    const/16 v1, 0x11

    new-array v2, v1, [[D

    sput-object v2, Lsun/java2d/SunGraphics2D;->textTxArr:[[D

    new-array v2, v1, [Ljava/awt/geom/AffineTransform;

    sput-object v2, Lsun/java2d/SunGraphics2D;->textAtArr:[Ljava/awt/geom/AffineTransform;

    const/16 v2, 0x8

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v4, Lsun/java2d/SunGraphics2D;->textTxArr:[[D

    new-array v5, v0, [D

    int-to-double v6, v2

    aput-wide v6, v5, v3

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    aput-wide v9, v5, v8

    const/4 v8, 0x2

    aput-wide v9, v5, v8

    const/4 v8, 0x3

    aput-wide v6, v5, v8

    aput-object v5, v4, v2

    sget-object v4, Lsun/java2d/SunGraphics2D;->textAtArr:[Ljava/awt/geom/AffineTransform;

    new-instance v5, Ljava/awt/geom/AffineTransform;

    sget-object v6, Lsun/java2d/SunGraphics2D;->textTxArr:[[D

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lsun/java2d/pipe/RenderingEngine;->getInstance()Lsun/java2d/pipe/RenderingEngine;

    move-result-object v0

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderingEngine;->getMinimumAAPenSize()F

    move-result v0

    float-to-double v0, v0

    sput-wide v0, Lsun/java2d/SunGraphics2D;->MinPenSizeAA:D

    mul-double/2addr v0, v0

    sput-wide v0, Lsun/java2d/SunGraphics2D;->MinPenSizeAASquared:D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(Lsun/java2d/SurfaceData;Ljava/awt/Color;Ljava/awt/Color;Ljava/awt/Font;)V
    .locals 4

    invoke-direct {p0}, Ljava/awt/Graphics2D;-><init>()V

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->foregroundColor:Ljava/awt/Color;

    iput-object p3, p0, Lsun/java2d/SunGraphics2D;->backgroundColor:Ljava/awt/Color;

    new-instance p2, Ljava/awt/geom/AffineTransform;

    invoke-direct {p2}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    sget-object p2, Lsun/java2d/SunGraphics2D;->defaultStroke:Ljava/awt/Stroke;

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    sget-object p2, Lsun/java2d/SunGraphics2D;->defaultComposite:Ljava/awt/Composite;

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    iget-object p2, p0, Lsun/java2d/SunGraphics2D;->foregroundColor:Ljava/awt/Color;

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    sget-object p2, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    const/4 p2, 0x0

    iput p2, p0, Lsun/java2d/SunGraphics2D;->renderHint:I

    const/4 p3, 0x1

    iput p3, p0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    iput p2, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    iput p3, p0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    sget v0, Lsun/java2d/SunGraphics2D;->lcdTextContrastDefaultValue:I

    iput v0, p0, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    const/4 v0, -0x1

    iput v0, p0, Lsun/java2d/SunGraphics2D;->interpolationHint:I

    iput p2, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    iput p2, p0, Lsun/java2d/SunGraphics2D;->resolutionVariantHint:I

    iput p3, p0, Lsun/java2d/SunGraphics2D;->interpolationType:I

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateColor()V

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getDefaultScale()I

    move-result p2

    iput p2, p0, Lsun/java2d/SunGraphics2D;->devScale:I

    if-eq p2, p3, :cond_0

    iget-object p3, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    int-to-double v0, p2

    int-to-double v2, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Ljava/awt/geom/AffineTransform;->setToScale(DD)V

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    :cond_0
    iput-object p4, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    if-nez p4, :cond_1

    sget-object p2, Lsun/java2d/SunGraphics2D;->defaultFont:Ljava/awt/Font;

    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    :cond_1
    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getBounds()Ljava/awt/Rectangle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/java2d/SunGraphics2D;->setDevClip(Ljava/awt/Rectangle;)V

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    return-void
.end method

.method private clipTo(Ljava/awt/Rectangle;Ljava/awt/Rectangle;)Z
    .locals 4

    iget p0, p1, Ljava/awt/Rectangle;->x:I

    iget v0, p2, Ljava/awt/Rectangle;->x:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    iget v1, p2, Ljava/awt/Rectangle;->x:I

    iget v2, p2, Ljava/awt/Rectangle;->width:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p2, Ljava/awt/Rectangle;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Ljava/awt/Rectangle;->y:I

    iget v3, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v3

    iget v3, p2, Ljava/awt/Rectangle;->y:I

    iget p2, p2, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr v0, p0

    if-ltz v0, :cond_1

    sub-int/2addr p2, v1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p0, p1, Ljava/awt/Rectangle;->x:I

    iput v1, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p1, Ljava/awt/Rectangle;->width:I

    iput p2, p1, Ljava/awt/Rectangle;->height:I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    iput p0, p1, Ljava/awt/Rectangle;->width:I

    iput p0, p1, Ljava/awt/Rectangle;->height:I

    const/4 p0, 0x0

    return p0
.end method

.method public static cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0, p0}, Ljava/awt/geom/GeneralPath;-><init>(Ljava/awt/Shape;)V

    return-object v0
.end method

.method private doCopyArea(IIIIII)V
    .locals 21

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    if-lez p3, :cond_b

    if-gtz p4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v11, v8, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/SurfaceData;->copyArea(Lsun/java2d/SunGraphics2D;IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, v8, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v12

    iget-object v13, v8, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    iget-object v0, v8, Lsun/java2d/SunGraphics2D;->lastCAcomp:Ljava/awt/Composite;

    const/4 v2, 0x1

    if-eq v0, v13, :cond_3

    invoke-virtual {v11}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    iget-object v3, v8, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v4, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v4, v3}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v11}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result v4

    if-ne v4, v2, :cond_2

    sget-object v3, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    :cond_2
    invoke-static {v0, v3, v0}, Lsun/java2d/loops/Blit;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    iput-object v0, v8, Lsun/java2d/SunGraphics2D;->lastCAblit:Lsun/java2d/loops/Blit;

    iput-object v13, v8, Lsun/java2d/SunGraphics2D;->lastCAcomp:Ljava/awt/Composite;

    :cond_3
    const/4 v0, 0x6

    new-array v0, v0, [D

    int-to-double v3, v9

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    int-to-double v3, v10

    aput-wide v3, v0, v2

    add-int v3, v9, p3

    int-to-double v3, v3

    const/4 v6, 0x2

    aput-wide v3, v0, v6

    add-int v3, v10, p4

    int-to-double v3, v3

    aput-wide v3, v0, v1

    add-int v3, v9, p5

    int-to-double v3, v3

    const/4 v7, 0x4

    aput-wide v3, v0, v7

    add-int v3, v10, p6

    int-to-double v3, v3

    const/4 v9, 0x5

    aput-wide v3, v0, v9

    iget-object v3, v8, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x3

    move-object/from16 p1, v3

    move-object/from16 p2, v0

    move/from16 p3, v4

    move-object/from16 p4, v0

    move/from16 p5, v10

    move/from16 p6, v14

    invoke-virtual/range {p1 .. p6}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v3, v0, v5

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    aget-wide v4, v0, v2

    sub-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    aget-wide v4, v0, v6

    sub-double/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v4, v3

    aget-wide v5, v0, v1

    sub-double/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    sub-int/2addr v1, v2

    aget-wide v5, v0, v7

    sub-double/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v10, v5, v3

    aget-wide v5, v0, v9

    sub-double/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    sub-int v14, v0, v2

    if-gez v4, :cond_4

    mul-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    :cond_4
    move v15, v3

    move v9, v4

    if-gez v1, :cond_5

    mul-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    :cond_5
    move v7, v1

    move/from16 v16, v2

    iget-object v8, v8, Lsun/java2d/SunGraphics2D;->lastCAblit:Lsun/java2d/loops/Blit;

    if-nez v14, :cond_7

    if-lez v10, :cond_7

    if-ge v10, v9, :cond_7

    :goto_0
    if-lez v9, :cond_6

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v17

    sub-int v18, v9, v17

    add-int v5, v15, v18

    add-int v9, v5, v10

    add-int v19, v16, v14

    move-object v0, v8

    move-object v1, v11

    move-object v2, v11

    move-object v3, v13

    move-object v4, v12

    move/from16 v6, v16

    move/from16 p0, v7

    move v7, v9

    move-object/from16 v20, v8

    move/from16 v8, v19

    move/from16 v9, v17

    move-object/from16 v17, v12

    move v12, v10

    move/from16 v10, p0

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    move/from16 v7, p0

    move v10, v12

    move-object/from16 v12, v17

    move/from16 v9, v18

    move-object/from16 v8, v20

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    move/from16 p0, v7

    move-object/from16 v20, v8

    move-object/from16 v17, v12

    move v12, v10

    move/from16 v10, p0

    if-lez v14, :cond_9

    if-ge v14, v10, :cond_9

    neg-int v0, v9

    if-le v12, v0, :cond_9

    if-ge v12, v9, :cond_9

    move v7, v10

    :goto_1
    if-lez v7, :cond_8

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int v18, v7, v10

    add-int v6, v16, v18

    add-int v7, v15, v12

    add-int v8, v6, v14

    move-object/from16 v0, v20

    move-object v1, v11

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, v17

    move v5, v15

    move/from16 v19, v9

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    move/from16 v7, v18

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    move/from16 v19, v9

    add-int v7, v15, v12

    add-int v8, v16, v14

    move-object/from16 v0, v20

    move-object v1, v11

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, v17

    move v5, v15

    move/from16 v6, v16

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    return-void

    :cond_a
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "transformed copyArea not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    return-void
.end method

.method private drawHiDPIImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 19

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move/from16 v13, p6

    move/from16 v15, p7

    move/from16 v12, p8

    move/from16 v11, p9

    move-object/from16 v10, p11

    invoke-static/range {p1 .. p1}, Lsun/awt/image/SurfaceManager;->getImageScale(Ljava/awt/Image;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static/range {p1 .. p1}, Lsun/awt/image/SurfaceManager;->getImageScale(Ljava/awt/Image;)I

    move-result v1

    int-to-double v1, v1

    invoke-static {v13, v1, v2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v3

    invoke-static {v12, v1, v2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v4

    invoke-static {v15, v1, v2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v5

    invoke-static {v11, v1, v2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v1

    move/from16 v17, v1

    move/from16 v16, v4

    move v15, v5

    move-object/from16 v18, v10

    move-object v13, v14

    move v14, v3

    goto/16 :goto_1

    :cond_0
    instance-of v1, v0, Lsun/awt/image/MultiResolutionImage;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v10}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    invoke-virtual {v0, v10}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v8

    move-object v2, v0

    check-cast v2, Lsun/awt/image/MultiResolutionImage;

    move-object/from16 v1, p0

    move v3, v9

    move v4, v8

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move v14, v8

    move/from16 v8, p5

    move v15, v9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lsun/java2d/SunGraphics2D;->getResolutionVariant(Lsun/awt/image/MultiResolutionImage;IIIIIIIIII)Ljava/awt/Image;

    move-result-object v1

    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v4

    if-lez v15, :cond_1

    if-lez v14, :cond_1

    if-lez v3, :cond_1

    if-lez v4, :cond_1

    int-to-float v0, v3

    int-to-float v3, v15

    div-float/2addr v0, v3

    int-to-float v3, v4

    int-to-float v4, v14

    div-float/2addr v3, v4

    float-to-double v4, v0

    invoke-static {v13, v4, v5}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v0

    float-to-double v6, v3

    move/from16 v3, p7

    invoke-static {v3, v6, v7}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v3

    move/from16 v8, p8

    invoke-static {v8, v4, v5}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v4

    move/from16 v5, p9

    invoke-static {v5, v6, v7}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result v5

    move-object/from16 v13, p0

    move v14, v0

    move-object v0, v1

    move-object/from16 v18, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_1

    :cond_1
    move/from16 v3, p7

    move/from16 v8, p8

    move/from16 v5, p9

    goto :goto_0

    :cond_2
    move v5, v11

    move v8, v12

    move v3, v15

    :goto_0
    move-object/from16 v18, p11

    move v15, v3

    move/from16 v17, v5

    move/from16 v16, v8

    move v14, v13

    move-object/from16 v13, p0

    :goto_1
    :try_start_0
    iget-object v1, v13, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, p10

    move/from16 p1, v15

    move-object v15, v13

    move-object/from16 v13, v18

    :try_start_1
    invoke-interface/range {v1 .. v13}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v15, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v15, v13

    goto :goto_2

    :catch_0
    move/from16 p1, v15

    move-object v15, v13

    :catch_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v1, v15, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v14

    move/from16 v9, p1

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, p10

    move-object/from16 v13, v18

    invoke-interface/range {v1 .. v13}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_2
    .catch Lsun/java2d/InvalidPipeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, v15, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :goto_2
    iget-object v1, v15, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    throw v0

    :catch_2
    iget-object v0, v15, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->markDirty()V

    const/4 v0, 0x0

    return v0
.end method

.method private drawTranslatedRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/Rectangle;II)V
    .locals 27

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileGridXOffset()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileGridYOffset()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileWidth()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getTileHeight()I

    move-result v4

    iget v5, v0, Ljava/awt/Rectangle;->x:I

    invoke-static {v5, v1, v3}, Lsun/java2d/SunGraphics2D;->getTileIndex(III)I

    move-result v5

    iget v6, v0, Ljava/awt/Rectangle;->y:I

    invoke-static {v6, v2, v4}, Lsun/java2d/SunGraphics2D;->getTileIndex(III)I

    move-result v6

    iget v7, v0, Ljava/awt/Rectangle;->x:I

    iget v8, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v1, v3}, Lsun/java2d/SunGraphics2D;->getTileIndex(III)I

    move-result v7

    iget v8, v0, Ljava/awt/Rectangle;->y:I

    iget v9, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8, v2, v4}, Lsun/java2d/SunGraphics2D;->getTileIndex(III)I

    move-result v8

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v9

    new-instance v10, Ljava/awt/Rectangle;

    invoke-direct {v10}, Ljava/awt/Rectangle;-><init>()V

    :goto_0
    if-gt v6, v8, :cond_2

    move v11, v5

    :goto_1
    if-gt v11, v7, :cond_1

    move-object/from16 v12, p1

    invoke-interface {v12, v11, v6}, Ljava/awt/image/RenderedImage;->getTile(II)Ljava/awt/image/Raster;

    move-result-object v13

    mul-int v14, v11, v3

    add-int/2addr v14, v1

    iput v14, v10, Ljava/awt/Rectangle;->x:I

    mul-int v14, v6, v4

    add-int/2addr v14, v2

    iput v14, v10, Ljava/awt/Rectangle;->y:I

    iput v3, v10, Ljava/awt/Rectangle;->width:I

    iput v4, v10, Ljava/awt/Rectangle;->height:I

    move-object/from16 v14, p0

    invoke-direct {v14, v10, v0}, Lsun/java2d/SunGraphics2D;->clipTo(Ljava/awt/Rectangle;Ljava/awt/Rectangle;)Z

    instance-of v15, v13, Ljava/awt/image/WritableRaster;

    const/4 v0, 0x0

    if-eqz v15, :cond_0

    check-cast v13, Ljava/awt/image/WritableRaster;

    goto :goto_2

    :cond_0
    invoke-virtual {v13}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v15

    invoke-virtual {v13}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v13

    invoke-static {v15, v13, v0}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v13

    :goto_2
    move-object v15, v13

    iget v13, v10, Ljava/awt/Rectangle;->x:I

    iget v0, v10, Ljava/awt/Rectangle;->y:I

    move/from16 v25, v1

    iget v1, v10, Ljava/awt/Rectangle;->width:I

    move/from16 v26, v2

    iget v2, v10, Ljava/awt/Rectangle;->height:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, v13

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    invoke-virtual/range {v15 .. v22}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v0

    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v9}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    const/4 v13, 0x0

    invoke-direct {v1, v9, v0, v2, v13}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iget v0, v10, Ljava/awt/Rectangle;->x:I

    add-int v17, v0, p3

    iget v0, v10, Ljava/awt/Rectangle;->y:I

    add-int v18, v0, p4

    const/16 v19, 0x0

    iget v0, v10, Ljava/awt/Rectangle;->width:I

    iget v2, v10, Ljava/awt/Rectangle;->height:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, v1

    move/from16 v21, v0

    move/from16 v22, v2

    invoke-virtual/range {v15 .. v24}, Lsun/java2d/SunGraphics2D;->copyImage(Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    goto :goto_1

    :cond_1
    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move/from16 v25, v1

    move/from16 v26, v2

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    goto/16 :goto_0

    :cond_2
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

.method private static getImageRegion(Ljava/awt/image/RenderedImage;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;II)Ljava/awt/Rectangle;
    .locals 16

    new-instance v0, Ljava/awt/Rectangle;

    invoke-interface/range {p0 .. p0}, Ljava/awt/image/RenderedImage;->getMinX()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Ljava/awt/image/RenderedImage;->getMinY()I

    move-result v2

    invoke-interface/range {p0 .. p0}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/16 v1, 0x8

    :try_start_0
    new-array v8, v1, [D

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v2

    int-to-double v2, v2

    const/4 v9, 0x2

    aput-wide v2, v8, v9

    const/4 v10, 0x0

    aput-wide v2, v8, v10

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x6

    aput-wide v2, v8, v4

    const/4 v4, 0x4

    aput-wide v2, v8, v4

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x5

    aput-wide v2, v8, v4

    const/4 v11, 0x1

    aput-wide v2, v8, v11

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v2

    int-to-double v2, v2

    const/4 v4, 0x7

    aput-wide v2, v8, v4

    const/4 v4, 0x3

    aput-wide v2, v8, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->inverseTransform([DI[DII)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v2, p3

    move-object v3, v8

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->inverseTransform([DI[DII)V

    aget-wide v2, v8, v10

    aget-wide v4, v8, v11

    move-wide v6, v4

    move-wide v10, v6

    move v12, v9

    move-wide v4, v2

    :cond_0
    :goto_0
    if-ge v12, v1, :cond_4

    add-int/lit8 v13, v12, 0x1

    aget-wide v14, v8, v12

    cmpg-double v12, v14, v2

    if-gez v12, :cond_1

    move-wide v2, v14

    goto :goto_1

    :cond_1
    cmpl-double v12, v14, v4

    if-lez v12, :cond_2

    move-wide v4, v14

    :cond_2
    :goto_1
    add-int/lit8 v12, v13, 0x1

    aget-wide v13, v8, v13

    cmpg-double v15, v13, v6

    if-gez v15, :cond_3

    move-wide v6, v13

    goto :goto_0

    :cond_3
    cmpl-double v15, v13, v10

    if-lez v15, :cond_0

    move-wide v10, v13

    goto :goto_0

    :cond_4
    double-to-int v1, v2

    sub-int v1, v1, p4

    sub-double/2addr v4, v2

    mul-int/lit8 v2, p4, 0x2

    int-to-double v2, v2

    add-double/2addr v4, v2

    double-to-int v2, v4

    double-to-int v3, v6

    sub-int v3, v3, p5

    sub-double/2addr v10, v6

    mul-int/lit8 v4, p5, 0x2

    int-to-double v4, v4

    add-double/2addr v10, v4

    double-to-int v4, v10

    new-instance v5, Ljava/awt/Rectangle;

    invoke-direct {v5, v1, v3, v2, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v5, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private getResolutionVariant(Lsun/awt/image/MultiResolutionImage;IIIIIIIIII)Ljava/awt/Image;
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_4

    if-gtz p3, :cond_0

    goto :goto_2

    :cond_0
    sub-int/2addr p10, p8

    sub-int/2addr p11, p9

    if-eqz p10, :cond_4

    if-nez p11, :cond_1

    goto :goto_2

    :cond_1
    iget-object p8, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p8}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result p8

    sub-int/2addr p6, p4

    sub-int/2addr p7, p5

    and-int/lit8 p4, p8, -0x42

    if-nez p4, :cond_2

    int-to-double p4, p6

    int-to-double p6, p7

    goto :goto_1

    :cond_2
    and-int/lit8 p4, p8, -0x48

    if-nez p4, :cond_3

    int-to-double p4, p6

    iget-object p6, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p6}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide p8

    mul-double/2addr p4, p8

    int-to-double p6, p7

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide p8

    goto :goto_0

    :cond_3
    int-to-double p4, p6

    iget-object p6, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p6}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide p8

    iget-object p6, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p6}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v0

    invoke-static {p8, p9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p8

    mul-double/2addr p4, p8

    int-to-double p6, p7

    iget-object p8, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p8}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide p8

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    invoke-static {p8, p9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p8

    :goto_0
    mul-double/2addr p6, p8

    :goto_1
    int-to-double p8, p2

    mul-double/2addr p8, p4

    int-to-double p4, p10

    div-double/2addr p8, p4

    invoke-static {p8, p9}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    double-to-int p0, p4

    int-to-double p2, p3

    mul-double/2addr p2, p6

    int-to-double p4, p11

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-interface {p1, p0, p2}, Lsun/awt/image/MultiResolutionImage;->getResolutionVariant(II)Ljava/awt/Image;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static getTileIndex(III)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    rsub-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    :cond_0
    div-int/2addr p0, p2

    return p0
.end method

.method private isHiDPIImage(Ljava/awt/Image;)Z
    .locals 2

    invoke-static {p1}, Lsun/awt/image/SurfaceManager;->getImageScale(Ljava/awt/Image;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget p0, p0, Lsun/java2d/SunGraphics2D;->resolutionVariantHint:I

    if-eq p0, v1, :cond_0

    instance-of p0, p1, Lsun/awt/image/MultiResolutionImage;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private static isIntegerTranslation(Ljava/awt/geom/AffineTransform;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v3

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v5

    double-to-int p0, v3

    int-to-double v7, p0

    cmpl-double p0, v3, v7

    if-nez p0, :cond_1

    double-to-int p0, v5

    int-to-double v3, p0

    cmpl-double p0, v5, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public static isRotated([D)Z
    .locals 9

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/4 v3, 0x3

    aget-wide v3, p0, v3

    cmpl-double v3, v1, v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    aget-wide v5, p0, v4

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_0

    const/4 v3, 0x2

    aget-wide v5, p0, v3

    cmpl-double p0, v5, v7

    if-nez p0, :cond_0

    cmpl-double p0, v1, v7

    if-lez p0, :cond_0

    return v0

    :cond_0
    return v4
.end method

.method private revalidateAll()V
    .locals 3

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->getReplacement()Lsun/java2d/SurfaceData;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    if-nez v0, :cond_0

    sget-object v0, Lsun/java2d/NullSurfaceData;->theInstance:Lsun/java2d/SurfaceData;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    :cond_0
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->setDevClip(Ljava/awt/Rectangle;)V

    iget v0, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateColor()V

    :cond_1
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    instance-of v1, v0, Lsun/java2d/loops/XORComposite;

    if-eqz v1, :cond_2

    check-cast v0, Lsun/java2d/loops/XORComposite;

    invoke-virtual {v0}, Lsun/java2d/loops/XORComposite;->getXorColor()Ljava/awt/Color;

    move-result-object v0

    new-instance v1, Lsun/java2d/loops/XORComposite;

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-direct {v1, v0, v2}, Lsun/java2d/loops/XORComposite;-><init>(Ljava/awt/Color;Lsun/java2d/SurfaceData;)V

    invoke-virtual {p0, v1}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    :cond_2
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validatePipe()V

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

    .line 10
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    int-to-double p0, p1

    add-double/2addr v3, p0

    .line 11
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    .line 12
    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v9

    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 13
    invoke-static {p2}, Lsun/java2d/SunGraphics2D;->cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_3
    int-to-double v0, p0

    int-to-double p0, p1

    .line 14
    invoke-static {v0, v1, p0, p1}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    .line 15
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

    .line 16
    :cond_0
    instance-of v1, v0, Ljava/awt/geom/Rectangle2D;

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v1

    and-int/lit8 v1, v1, 0x30

    if-nez v1, :cond_1

    .line 18
    check-cast v0, Ljava/awt/geom/Rectangle2D;

    const/4 v1, 0x4

    new-array v1, v1, [D

    .line 19
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    const/4 v8, 0x0

    aput-wide v2, v1, v8

    .line 20
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    const/4 v9, 0x1

    aput-wide v2, v1, v9

    aget-wide v2, v1, v8

    .line 21
    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v4

    add-double/2addr v2, v4

    const/4 v10, 0x2

    aput-wide v2, v1, v10

    aget-wide v2, v1, v9

    .line 22
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

    .line 23
    invoke-virtual/range {v2 .. v7}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 24
    invoke-static {v1, v0}, Lsun/java2d/SunGraphics2D;->fixRectangleOrientation([DLjava/awt/geom/Rectangle2D;)V

    .line 25
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

    .line 26
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-static/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    return-object v0

    .line 28
    :cond_2
    invoke-virtual/range {p0 .. p1}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object v0

    return-object v0
.end method

.method private validateBasicStroke(Ljava/awt/BasicStroke;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget v6, v0, Lsun/java2d/SunGraphics2D;->transformState:I

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

    iput v4, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_1
    iput v3, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_2
    iput v5, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_3
    sget-object v2, Lsun/java2d/SunGraphics2D;->defaultStroke:Ljava/awt/Stroke;

    if-ne v1, v2, :cond_4

    iput v4, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

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

    iput v4, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_5
    iput v3, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_6
    iput v5, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto/16 :goto_3

    :cond_7
    iget-object v6, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v6

    and-int/lit8 v6, v6, 0x24

    if-nez v6, :cond_8

    iget-object v6, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    goto :goto_1

    :cond_8
    iget-object v6, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v6}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v6

    iget-object v8, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v8}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v8

    iget-object v10, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v10}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v10

    iget-object v12, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

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
    sget-object v8, Lsun/java2d/SunGraphics2D;->defaultStroke:Ljava/awt/Stroke;

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

    iput v4, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto :goto_3

    :cond_b
    iput v3, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    goto :goto_3

    :cond_c
    iput v5, v0, Lsun/java2d/SunGraphics2D;->strokeState:I

    :goto_3
    return-void
.end method


# virtual methods
.method public addRenderingHints(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lsun/awt/SunHints;->KEY_RENDERING:Lsun/awt/SunHints$Key;

    if-eq v2, v3, :cond_1

    sget-object v3, Lsun/awt/SunHints;->KEY_ANTIALIASING:Lsun/awt/SunHints$Key;

    if-eq v2, v3, :cond_1

    sget-object v3, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIASING:Lsun/awt/SunHints$Key;

    if-eq v2, v3, :cond_1

    sget-object v3, Lsun/awt/SunHints;->KEY_FRACTIONALMETRICS:Lsun/awt/SunHints$Key;

    if-eq v2, v3, :cond_1

    sget-object v3, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    if-eq v2, v3, :cond_1

    sget-object v3, Lsun/awt/SunHints;->KEY_STROKE_CONTROL:Lsun/awt/SunHints$Key;

    if-eq v2, v3, :cond_1

    sget-object v3, Lsun/awt/SunHints;->KEY_INTERPOLATION:Lsun/awt/SunHints$Key;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v3, v2

    check-cast v3, Ljava/awt/RenderingHints$Key;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lsun/java2d/SunGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lsun/java2d/SunGraphics2D;->makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->putAll(Ljava/util/Map;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public checkFontInfo(Lsun/java2d/loops/FontInfo;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/java2d/loops/FontInfo;
    .locals 15

    move-object v0, p0

    if-nez p1, :cond_0

    new-instance v1, Lsun/java2d/loops/FontInfo;

    invoke-direct {v1}, Lsun/java2d/loops/FontInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/awt/Font;->getSize2D()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/awt/Font;->isTransformed()Z

    move-result v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    const/4 v12, 0x4

    if-eqz v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v3

    float-to-double v13, v2

    invoke-virtual {v3, v13, v14, v13, v14}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getType()I

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v13

    double-to-float v2, v13

    iput v2, v1, Lsun/java2d/loops/FontInfo;->originX:F

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v13

    double-to-float v2, v13

    iput v2, v1, Lsun/java2d/loops/FontInfo;->originY:F

    iget v13, v1, Lsun/java2d/loops/FontInfo;->originX:F

    neg-float v13, v13

    float-to-double v13, v13

    neg-float v2, v2

    float-to-double v9, v2

    invoke-virtual {v3, v13, v14, v9, v10}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    iget v2, v0, Lsun/java2d/SunGraphics2D;->transformState:I

    if-lt v2, v8, :cond_1

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    new-array v9, v12, [D

    iput-object v9, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    invoke-virtual {v2, v9}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    new-instance v2, Ljava/awt/geom/AffineTransform;

    iget-object v9, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    invoke-direct {v2, v9}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    invoke-virtual {v3, v2}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lsun/java2d/SunGraphics2D;->IDENT_MATRIX:[D

    iput-object v2, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    sget-object v2, Lsun/java2d/SunGraphics2D;->IDENT_ATX:Ljava/awt/geom/AffineTransform;

    :goto_1
    new-array v9, v12, [D

    iput-object v9, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    invoke-virtual {v3, v9}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v13

    cmpl-double v6, v9, v6

    if-eqz v6, :cond_2

    mul-double/2addr v9, v9

    mul-double/2addr v13, v13

    add-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v6, v4

    double-to-int v4, v6

    iput v4, v1, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    :goto_2
    move-object v11, v2

    move-object v12, v3

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x0

    iput v3, v1, Lsun/java2d/loops/FontInfo;->originY:F

    iput v3, v1, Lsun/java2d/loops/FontInfo;->originX:F

    iget v3, v0, Lsun/java2d/SunGraphics2D;->transformState:I

    if-lt v3, v8, :cond_6

    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    new-array v9, v12, [D

    iput-object v9, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    invoke-virtual {v3, v9}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    new-instance v3, Ljava/awt/geom/AffineTransform;

    iget-object v9, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    invoke-direct {v3, v9}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    new-array v9, v12, [D

    iput-object v9, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v12, :cond_4

    iget-object v10, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    iget-object v13, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    aget-wide v13, v13, v9

    float-to-double v11, v2

    mul-double/2addr v13, v11

    aput-wide v13, v10, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x4

    goto :goto_3

    :cond_4
    new-instance v9, Ljava/awt/geom/AffineTransform;

    iget-object v10, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    invoke-direct {v9, v10}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    iget-object v10, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v10}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v10

    iget-object v12, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v12}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v12

    cmpl-double v6, v10, v6

    if-eqz v6, :cond_5

    mul-double/2addr v10, v10

    mul-double/2addr v12, v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    :cond_5
    float-to-double v6, v2

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v6, v4

    double-to-int v2, v6

    iput v2, v1, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    move-object v11, v3

    move-object v12, v9

    goto :goto_6

    :cond_6
    float-to-int v3, v2

    int-to-float v9, v3

    cmpl-float v9, v2, v9

    if-nez v9, :cond_7

    const/16 v9, 0x8

    if-lt v3, v9, :cond_7

    const/16 v9, 0x11

    if-ge v3, v9, :cond_7

    sget-object v4, Lsun/java2d/SunGraphics2D;->textTxArr:[[D

    aget-object v4, v4, v3

    iput-object v4, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    sget-object v4, Lsun/java2d/SunGraphics2D;->textAtArr:[Ljava/awt/geom/AffineTransform;

    aget-object v4, v4, v3

    iput v3, v1, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    goto :goto_4

    :cond_7
    float-to-double v9, v2

    add-double/2addr v9, v4

    double-to-int v3, v9

    iput v3, v1, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_8

    const/4 v3, 0x4

    new-array v4, v3, [D

    float-to-double v2, v2

    const/4 v5, 0x0

    aput-wide v2, v4, v5

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    aput-wide v6, v4, v5

    aput-wide v2, v4, v8

    iput-object v4, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    new-instance v2, Ljava/awt/geom/AffineTransform;

    iget-object v3, v1, Lsun/java2d/loops/FontInfo;->glyphTx:[D

    invoke-direct {v2, v3}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    move-object v3, v2

    goto :goto_5

    :cond_8
    move-object v3, v4

    :goto_5
    sget-object v2, Lsun/java2d/SunGraphics2D;->IDENT_MATRIX:[D

    iput-object v2, v1, Lsun/java2d/loops/FontInfo;->devTx:[D

    sget-object v2, Lsun/java2d/SunGraphics2D;->IDENT_ATX:Ljava/awt/geom/AffineTransform;

    goto/16 :goto_2

    :goto_6
    invoke-static/range {p2 .. p2}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v2

    iput-object v2, v1, Lsun/java2d/loops/FontInfo;->font2D:Lsun/font/Font2D;

    iget v5, v0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    if-nez v5, :cond_9

    const/4 v2, 0x0

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    move v14, v5

    const/4 v2, 0x0

    :goto_7
    iput-boolean v2, v1, Lsun/java2d/loops/FontInfo;->lcdSubPixPos:Z

    if-nez p3, :cond_a

    iget v2, v0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    goto :goto_8

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/awt/SunHints$Value;

    invoke-virtual {v2}, Lsun/awt/SunHints$Value;->getIndex()I

    move-result v2

    :goto_8
    move v3, v2

    if-nez v3, :cond_c

    iget v0, v0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    :goto_9
    const/4 v13, 0x2

    goto :goto_c

    :cond_b
    const/4 v13, 0x1

    goto :goto_c

    :cond_c
    if-ne v3, v8, :cond_d

    iget-object v0, v1, Lsun/java2d/loops/FontInfo;->font2D:Lsun/font/Font2D;

    iget v2, v1, Lsun/java2d/loops/FontInfo;->pixelHeight:I

    invoke-virtual {v0, v2}, Lsun/font/Font2D;->useAAForPtSize(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_d
    const/4 v2, 0x4

    if-lt v3, v2, :cond_12

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v2, p0}, Lsun/java2d/SurfaceData;->canRenderLCDText(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_9

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, v1, Lsun/java2d/loops/FontInfo;->lcdRGBOrder:Z

    const/4 v2, 0x5

    if-ne v3, v2, :cond_f

    const/4 v2, 0x0

    iput-boolean v2, v1, Lsun/java2d/loops/FontInfo;->lcdRGBOrder:Z

    const/4 v3, 0x4

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    const/4 v4, 0x7

    if-ne v3, v4, :cond_10

    iput-boolean v2, v1, Lsun/java2d/loops/FontInfo;->lcdRGBOrder:Z

    const/4 v3, 0x6

    :cond_10
    :goto_a
    const/4 v4, 0x2

    if-ne v14, v4, :cond_11

    const/4 v4, 0x4

    if-ne v3, v4, :cond_11

    move v10, v0

    goto :goto_b

    :cond_11
    move v10, v2

    :goto_b
    iput-boolean v10, v1, Lsun/java2d/loops/FontInfo;->lcdSubPixPos:Z

    :cond_12
    move v13, v3

    :goto_c
    iput v13, v1, Lsun/java2d/loops/FontInfo;->aaHint:I

    iget-object v9, v1, Lsun/java2d/loops/FontInfo;->font2D:Lsun/font/Font2D;

    move-object/from16 v10, p2

    invoke-virtual/range {v9 .. v14}, Lsun/font/Font2D;->getStrike(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;II)Lsun/font/FontStrike;

    move-result-object v0

    iput-object v0, v1, Lsun/java2d/loops/FontInfo;->fontStrike:Lsun/font/FontStrike;

    return-object v1
.end method

.method public clearRect(IIII)V
    .locals 3

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    sget-object v2, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {p0, v2}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getBackground()Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/java2d/SunGraphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/SunGraphics2D;->fillRect(IIII)V

    invoke-virtual {p0, v1}, Lsun/java2d/SunGraphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void
.end method

.method public clip(Ljava/awt/Shape;)V
    .locals 2

    invoke-virtual {p0, p1}, Lsun/java2d/SunGraphics2D;->transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->usrClip:Ljava/awt/Shape;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Lsun/java2d/SunGraphics2D;->intersectShapes(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->usrClip:Ljava/awt/Shape;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateCompClip()V

    return-void
.end method

.method public clipRect(IIII)V
    .locals 1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->clip(Ljava/awt/Shape;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/java2d/SunGraphics2D;

    new-instance v2, Ljava/awt/geom/AffineTransform;

    iget-object v3, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v2, v3}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v2, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/awt/RenderingHints;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/RenderingHints;

    iput-object v2, v1, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    :cond_0
    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lsun/java2d/loops/FontInfo;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/java2d/loops/FontInfo;

    iput-object v2, v1, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    goto :goto_0

    :cond_1
    iput-object v0, v1, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    :cond_2
    :goto_0
    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lsun/java2d/loops/FontInfo;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/java2d/loops/FontInfo;

    iput-object v2, v1, Lsun/java2d/SunGraphics2D;->glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFRC:Ljava/awt/font/FontRenderContext;

    iput-object p0, v1, Lsun/java2d/SunGraphics2D;->glyphVectorFRC:Ljava/awt/font/FontRenderContext;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    return-object v0
.end method

.method public cloneTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public constrain(IIIILsun/java2d/pipe/Region;)V
    .locals 5

    or-int v0, p1, p2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lsun/java2d/SunGraphics2D;->translate(II)V

    :cond_0
    iget p1, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 p2, 0x3

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p3, p4}, Lsun/java2d/SunGraphics2D;->clipRect(IIII)V

    return-void

    :cond_1
    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide p1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v0

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lsun/java2d/SunGraphics2D;->constrainX:I

    iget-object v3, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lsun/java2d/SunGraphics2D;->constrainY:I

    invoke-static {p3, p1, p2}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result p3

    invoke-static {v2, p3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p3

    invoke-static {p4, v0, v1}, Lsun/java2d/pipe/Region;->clipScale(ID)I

    move-result p4

    invoke-static {v3, p4}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result p4

    iget-object v4, p0, Lsun/java2d/SunGraphics2D;->constrainClip:Lsun/java2d/pipe/Region;

    if-nez v4, :cond_2

    invoke-static {v2, v3, p3, p4}, Lsun/java2d/pipe/Region;->getInstanceXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2, v3, p3, p4}, Lsun/java2d/pipe/Region;->getIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object p3

    :goto_0
    if-eqz p5, :cond_3

    invoke-virtual {p5, p1, p2, v0, v1}, Lsun/java2d/pipe/Region;->getScaledRegion(DD)Lsun/java2d/pipe/Region;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lsun/java2d/pipe/Region;->getTranslatedRegion(II)Lsun/java2d/pipe/Region;

    move-result-object p1

    invoke-virtual {p3, p1}, Lsun/java2d/pipe/Region;->getIntersection(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;

    move-result-object p3

    :cond_3
    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->constrainClip:Lsun/java2d/pipe/Region;

    if-ne p3, p1, :cond_4

    return-void

    :cond_4
    iput-object p3, p0, Lsun/java2d/SunGraphics2D;->constrainClip:Lsun/java2d/pipe/Region;

    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    invoke-virtual {p1, p3}, Lsun/java2d/pipe/Region;->isInsideQuickCheck(Lsun/java2d/pipe/Region;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    invoke-virtual {p1, p3}, Lsun/java2d/pipe/Region;->getIntersection(Lsun/java2d/pipe/Region;)Lsun/java2d/pipe/Region;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateCompClip()V

    :cond_5
    return-void
.end method

.method public copyArea(IIIIII)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lsun/java2d/SunGraphics2D;->doCopyArea(IIIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    invoke-direct/range {p0 .. p6}, Lsun/java2d/SunGraphics2D;->doCopyArea(IIIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public copyImage(Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 13

    move-object v12, p0

    :try_start_0
    iget-object v1, v12, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lsun/java2d/pipe/DrawImagePipe;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v12, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v1, v12, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lsun/java2d/pipe/DrawImagePipe;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, v12, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :goto_0
    iget-object v1, v12, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    throw v0

    :catch_1
    iget-object v0, v12, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->markDirty()V

    const/4 v0, 0x0

    return v0
.end method

.method public create()Ljava/awt/Graphics;
    .locals 0

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Graphics;

    return-object p0
.end method

.method public dispose()V
    .locals 1

    sget-object v0, Lsun/java2d/NullSurfaceData;->theInstance:Lsun/java2d/SurfaceData;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    return-void
.end method

.method public draw(Ljava/awt/Shape;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {v0, p0, p1}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {v0, p0, p1}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelDrawPipe;->drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelDrawPipe;->drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawBytes([BIIII)V
    .locals 9

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    new-array v0, p3, [C

    move v1, p3

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    add-int v1, v2, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    aput-char v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {p2}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result p2

    if-eqz p2, :cond_2

    array-length p1, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/awt/font/TextLayout;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    iget-object p3, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    int-to-float p2, p4

    int-to-float p3, p5

    invoke-virtual {p1, p0, p2, p3}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v0

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lsun/java2d/pipe/TextPipe;->drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v0

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lsun/java2d/pipe/TextPipe;->drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_3
    return-void

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "bad offset/length"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "byte data is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public drawChars([CIIII)V
    .locals 8

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/awt/font/TextLayout;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    int-to-float p1, p4

    int-to-float p2, p5

    invoke-virtual {v0, p0, p1, p2}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lsun/java2d/pipe/TextPipe;->drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawChars(Lsun/java2d/SunGraphics2D;[CIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "bad offset/length"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "char data is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public drawGlyphVector(Ljava/awt/font/GlyphVector;FF)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/TextPipe;->drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/TextPipe;->drawGlyphVector(Lsun/java2d/SunGraphics2D;Ljava/awt/font/GlyphVector;FF)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "GlyphVector is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/DrawImagePipe;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 56
    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 57
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/DrawImagePipe;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 59
    throw p1

    :goto_2
    return-void
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 16

    move-object/from16 v14, p0

    move/from16 v0, p2

    move/from16 v15, p3

    move/from16 v13, p4

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    move/from16 v8, p9

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-eq v0, v13, :cond_6

    if-eq v15, v12, :cond_6

    if-eq v11, v9, :cond_6

    if-ne v10, v8, :cond_1

    goto/16 :goto_3

    .line 27
    :cond_1
    invoke-direct/range {p0 .. p1}, Lsun/java2d/SunGraphics2D;->isHiDPIImage(Ljava/awt/Image;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-direct/range {p0 .. p11}, Lsun/java2d/SunGraphics2D;->drawHiDPIImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    :cond_2
    sub-int v1, v9, v11

    sub-int v2, v13, v0

    if-ne v1, v2, :cond_5

    sub-int v2, v8, v10

    sub-int v3, v12, v15

    if-ne v2, v3, :cond_5

    if-le v9, v11, :cond_3

    move v3, v0

    move v7, v1

    move v5, v11

    goto :goto_0

    :cond_3
    sub-int v0, v11, v9

    move v7, v0

    move v5, v9

    move v3, v13

    :goto_0
    if-le v8, v10, :cond_4

    move v8, v2

    move v6, v10

    move v4, v15

    goto :goto_1

    :cond_4
    sub-int v0, v10, v8

    move v6, v8

    move v4, v12

    move v8, v0

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 29
    invoke-virtual/range {v1 .. v10}, Lsun/java2d/SunGraphics2D;->copyImage(Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    .line 30
    :cond_5
    :try_start_0
    iget-object v1, v14, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v1 .. v13}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v1, v14, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 32
    :catch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 33
    iget-object v1, v14, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-interface/range {v1 .. v13}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iget-object v1, v14, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :goto_2
    iget-object v1, v14, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 35
    throw v0

    .line 36
    :catch_1
    iget-object v0, v14, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->markDirty()V

    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_3
    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/image/ImageObserver;)Z
    .locals 12

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    .line 26
    invoke-virtual/range {v0 .. v11}, Lsun/java2d/SunGraphics2D;->drawImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 14

    move-object v10, p0

    move-object v0, p1

    move/from16 v11, p4

    move/from16 v12, p5

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v11, :cond_4

    if-nez v12, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    .line 3
    invoke-virtual {p1, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v13

    .line 4
    invoke-direct {p0, p1}, Lsun/java2d/SunGraphics2D;->isHiDPIImage(Ljava/awt/Image;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int v5, p2, v11

    add-int v6, p3, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move v10, v13

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 5
    invoke-direct/range {v1 .. v12}, Lsun/java2d/SunGraphics2D;->drawHiDPIImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    :cond_2
    if-ne v11, v9, :cond_3

    if-ne v12, v13, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 6
    invoke-virtual/range {v1 .. v10}, Lsun/java2d/SunGraphics2D;->copyImage(Ljava/awt/Image;IIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    .line 7
    :cond_3
    :try_start_0
    iget-object v1, v10, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, v10, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 10
    iget-object v1, v10, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lsun/java2d/pipe/DrawImagePipe;->scaleImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v1, v10, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :goto_0
    iget-object v1, v10, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 12
    throw v0

    .line 13
    :catch_1
    iget-object v0, v10, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->markDirty()V

    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lsun/java2d/SunGraphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z
    .locals 13

    move-object v8, p0

    move-object v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lsun/java2d/SunGraphics2D;->isHiDPIImage(Ljava/awt/Image;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    .line 17
    invoke-virtual {p1, v1}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v10

    add-int v5, p2, v9

    add-int v6, p3, v10

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move v8, v11

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 18
    invoke-direct/range {v1 .. v12}, Lsun/java2d/SunGraphics2D;->drawHiDPIImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0

    .line 19
    :cond_1
    :try_start_0
    iget-object v1, v8, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lsun/java2d/pipe/DrawImagePipe;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object v1, v8, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 21
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 22
    iget-object v1, v8, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lsun/java2d/pipe/DrawImagePipe;->copyImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    iget-object v1, v8, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :goto_0
    iget-object v1, v8, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 24
    throw v0

    .line 25
    :catch_1
    iget-object v0, v8, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->markDirty()V

    const/4 v0, 0x0

    return v0
.end method

.method public drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lsun/java2d/SunGraphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result p0

    return p0
.end method

.method public drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z
    .locals 15

    move-object v13, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v12, p3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v1, :cond_3

    .line 37
    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    invoke-direct/range {p0 .. p1}, Lsun/java2d/SunGraphics2D;->isHiDPIImage(Ljava/awt/Image;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v9

    .line 40
    invoke-virtual {v0, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v10

    .line 41
    new-instance v14, Ljava/awt/geom/AffineTransform;

    iget-object v2, v13, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v14, v2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    .line 42
    invoke-virtual {p0, v1}, Lsun/java2d/SunGraphics2D;->transform(Ljava/awt/geom/AffineTransform;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move v5, v9

    move v6, v10

    move-object/from16 v12, p3

    .line 43
    invoke-direct/range {v1 .. v12}, Lsun/java2d/SunGraphics2D;->drawHiDPIImage(Ljava/awt/Image;IIIIIIIILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    .line 44
    iget-object v1, v13, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v14}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 45
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return v0

    .line 46
    :cond_2
    :try_start_0
    iget-object v2, v13, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    invoke-interface {v2, p0, v0, v1, v12}, Lsun/java2d/pipe/DrawImagePipe;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v1, v13, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 48
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 49
    iget-object v2, v13, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    invoke-interface {v2, p0, v0, v1, v12}, Lsun/java2d/pipe/DrawImagePipe;->transformImage(Lsun/java2d/SunGraphics2D;Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    move-result v0
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    iget-object v1, v13, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    return v0

    :goto_0
    iget-object v1, v13, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 51
    throw v0

    .line 52
    :catch_1
    iget-object v0, v13, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->markDirty()V

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    .line 53
    invoke-virtual/range {v1 .. v6}, Lsun/java2d/SunGraphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/Color;Ljava/awt/image/ImageObserver;)Z

    move-result v0

    return v0
.end method

.method public drawLine(IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawOval(IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawOval(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawOval(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawPolygon([I[II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/PixelDrawPipe;->drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/PixelDrawPipe;->drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawPolyline([I[II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/PixelDrawPipe;->drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/PixelDrawPipe;->drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawRect(IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelDrawPipe;->drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawRenderableImage(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/geom/AffineTransform;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1, p2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    new-instance p2, Ljava/awt/image/renderable/RenderContext;

    invoke-direct {p2, v1}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v0
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p2, Ljava/awt/image/renderable/RenderContext;

    invoke-direct {p2, v0}, Ljava/awt/image/renderable/RenderContext;-><init>(Ljava/awt/geom/AffineTransform;)V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    :goto_0
    invoke-interface {p1, p2}, Ljava/awt/image/renderable/RenderableImage;->createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lsun/java2d/SunGraphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0, p1, p2, v1}, Lsun/java2d/SunGraphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    return-void

    :cond_1
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_2

    invoke-static {p2}, Lsun/java2d/SunGraphics2D;->isIntegerTranslation(Ljava/awt/geom/AffineTransform;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    :goto_1
    move v9, v2

    :try_start_0
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v5
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-object v4, p1

    move-object v7, p2

    move v8, v9

    invoke-static/range {v4 .. v9}, Lsun/java2d/SunGraphics2D;->getImageRegion(Ljava/awt/image/RenderedImage;Lsun/java2d/pipe/Region;Ljava/awt/geom/AffineTransform;Ljava/awt/geom/AffineTransform;II)Ljava/awt/Rectangle;

    move-result-object v0

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    if-lez v2, :cond_8

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    if-gtz v2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v2

    double-to-int p2, v2

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/java2d/SunGraphics2D;->drawTranslatedRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/Rectangle;II)V

    return-void

    :cond_5
    invoke-interface {p1, v0}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v4

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getMinX()I

    move-result v2

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getMinY()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v0

    sub-int v6, v3, v0

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    if-ne v7, v0, :cond_6

    invoke-virtual {v4}, Ljava/awt/image/Raster;->getHeight()I

    move-result v0

    if-eq v8, v0, :cond_7

    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v4

    :cond_7
    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/awt/geom/AffineTransform;

    int-to-double v5, v2

    int-to-double v2, v3

    invoke-virtual {p2, v5, v6, v2, v3}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    invoke-direct {v0, p1, v4, v2, v1}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-virtual {p0, v0, p2, v1}, Lsun/java2d/SunGraphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    :catch_0
    :cond_8
    :goto_2
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelDrawPipe;->drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelDrawPipe;->drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public drawString(Ljava/lang/String;FF)V
    .locals 10

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/awt/font/TextLayout;

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v0, p0, p2, p3}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    .line 14
    :cond_1
    :try_start_0
    iget-object v3, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    float-to-double v6, p2

    float-to-double v8, p3

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v3 .. v9}, Lsun/java2d/pipe/TextPipe;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 16
    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 17
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    float-to-double v3, p2

    float-to-double v5, p3

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 19
    throw p1

    :goto_2
    return-void

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "String is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {v0}, Ljava/awt/Font;->hasLayoutAttributes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/awt/font/TextLayout;

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    int-to-float p1, p2

    int-to-float p2, p3

    invoke-virtual {v0, p0, p1, p2}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    .line 4
    :cond_1
    :try_start_0
    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    int-to-double v4, p2

    int-to-double v6, p3

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lsun/java2d/pipe/TextPipe;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    .line 7
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    int-to-double v3, p2

    int-to-double v5, p3

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lsun/java2d/pipe/TextPipe;->drawString(Lsun/java2d/SunGraphics2D;Ljava/lang/String;DD)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    .line 9
    throw p1

    :goto_2
    return-void

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "String is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;FF)V
    .locals 2

    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    .line 27
    invoke-virtual {v0, p0, p2, p3}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "AttributedCharacterIterator is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public drawString(Ljava/text/AttributedCharacterIterator;II)V
    .locals 2

    if-eqz p1, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/awt/font/TextLayout;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/awt/font/TextLayout;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    int-to-float p1, p2

    int-to-float p2, p3

    .line 23
    invoke-virtual {v0, p0, p1, p2}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    return-void

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "AttributedCharacterIterator is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fill(Ljava/awt/Shape;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {v0, p0, p1}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {v0, p0, p1}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelFillPipe;->fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelFillPipe;->fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public fillOval(IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelFillPipe;->fillOval(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelFillPipe;->fillOval(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public fillPolygon([I[II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/PixelFillPipe;->fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/java2d/pipe/PixelFillPipe;->fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public fillRect(IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelFillPipe;->fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lsun/java2d/pipe/PixelFillPipe;->fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelFillPipe;->fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_1
    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lsun/java2d/pipe/PixelFillPipe;->fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    :try_end_1
    .catch Lsun/java2d/InvalidPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->markDirty()V

    throw p1

    :goto_2
    return-void
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->backgroundColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getClip()Ljava/awt/Shape;
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->usrClip:Ljava/awt/Shape;

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->untransformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getClipBounds()Ljava/awt/Rectangle;
    .locals 1

    .line 1
    iget v0, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0}, Ljava/awt/Rectangle;-><init>()V

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getClipBounds(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;
    .locals 2

    .line 3
    iget v0, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->usrClip:Ljava/awt/Shape;

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
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transX:I

    neg-int v0, v0

    iget p0, p0, Lsun/java2d/SunGraphics2D;->transY:I

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Ljava/awt/Rectangle;->translate(II)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getClip()Ljava/awt/Shape;

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

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->foregroundColor:Ljava/awt/Color;

    return-object p0
.end method

.method public getCompClip()Lsun/java2d/pipe/Region;
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/java2d/SunGraphics2D;->revalidateAll()V

    :cond_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    return-object p0
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    return-object p0
.end method

.method public getDestination()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getDestination()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    if-nez v0, :cond_0

    sget-object v0, Lsun/java2d/SunGraphics2D;->defaultFont:Ljava/awt/Font;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    :cond_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public getFontInfo()Lsun/java2d/loops/FontInfo;
    .locals 3

    iget-boolean v0, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsun/java2d/SunGraphics2D;->checkFontInfo(Lsun/java2d/loops/FontInfo;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/java2d/loops/FontInfo;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    :cond_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    return-object p0
.end method

.method public getFontMetrics()Ljava/awt/FontMetrics;
    .locals 2

    .line 1
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    .line 3
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/font/FontDesignMetrics;->getMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontDesignMetrics;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    return-object v0
.end method

.method public getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;
    .locals 2

    .line 4
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    if-ne p1, v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v0

    invoke-static {p1, v0}, Lsun/font/FontDesignMetrics;->getMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/font/FontDesignMetrics;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    if-ne v1, p1, :cond_1

    .line 7
    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    :cond_1
    return-object v0
.end method

.method public getFontRenderContext()Ljava/awt/font/FontRenderContext;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    if-nez v1, :cond_3

    iget v1, v0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    const/4 v2, 0x2

    if-nez v1, :cond_0

    iget v3, v0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iget v3, v0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_1

    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v3}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v5

    cmpl-double v3, v5, v7

    if-nez v3, :cond_1

    iget-object v3, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/awt/geom/AffineTransform;

    iget-object v5, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v6

    iget-object v5, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v8

    iget-object v5, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v10

    iget-object v5, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

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

    iget v2, v0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    invoke-static {v4, v2}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v2

    invoke-direct {v5, v3, v1, v2}, Ljava/awt/font/FontRenderContext;-><init>(Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v0, Lsun/java2d/SunGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    :cond_3
    iget-object v0, v0, Lsun/java2d/SunGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    return-object v0
.end method

.method public getGVFontInfo(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/java2d/loops/FontInfo;
    .locals 2

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lsun/java2d/loops/FontInfo;->font:Ljava/awt/Font;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFRC:Ljava/awt/font/FontRenderContext;

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_0
    iput-object p2, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFRC:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p0, v0, p1, p2}, Lsun/java2d/SunGraphics2D;->checkFontInfo(Lsun/java2d/loops/FontInfo;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)Lsun/java2d/loops/FontInfo;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

    return-object p1
.end method

.method public getPaint()Ljava/awt/Paint;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    return-object p0
.end method

.method public getRenderingHint(Ljava/awt/RenderingHints$Key;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/awt/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lsun/awt/SunHints$Key;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    check-cast p1, Lsun/awt/SunHints$Key;

    invoke-virtual {p1}, Lsun/awt/SunHints$Key;->getIndex()I

    move-result p1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_9

    const/4 v3, 0x5

    if-eq p1, v3, :cond_5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    return-object v1

    :cond_2
    iget p0, p0, Lsun/java2d/SunGraphics2D;->resolutionVariantHint:I

    invoke-static {v0, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0

    :cond_3
    iget p0, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    invoke-static {v0, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_5
    iget p0, p0, Lsun/java2d/SunGraphics2D;->interpolationHint:I

    if-eqz p0, :cond_8

    if-eq p0, v0, :cond_7

    if-eq p0, v2, :cond_6

    return-object v1

    :cond_6
    sget-object p0, Lsun/awt/SunHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    return-object p0

    :cond_7
    sget-object p0, Lsun/awt/SunHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    return-object p0

    :cond_8
    sget-object p0, Lsun/awt/SunHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    return-object p0

    :cond_9
    iget p0, p0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    invoke-static {v3, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0

    :cond_a
    iget p0, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    invoke-static {v2, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0

    :cond_b
    iget p0, p0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    invoke-static {v0, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p1, 0x0

    iget p0, p0, Lsun/java2d/SunGraphics2D;->renderHint:I

    invoke-static {p1, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    return-object p0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/awt/RenderingHints;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/RenderingHints;

    return-object p0
.end method

.method public getStroke()Ljava/awt/Stroke;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    return-object p0
.end method

.method public final getSurfaceData()Lsun/java2d/SurfaceData;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lsun/java2d/SunGraphics2D;->constrainX:I

    iget v2, v0, Lsun/java2d/SunGraphics2D;->constrainY:I

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Lsun/java2d/SunGraphics2D;->devScale:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/awt/geom/AffineTransform;

    iget-object v0, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v1, v0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v1

    :cond_0
    iget v1, v0, Lsun/java2d/SunGraphics2D;->devScale:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v12, v3, v1

    new-instance v1, Ljava/awt/geom/AffineTransform;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    iget v2, v0, Lsun/java2d/SunGraphics2D;->constrainX:I

    neg-int v2, v2

    int-to-double v2, v2

    mul-double v14, v2, v12

    iget v2, v0, Lsun/java2d/SunGraphics2D;->constrainY:I

    neg-int v2, v2

    int-to-double v2, v2

    mul-double v16, v2, v12

    move-object v5, v1

    move-wide v6, v12

    invoke-direct/range {v5 .. v17}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    iget-object v0, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    return-object v1
.end method

.method public hit(Ljava/awt/Rectangle;Ljava/awt/Shape;Z)Z
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    invoke-interface {p3, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p2}, Lsun/java2d/SunGraphics2D;->transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    iget p3, p0, Lsun/java2d/SunGraphics2D;->constrainX:I

    iget v0, p0, Lsun/java2d/SunGraphics2D;->constrainY:I

    or-int/2addr p3, v0

    if-eqz p3, :cond_1

    new-instance p3, Ljava/awt/Rectangle;

    invoke-direct {p3, p1}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Rectangle;)V

    iget p1, p0, Lsun/java2d/SunGraphics2D;->constrainX:I

    iget p0, p0, Lsun/java2d/SunGraphics2D;->constrainY:I

    invoke-virtual {p3, p1, p0}, Ljava/awt/Rectangle;->translate(II)V

    move-object p1, p3

    :cond_1
    invoke-interface {p2, p1}, Ljava/awt/Shape;->intersects(Ljava/awt/geom/Rectangle2D;)Z

    move-result p0

    return p0
.end method

.method public hitClip(IIII)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-lez p3, :cond_3

    if-gtz p4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v4, v0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const/16 v4, 0x8

    new-array v4, v4, [D

    int-to-double v6, v1

    aput-wide v6, v4, v3

    int-to-double v8, v2

    aput-wide v8, v4, v5

    add-int v1, v1, p3

    int-to-double v10, v1

    const/4 v1, 0x2

    aput-wide v10, v4, v1

    const/4 v12, 0x3

    aput-wide v8, v4, v12

    const/4 v13, 0x4

    aput-wide v6, v4, v13

    add-int v2, v2, p4

    int-to-double v6, v2

    const/4 v2, 0x5

    aput-wide v6, v4, v2

    const/4 v14, 0x6

    aput-wide v10, v4, v14

    const/4 v15, 0x7

    aput-wide v6, v4, v15

    iget-object v6, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object v7, v4

    move-object v9, v4

    invoke-virtual/range {v6 .. v11}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v6, v4, v3

    aget-wide v8, v4, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    aget-wide v8, v4, v13

    aget-wide v10, v4, v14

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    aget-wide v7, v4, v5

    aget-wide v9, v4, v12

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    aget-wide v9, v4, v2

    move/from16 p1, v6

    aget-wide v5, v4, v15

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    aget-wide v6, v4, v3

    aget-wide v8, v4, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aget-wide v8, v4, v13

    aget-wide v13, v4, v14

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    const/4 v6, 0x1

    aget-wide v7, v4, v6

    aget-wide v9, v4, v12

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    aget-wide v8, v4, v2

    aget-wide v12, v4, v15

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    move/from16 v6, p1

    goto :goto_0

    :cond_1
    iget v4, v0, Lsun/java2d/SunGraphics2D;->transX:I

    add-int v6, v1, v4

    iget v1, v0, Lsun/java2d/SunGraphics2D;->transY:I

    add-int v5, v2, v1

    add-int v1, p3, v6

    add-int v2, p4, v5

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v1, v2}, Lsun/java2d/pipe/Region;->intersectsQuickCheckXYXY(IIII)Z

    move-result v0
    :try_end_0
    .catch Lsun/java2d/InvalidPipeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_3
    :goto_1
    return v3
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

    invoke-static {p2}, Lsun/java2d/SunGraphics2D;->cloneShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    :cond_5
    return-object p2

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/SunGraphics2D;->intersectByArea(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/SunGraphics2D;->intersectRectShape(Ljava/awt/geom/Rectangle2D;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0, p2, p1, p4, p3}, Lsun/java2d/SunGraphics2D;->intersectRectShape(Ljava/awt/geom/Rectangle2D;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/java2d/SunGraphics2D;->intersectByArea(Ljava/awt/Shape;Ljava/awt/Shape;ZZ)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public invalidatePipe()V
    .locals 1

    sget-object v0, Lsun/java2d/SunGraphics2D;->invalidpipe:Lsun/java2d/pipe/ValidatePipe;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    return-void
.end method

.method public invalidateTransform()V
    .locals 13

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    iget v1, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transY:I

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transX:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v5

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double v11, v5, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v0, v11

    iput v0, p0, Lsun/java2d/SunGraphics2D;->transX:I

    add-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v0, v9

    iput v0, p0, Lsun/java2d/SunGraphics2D;->transY:I

    iget v9, p0, Lsun/java2d/SunGraphics2D;->transX:I

    int-to-double v9, v9

    cmpl-double v5, v5, v9

    if-nez v5, :cond_1

    int-to-double v5, v0

    cmpl-double v0, v7, v5

    if-nez v0, :cond_1

    iput v4, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x78

    if-nez v0, :cond_3

    iput v2, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transY:I

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transX:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transY:I

    iput v3, p0, Lsun/java2d/SunGraphics2D;->transX:I

    :goto_0
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    if-ge v0, v2, :cond_4

    if-lt v1, v2, :cond_5

    :cond_4
    const/4 v4, 0x0

    iput-object v4, p0, Lsun/java2d/SunGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    iput-boolean v3, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    iput-object v4, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    iput-object v4, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    :cond_5
    iget v0, p0, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast v0, Ljava/awt/BasicStroke;

    invoke-direct {p0, v0}, Lsun/java2d/SunGraphics2D;->validateBasicStroke(Ljava/awt/BasicStroke;)V

    :cond_6
    return-void
.end method

.method public makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;
    .locals 5

    new-instance v0, Ljava/awt/RenderingHints;

    invoke-direct {v0, p1}, Ljava/awt/RenderingHints;-><init>(Ljava/util/Map;)V

    sget-object p1, Lsun/awt/SunHints;->KEY_RENDERING:Lsun/awt/SunHints$Key;

    const/4 v1, 0x0

    iget v2, p0, Lsun/java2d/SunGraphics2D;->renderHint:I

    invoke-static {v1, v2}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_ANTIALIASING:Lsun/awt/SunHints$Key;

    iget v1, p0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIASING:Lsun/awt/SunHints$Key;

    iget v1, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_FRACTIONALMETRICS:Lsun/awt/SunHints$Key;

    const/4 v1, 0x3

    iget v4, p0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    invoke-static {v1, v4}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    iget v1, p0, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lsun/java2d/SunGraphics2D;->interpolationHint:I

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

    iget p0, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    invoke-static {v1, p0}, Lsun/awt/SunHints$Value;->get(II)Lsun/awt/SunHints$Value;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public rotate(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    .line 2
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public rotate(DDD)V
    .locals 7

    .line 3
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    .line 4
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public scale(DD)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->backgroundColor:Ljava/awt/Color;

    return-void
.end method

.method public setClip(IIII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->setClip(Ljava/awt/Shape;)V

    return-void
.end method

.method public setClip(Ljava/awt/Shape;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsun/java2d/SunGraphics2D;->transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->usrClip:Ljava/awt/Shape;

    .line 3
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateCompClip()V

    return-void
.end method

.method public setColor(Ljava/awt/Color;)V
    .locals 3

    if-eqz p1, :cond_5

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->foregroundColor:Ljava/awt/Color;

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateColor()V

    iget p1, p0, Lsun/java2d/SunGraphics2D;->eargb:I

    shr-int/lit8 p1, p1, 0x18

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget p1, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput v1, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    if-ne p1, v0, :cond_4

    iput v1, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    iput v0, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    iget-object p1, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    if-ne p1, v2, :cond_4

    iput v0, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 5

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljava/awt/AlphaComposite;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/awt/AlphaComposite;

    invoke-static {v0}, Lsun/java2d/loops/CompositeType;->forAlphaComposite(Ljava/awt/AlphaComposite;)Lsun/java2d/loops/CompositeType;

    move-result-object v0

    sget-object v3, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    if-ne v0, v3, :cond_2

    iget v3, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    if-eqz v3, :cond_4

    if-le v3, v2, :cond_1

    iget-object v3, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {v3}, Ljava/awt/Transparency;->getTransparency()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    sget-object v3, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    if-eq v0, v3, :cond_4

    sget-object v3, Lsun/java2d/loops/CompositeType;->Src:Lsun/java2d/loops/CompositeType;

    if-eq v0, v3, :cond_4

    sget-object v3, Lsun/java2d/loops/CompositeType;->Clear:Lsun/java2d/loops/CompositeType;

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v3}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result v3

    if-ne v3, v2, :cond_1

    sget-object v3, Lsun/java2d/loops/CompositeType;->SrcIn:Lsun/java2d/loops/CompositeType;

    if-ne v0, v3, :cond_1

    :cond_4
    :goto_0
    move v3, v1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lsun/java2d/loops/XORComposite;

    if-eqz v0, :cond_6

    sget-object v0, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    const/4 v3, 0x2

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_a

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->checkCustomComposite()V

    sget-object v0, Lsun/java2d/loops/CompositeType;->General:Lsun/java2d/loops/CompositeType;

    const/4 v3, 0x3

    :goto_1
    iget v4, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-ne v4, v3, :cond_7

    iget-object v4, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    if-eq v4, v0, :cond_8

    :cond_7
    iput v3, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    iput-boolean v1, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    :cond_8
    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    iget p1, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    if-gt p1, v2, :cond_9

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateColor()V

    :cond_9
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null Composite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDevClip(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->constrainClip:Lsun/java2d/pipe/Region;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->getInstanceXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/java2d/pipe/Region;->getIntersectionXYWH(IIII)Lsun/java2d/pipe/Region;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->validateCompClip()V

    return-void
.end method

.method public setDevClip(Ljava/awt/Rectangle;)V
    .locals 3

    .line 5
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/java2d/SunGraphics2D;->setDevClip(IIII)V

    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    if-eq p1, v0, :cond_3

    iget v0, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    sget-object v1, Lsun/java2d/SunGraphics2D;->invalidpipe:Lsun/java2d/pipe/ValidatePipe;

    if-eq v0, v1, :cond_2

    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/awt/Font;->isTransformed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->fontInfo:Lsun/java2d/loops/FontInfo;

    if-eqz v0, :cond_1

    iget v0, v0, Lsun/java2d/loops/FontInfo;->aaHint:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1}, Lsun/font/FontUtilities;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Font;->getSize()I

    move-result v3

    invoke-virtual {v1, v3}, Lsun/font/Font2D;->useAAForPtSize(I)Z

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    sget-object v0, Lsun/java2d/SunGraphics2D;->invalidpipe:Lsun/java2d/pipe/ValidatePipe;

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    :cond_2
    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->font:Ljava/awt/Font;

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    iput-boolean v2, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    :cond_3
    return-void
.end method

.method public setPaint(Ljava/awt/Paint;)V
    .locals 3

    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {p0, p1}, Lsun/java2d/SunGraphics2D;->setColor(Ljava/awt/Color;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Ljava/awt/Transparency;->getTransparency()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-eqz p1, :cond_3

    iput v2, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-nez p1, :cond_3

    iput v0, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setPaintMode()V
    .locals 1

    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void
.end method

.method public setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p1, p2}, Ljava/awt/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    instance-of v0, p1, Lsun/awt/SunHints$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Lsun/awt/SunHints$Key;

    sget-object v2, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    if-ne v0, v2, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    check-cast v2, Lsun/awt/SunHints$Value;

    invoke-virtual {v2}, Lsun/awt/SunHints$Value;->getIndex()I

    move-result v2

    :goto_0
    invoke-virtual {v0}, Lsun/awt/SunHints$Key;->getIndex()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_11

    const/4 v6, 0x3

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_c

    if-eq v0, v6, :cond_a

    const/4 v7, 0x5

    if-eq v0, v7, :cond_6

    const/16 v3, 0x64

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    move v0, v5

    move v2, v0

    move v4, v2

    goto/16 :goto_d

    :cond_1
    iget v0, p0, Lsun/java2d/SunGraphics2D;->resolutionVariantHint:I

    if-eq v0, v2, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    iput v2, p0, Lsun/java2d/SunGraphics2D;->resolutionVariantHint:I

    goto/16 :goto_c

    :cond_3
    iget v0, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    if-eq v0, v2, :cond_4

    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v5

    :goto_2
    iput v2, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    goto/16 :goto_c

    :cond_5
    iput v2, p0, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    move v0, v5

    :goto_3
    move v2, v0

    goto/16 :goto_d

    :cond_6
    iput v2, p0, Lsun/java2d/SunGraphics2D;->interpolationHint:I

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    move v3, v6

    :cond_8
    :goto_4
    iget v0, p0, Lsun/java2d/SunGraphics2D;->interpolationType:I

    if-eq v0, v3, :cond_9

    move v0, v4

    goto :goto_5

    :cond_9
    move v0, v5

    :goto_5
    iput v3, p0, Lsun/java2d/SunGraphics2D;->interpolationType:I

    goto :goto_c

    :cond_a
    iget v0, p0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    if-eq v0, v2, :cond_b

    move v0, v4

    goto :goto_6

    :cond_b
    move v0, v5

    :goto_6
    iput v2, p0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    goto :goto_3

    :cond_c
    iget v0, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    if-eq v0, v2, :cond_d

    move v0, v4

    goto :goto_7

    :cond_d
    move v0, v5

    :goto_7
    iput v2, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    goto :goto_3

    :cond_e
    iget v0, p0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-eq v0, v2, :cond_f

    move v0, v4

    goto :goto_8

    :cond_f
    move v0, v5

    :goto_8
    iput v2, p0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-eqz v0, :cond_14

    iget v2, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    if-nez v2, :cond_10

    move v2, v4

    goto :goto_9

    :cond_10
    move v2, v5

    :goto_9
    iget v3, p0, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-eq v3, v6, :cond_15

    iget-object v3, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast v3, Ljava/awt/BasicStroke;

    invoke-direct {p0, v3}, Lsun/java2d/SunGraphics2D;->validateBasicStroke(Ljava/awt/BasicStroke;)V

    goto :goto_d

    :cond_11
    iget v0, p0, Lsun/java2d/SunGraphics2D;->renderHint:I

    if-eq v0, v2, :cond_12

    move v0, v4

    goto :goto_a

    :cond_12
    move v0, v5

    :goto_a
    if-eqz v0, :cond_14

    iput v2, p0, Lsun/java2d/SunGraphics2D;->renderHint:I

    iget v6, p0, Lsun/java2d/SunGraphics2D;->interpolationHint:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_14

    if-ne v2, v3, :cond_13

    goto :goto_b

    :cond_13
    move v3, v4

    :goto_b
    iput v3, p0, Lsun/java2d/SunGraphics2D;->interpolationType:I

    :cond_14
    :goto_c
    move v2, v5

    :cond_15
    :goto_d
    if-eqz v4, :cond_18

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    if-eqz v2, :cond_16

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->fontMetrics:Ljava/awt/FontMetrics;

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->cachedFRC:Ljava/awt/font/FontRenderContext;

    iput-boolean v5, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->glyphVectorFontInfo:Lsun/java2d/loops/FontInfo;

    :cond_16
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void

    :cond_18
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    if-nez v0, :cond_19

    invoke-virtual {p0, v1}, Lsun/java2d/SunGraphics2D;->makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;

    move-result-object v0

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    :cond_19
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    invoke-virtual {p0, p1, p2}, Ljava/awt/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1a
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    const/4 v0, 0x0

    iput v0, p0, Lsun/java2d/SunGraphics2D;->renderHint:I

    const/4 v1, 0x1

    iput v1, p0, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    iput v0, p0, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    iput v1, p0, Lsun/java2d/SunGraphics2D;->fractionalMetricsHint:I

    sget v2, Lsun/java2d/SunGraphics2D;->lcdTextContrastDefaultValue:I

    iput v2, p0, Lsun/java2d/SunGraphics2D;->lcdTextContrast:I

    const/4 v2, -0x1

    iput v2, p0, Lsun/java2d/SunGraphics2D;->interpolationHint:I

    iput v1, p0, Lsun/java2d/SunGraphics2D;->interpolationType:I

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lsun/awt/SunHints;->KEY_RENDERING:Lsun/awt/SunHints$Key;

    if-eq v3, v4, :cond_1

    sget-object v4, Lsun/awt/SunHints;->KEY_ANTIALIASING:Lsun/awt/SunHints$Key;

    if-eq v3, v4, :cond_1

    sget-object v4, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIASING:Lsun/awt/SunHints$Key;

    if-eq v3, v4, :cond_1

    sget-object v4, Lsun/awt/SunHints;->KEY_FRACTIONALMETRICS:Lsun/awt/SunHints$Key;

    if-eq v3, v4, :cond_1

    sget-object v4, Lsun/awt/SunHints;->KEY_TEXT_ANTIALIAS_LCD_CONTRAST:Ljava/awt/RenderingHints$Key;

    if-eq v3, v4, :cond_1

    sget-object v4, Lsun/awt/SunHints;->KEY_STROKE_CONTROL:Lsun/awt/SunHints$Key;

    if-eq v3, v4, :cond_1

    sget-object v4, Lsun/awt/SunHints;->KEY_INTERPOLATION:Lsun/awt/SunHints$Key;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v4, v3

    check-cast v4, Ljava/awt/RenderingHints$Key;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lsun/java2d/SunGraphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lsun/java2d/SunGraphics2D;->makeHints(Ljava/util/Map;)Ljava/awt/RenderingHints;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->hints:Ljava/awt/RenderingHints;

    :cond_3
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    return-void
.end method

.method public setStroke(Ljava/awt/Stroke;)V
    .locals 2

    if-eqz p1, :cond_2

    iget v0, p0, Lsun/java2d/SunGraphics2D;->strokeState:I

    iput-object p1, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    instance-of v1, p1, Ljava/awt/BasicStroke;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/awt/BasicStroke;

    invoke-direct {p0, p1}, Lsun/java2d/SunGraphics2D;->validateBasicStroke(Ljava/awt/BasicStroke;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lsun/java2d/SunGraphics2D;->strokeState:I

    :goto_0
    iget p1, p0, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null Stroke"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lsun/java2d/SunGraphics2D;->constrainX:I

    iget v3, v0, Lsun/java2d/SunGraphics2D;->constrainY:I

    or-int v4, v2, v3

    if-nez v4, :cond_0

    iget v4, v0, Lsun/java2d/SunGraphics2D;->devScale:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2, v1}, Ljava/awt/geom/AffineTransform;->setTransform(Ljava/awt/geom/AffineTransform;)V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    iget v5, v0, Lsun/java2d/SunGraphics2D;->devScale:I

    int-to-double v6, v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    int-to-double v12, v5

    int-to-double v14, v2

    int-to-double v2, v3

    move-wide/from16 v16, v2

    move-object v3, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    invoke-virtual/range {v3 .. v15}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    iget-object v2, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2, v1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public setXORMode(Ljava/awt/Color;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lsun/java2d/loops/XORComposite;

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-direct {v0, p1, v1}, Lsun/java2d/loops/XORComposite;-><init>(Ljava/awt/Color;Lsun/java2d/SurfaceData;)V

    invoke-virtual {p0, v0}, Lsun/java2d/SunGraphics2D;->setComposite(Ljava/awt/Composite;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null XORColor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shear(DD)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->shear(DD)V

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public transformBounds(Ljava/awt/Rectangle;Ljava/awt/geom/AffineTransform;)Ljava/awt/Rectangle;
    .locals 0

    invoke-virtual {p2}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lsun/java2d/SunGraphics2D;->transformShape(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public transformShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-static {p0, p1}, Lsun/java2d/SunGraphics2D;->transformShape(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transX:I

    iget p0, p0, Lsun/java2d/SunGraphics2D;->transY:I

    invoke-static {v0, p0, p1}, Lsun/java2d/SunGraphics2D;->transformShape(IILjava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public translate(DD)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 2
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    return-void
.end method

.method public translate(II)V
    .locals 5

    .line 3
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    int-to-double v1, p1

    int-to-double v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 4
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 5
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transX:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/java2d/SunGraphics2D;->transX:I

    .line 6
    iget p1, p0, Lsun/java2d/SunGraphics2D;->transY:I

    add-int/2addr p1, p2

    iput p1, p0, Lsun/java2d/SunGraphics2D;->transY:I

    or-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 7
    :cond_0
    iput v1, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidateTransform()V

    :goto_0
    return-void
.end method

.method public untransformShape(Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    :try_start_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-static {p0, p1}, Lsun/java2d/SunGraphics2D;->transformShape(Ljava/awt/geom/AffineTransform;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_1
    iget v0, p0, Lsun/java2d/SunGraphics2D;->transX:I

    neg-int v0, v0

    iget p0, p0, Lsun/java2d/SunGraphics2D;->transY:I

    neg-int p0, p0

    invoke-static {v0, p0, p1}, Lsun/java2d/SunGraphics2D;->transformShape(IILjava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public final validateColor()V
    .locals 3

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Clear:Lsun/java2d/loops/CompositeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->foregroundColor:Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    iget v1, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    check-cast v1, Ljava/awt/AlphaComposite;

    invoke-virtual {v1}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result v1

    ushr-int/lit8 v2, v0, 0x18

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    :cond_1
    :goto_0
    iput v0, p0, Lsun/java2d/SunGraphics2D;->eargb:I

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v1, v0}, Lsun/java2d/SurfaceData;->pixelFor(I)I

    move-result v0

    iput v0, p0, Lsun/java2d/SunGraphics2D;->pixel:I

    return-void
.end method

.method public validateCompClip()V
    .locals 8

    iget v0, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->usrClip:Ljava/awt/Shape;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v1, :cond_0

    iput v2, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    iget-object v1, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    goto :goto_1

    :cond_0
    instance-of v4, v1, Ljava/awt/geom/Rectangle2D;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iput v5, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    instance-of v4, v1, Ljava/awt/Rectangle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    check-cast v1, Ljava/awt/Rectangle;

    invoke-virtual {v4, v1}, Lsun/java2d/pipe/Region;->getIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;

    move-result-object v1

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    invoke-interface {v1}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    invoke-virtual {v4, v1}, Lsun/java2d/pipe/Region;->getIntersection(Ljava/awt/Rectangle;)Lsun/java2d/pipe/Region;

    move-result-object v1

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v1

    const/4 v4, 0x4

    new-array v4, v4, [I

    invoke-static {p0}, Lsun/java2d/pipe/LoopPipe;->getFillSSI(Lsun/java2d/SunGraphics2D;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object v6

    :try_start_0
    iget-object v7, p0, Lsun/java2d/SunGraphics2D;->devClip:Lsun/java2d/pipe/Region;

    invoke-virtual {v6, v7}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputArea(Lsun/java2d/pipe/Region;)V

    invoke-virtual {v6, v1}, Lsun/java2d/pipe/ShapeSpanIterator;->appendPath(Ljava/awt/geom/PathIterator;)V

    invoke-virtual {v6, v4}, Lsun/java2d/pipe/ShapeSpanIterator;->getPathBox([I)V

    invoke-static {v4}, Lsun/java2d/pipe/Region;->getInstance([I)Lsun/java2d/pipe/Region;

    move-result-object v1

    invoke-virtual {v1, v6}, Lsun/java2d/pipe/Region;->appendSpans(Lsun/java2d/pipe/SpanIterator;)V

    iput-object v1, p0, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    invoke-virtual {v1}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    iput v5, p0, Lsun/java2d/SunGraphics2D;->clipState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    :goto_1
    iget v1, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    if-eq v0, v1, :cond_5

    if-eq v1, v3, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    iput-boolean v2, p0, Lsun/java2d/SunGraphics2D;->validFontInfo:Z

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->invalidatePipe()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v6}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p0
.end method

.method public validatePipe()V
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0}, Lsun/java2d/SurfaceData;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {v0, p0}, Lsun/java2d/SurfaceData;->validatePipe(Lsun/java2d/SunGraphics2D;)V

    return-void

    :cond_0
    new-instance p0, Lsun/java2d/InvalidPipeException;

    const-string v0, "attempt to validate Pipe with invalid SurfaceData"

    invoke-direct {p0, v0}, Lsun/java2d/InvalidPipeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
