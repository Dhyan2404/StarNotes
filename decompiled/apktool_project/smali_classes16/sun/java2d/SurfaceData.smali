.class public abstract Lsun/java2d/SurfaceData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Transparency;
.implements Lsun/java2d/DisposerTarget;
.implements Lsun/java2d/StateTrackable;
.implements Lsun/java2d/Surface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/SurfaceData$PixelToPgramLoopConverter;,
        Lsun/java2d/SurfaceData$PixelToShapeLoopConverter;
    }
.end annotation


# static fields
.field protected static final AAClipColorShape:Lsun/java2d/pipe/AAShapePipe;

.field protected static final AAClipColorViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final AAClipCompShape:Lsun/java2d/pipe/AAShapePipe;

.field protected static final AAClipCompViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final AAClipPaintShape:Lsun/java2d/pipe/AAShapePipe;

.field protected static final AAClipPaintViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final AAColorShape:Lsun/java2d/pipe/AAShapePipe;

.field protected static final AAColorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final AAColorViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final AACompShape:Lsun/java2d/pipe/AAShapePipe;

.field protected static final AACompViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final AAPaintShape:Lsun/java2d/pipe/AAShapePipe;

.field protected static final AAPaintViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field static final LOOP_FOUND:I = 0x1

.field static final LOOP_NOTFOUND:I = 0x2

.field static final LOOP_UNKNOWN:I

.field public static final aaTextRenderer:Lsun/java2d/pipe/TextPipe;

.field protected static final clipColorPipe:Lsun/java2d/pipe/CompositePipe;

.field protected static final clipColorText:Lsun/java2d/pipe/TextPipe;

.field protected static final clipCompPipe:Lsun/java2d/pipe/CompositePipe;

.field protected static final clipCompText:Lsun/java2d/pipe/TextPipe;

.field protected static final clipPaintPipe:Lsun/java2d/pipe/CompositePipe;

.field protected static final clipPaintText:Lsun/java2d/pipe/TextPipe;

.field protected static final colorPipe:Lsun/java2d/pipe/AlphaColorPipe;

.field protected static final colorPrimitives:Lsun/java2d/pipe/LoopPipe;

.field protected static final colorText:Lsun/java2d/pipe/TextPipe;

.field protected static final colorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

.field protected static final colorViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

.field static compPermission:Ljava/security/Permission;

.field protected static final compPipe:Lsun/java2d/pipe/CompositePipe;

.field protected static final compShape:Lsun/java2d/pipe/SpanShapeRenderer;

.field protected static final compText:Lsun/java2d/pipe/TextPipe;

.field protected static final compViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

.field protected static final imagepipe:Lsun/java2d/pipe/DrawImagePipe;

.field public static final lcdTextRenderer:Lsun/java2d/pipe/TextPipe;

.field private static loopcache:Lsun/java2d/loops/RenderCache;

.field public static final outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

.field protected static final paintPipe:Lsun/java2d/pipe/CompositePipe;

.field protected static final paintShape:Lsun/java2d/pipe/SpanShapeRenderer;

.field protected static final paintText:Lsun/java2d/pipe/TextPipe;

.field protected static final paintViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

.field public static final solidTextRenderer:Lsun/java2d/pipe/TextPipe;


# instance fields
.field private blitProxyKey:Ljava/lang/Object;

.field private colorModel:Ljava/awt/image/ColorModel;

.field private disposerReferent:Ljava/lang/Object;

.field haveLCDLoop:I

.field havePgramSolidLoop:I

.field havePgramXORLoop:I

.field private pData:J

.field private stateDelegate:Lsun/java2d/StateTrackableDelegate;

.field private surfaceLost:Z

.field private surfaceType:Lsun/java2d/loops/SurfaceType;

.field private valid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Lsun/java2d/SurfaceData;->initIDs()V

    new-instance v2, Lsun/java2d/pipe/LoopPipe;

    invoke-direct {v2}, Lsun/java2d/pipe/LoopPipe;-><init>()V

    sput-object v2, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    new-instance v0, Lsun/java2d/pipe/OutlineTextRenderer;

    invoke-direct {v0}, Lsun/java2d/pipe/OutlineTextRenderer;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

    new-instance v0, Lsun/java2d/pipe/SolidTextRenderer;

    invoke-direct {v0}, Lsun/java2d/pipe/SolidTextRenderer;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->solidTextRenderer:Lsun/java2d/pipe/TextPipe;

    new-instance v0, Lsun/java2d/pipe/AATextRenderer;

    invoke-direct {v0}, Lsun/java2d/pipe/AATextRenderer;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->aaTextRenderer:Lsun/java2d/pipe/TextPipe;

    new-instance v0, Lsun/java2d/pipe/LCDTextRenderer;

    invoke-direct {v0}, Lsun/java2d/pipe/LCDTextRenderer;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->lcdTextRenderer:Lsun/java2d/pipe/TextPipe;

    new-instance v8, Lsun/java2d/pipe/AlphaColorPipe;

    invoke-direct {v8}, Lsun/java2d/pipe/AlphaColorPipe;-><init>()V

    sput-object v8, Lsun/java2d/SurfaceData;->colorPipe:Lsun/java2d/pipe/AlphaColorPipe;

    new-instance v0, Lsun/java2d/SurfaceData$PixelToShapeLoopConverter;

    invoke-direct {v0, v2}, Lsun/java2d/SurfaceData$PixelToShapeLoopConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;)V

    sput-object v0, Lsun/java2d/SurfaceData;->colorViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    new-instance v9, Lsun/java2d/SurfaceData$PixelToPgramLoopConverter;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lsun/java2d/SurfaceData$PixelToPgramLoopConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;Lsun/java2d/pipe/ParallelogramPipe;DDZ)V

    sput-object v9, Lsun/java2d/SurfaceData;->colorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v0, Lsun/java2d/pipe/TextRenderer;

    invoke-direct {v0, v8}, Lsun/java2d/pipe/TextRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v0, Lsun/java2d/SurfaceData;->colorText:Lsun/java2d/pipe/TextPipe;

    new-instance v0, Lsun/java2d/pipe/SpanClipRenderer;

    invoke-direct {v0, v8}, Lsun/java2d/pipe/SpanClipRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v0, Lsun/java2d/SurfaceData;->clipColorPipe:Lsun/java2d/pipe/CompositePipe;

    new-instance v1, Lsun/java2d/pipe/TextRenderer;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/TextRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->clipColorText:Lsun/java2d/pipe/TextPipe;

    new-instance v1, Lsun/java2d/pipe/AAShapePipe;

    invoke-direct {v1, v8}, Lsun/java2d/pipe/AAShapePipe;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->AAColorShape:Lsun/java2d/pipe/AAShapePipe;

    invoke-static {v1}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v2

    sput-object v2, Lsun/java2d/SurfaceData;->AAColorViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    invoke-static {v1, v8}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;Lsun/java2d/pipe/ParallelogramPipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v1

    sput-object v1, Lsun/java2d/SurfaceData;->AAColorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v1, Lsun/java2d/pipe/AAShapePipe;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/AAShapePipe;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->AAClipColorShape:Lsun/java2d/pipe/AAShapePipe;

    invoke-static {v1}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v0

    sput-object v0, Lsun/java2d/SurfaceData;->AAClipColorViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v0, Lsun/java2d/pipe/AlphaPaintPipe;

    invoke-direct {v0}, Lsun/java2d/pipe/AlphaPaintPipe;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->paintPipe:Lsun/java2d/pipe/CompositePipe;

    new-instance v1, Lsun/java2d/pipe/SpanShapeRenderer$Composite;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/SpanShapeRenderer$Composite;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->paintShape:Lsun/java2d/pipe/SpanShapeRenderer;

    new-instance v2, Lsun/java2d/pipe/PixelToShapeConverter;

    invoke-direct {v2, v1}, Lsun/java2d/pipe/PixelToShapeConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;)V

    sput-object v2, Lsun/java2d/SurfaceData;->paintViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    new-instance v1, Lsun/java2d/pipe/TextRenderer;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/TextRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->paintText:Lsun/java2d/pipe/TextPipe;

    new-instance v1, Lsun/java2d/pipe/SpanClipRenderer;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/SpanClipRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->clipPaintPipe:Lsun/java2d/pipe/CompositePipe;

    new-instance v2, Lsun/java2d/pipe/TextRenderer;

    invoke-direct {v2, v1}, Lsun/java2d/pipe/TextRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v2, Lsun/java2d/SurfaceData;->clipPaintText:Lsun/java2d/pipe/TextPipe;

    new-instance v2, Lsun/java2d/pipe/AAShapePipe;

    invoke-direct {v2, v0}, Lsun/java2d/pipe/AAShapePipe;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v2, Lsun/java2d/SurfaceData;->AAPaintShape:Lsun/java2d/pipe/AAShapePipe;

    invoke-static {v2}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v0

    sput-object v0, Lsun/java2d/SurfaceData;->AAPaintViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v0, Lsun/java2d/pipe/AAShapePipe;

    invoke-direct {v0, v1}, Lsun/java2d/pipe/AAShapePipe;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v0, Lsun/java2d/SurfaceData;->AAClipPaintShape:Lsun/java2d/pipe/AAShapePipe;

    invoke-static {v0}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v0

    sput-object v0, Lsun/java2d/SurfaceData;->AAClipPaintViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v0, Lsun/java2d/pipe/GeneralCompositePipe;

    invoke-direct {v0}, Lsun/java2d/pipe/GeneralCompositePipe;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->compPipe:Lsun/java2d/pipe/CompositePipe;

    new-instance v1, Lsun/java2d/pipe/SpanShapeRenderer$Composite;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/SpanShapeRenderer$Composite;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->compShape:Lsun/java2d/pipe/SpanShapeRenderer;

    new-instance v2, Lsun/java2d/pipe/PixelToShapeConverter;

    invoke-direct {v2, v1}, Lsun/java2d/pipe/PixelToShapeConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;)V

    sput-object v2, Lsun/java2d/SurfaceData;->compViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    new-instance v1, Lsun/java2d/pipe/TextRenderer;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/TextRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->compText:Lsun/java2d/pipe/TextPipe;

    new-instance v1, Lsun/java2d/pipe/SpanClipRenderer;

    invoke-direct {v1, v0}, Lsun/java2d/pipe/SpanClipRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v1, Lsun/java2d/SurfaceData;->clipCompPipe:Lsun/java2d/pipe/CompositePipe;

    new-instance v2, Lsun/java2d/pipe/TextRenderer;

    invoke-direct {v2, v1}, Lsun/java2d/pipe/TextRenderer;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v2, Lsun/java2d/SurfaceData;->clipCompText:Lsun/java2d/pipe/TextPipe;

    new-instance v2, Lsun/java2d/pipe/AAShapePipe;

    invoke-direct {v2, v0}, Lsun/java2d/pipe/AAShapePipe;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v2, Lsun/java2d/SurfaceData;->AACompShape:Lsun/java2d/pipe/AAShapePipe;

    invoke-static {v2}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v0

    sput-object v0, Lsun/java2d/SurfaceData;->AACompViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v0, Lsun/java2d/pipe/AAShapePipe;

    invoke-direct {v0, v1}, Lsun/java2d/pipe/AAShapePipe;-><init>(Lsun/java2d/pipe/CompositePipe;)V

    sput-object v0, Lsun/java2d/SurfaceData;->AAClipCompShape:Lsun/java2d/pipe/AAShapePipe;

    invoke-static {v0}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object v0

    sput-object v0, Lsun/java2d/SurfaceData;->AAClipCompViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    new-instance v0, Lsun/java2d/pipe/DrawImage;

    invoke-direct {v0}, Lsun/java2d/pipe/DrawImage;-><init>()V

    sput-object v0, Lsun/java2d/SurfaceData;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    new-instance v0, Lsun/java2d/loops/RenderCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lsun/java2d/loops/RenderCache;-><init>(I)V

    sput-object v0, Lsun/java2d/SurfaceData;->loopcache:Lsun/java2d/loops/RenderCache;

    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackable$State;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/java2d/SurfaceData;->disposerReferent:Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lsun/java2d/SurfaceData;->valid:Z

    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackable$State;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lsun/java2d/StateTrackableDelegate;->createInstance(Lsun/java2d/StateTrackable$State;)Lsun/java2d/StateTrackableDelegate;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/SurfaceData;-><init>(Lsun/java2d/StateTrackableDelegate;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V

    return-void
.end method

.method public constructor <init>(Lsun/java2d/StateTrackableDelegate;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/java2d/SurfaceData;->disposerReferent:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    .line 6
    iput-object p3, p0, Lsun/java2d/SurfaceData;->colorModel:Ljava/awt/image/ColorModel;

    .line 7
    iput-object p2, p0, Lsun/java2d/SurfaceData;->surfaceType:Lsun/java2d/loops/SurfaceType;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lsun/java2d/SurfaceData;->valid:Z

    return-void
.end method

.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V
    .locals 1

    .line 1
    sget-object v0, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    invoke-direct {p0, v0, p1, p2}, Lsun/java2d/SurfaceData;-><init>(Lsun/java2d/StateTrackable$State;Lsun/java2d/loops/SurfaceType;Ljava/awt/image/ColorModel;)V

    return-void
.end method

.method private static getFillCompositeType(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/CompositeType;
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    iget p0, p0, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-nez p0, :cond_1

    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    if-ne v0, p0, :cond_0

    sget-object v0, Lsun/java2d/loops/CompositeType;->OpaqueSrcOverNoEa:Lsun/java2d/loops/CompositeType;

    goto :goto_0

    :cond_0
    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getPaintSurfaceType(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/SurfaceType;
    .locals 3

    iget v0, p0, Lsun/java2d/SunGraphics2D;->paintState:I

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    sget-object p0, Lsun/java2d/loops/SurfaceType;->AnyPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_0
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {p0}, Ljava/awt/Transparency;->getTransparency()I

    move-result p0

    if-ne p0, v1, :cond_1

    sget-object p0, Lsun/java2d/loops/SurfaceType;->OpaqueTexturePaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_1
    sget-object p0, Lsun/java2d/loops/SurfaceType;->TexturePaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_2
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {p0}, Ljava/awt/Transparency;->getTransparency()I

    move-result p0

    if-ne p0, v1, :cond_3

    sget-object p0, Lsun/java2d/loops/SurfaceType;->OpaqueRadialGradientPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_3
    sget-object p0, Lsun/java2d/loops/SurfaceType;->RadialGradientPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_4
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {p0}, Ljava/awt/Transparency;->getTransparency()I

    move-result p0

    if-ne p0, v1, :cond_5

    sget-object p0, Lsun/java2d/loops/SurfaceType;->OpaqueLinearGradientPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_5
    sget-object p0, Lsun/java2d/loops/SurfaceType;->LinearGradientPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_6
    iget-object p0, p0, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {p0}, Ljava/awt/Transparency;->getTransparency()I

    move-result p0

    if-ne p0, v1, :cond_7

    sget-object p0, Lsun/java2d/loops/SurfaceType;->OpaqueGradientPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_7
    sget-object p0, Lsun/java2d/loops/SurfaceType;->GradientPaint:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_8
    sget-object p0, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    return-object p0

    :cond_9
    sget-object p0, Lsun/java2d/loops/SurfaceType;->OpaqueColor:Lsun/java2d/loops/SurfaceType;

    return-object p0
.end method

.method public static getPrimarySurfaceData(Ljava/awt/Image;)Lsun/java2d/SurfaceData;
    .locals 0

    invoke-static {p0}, Lsun/awt/image/SurfaceManager;->getManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lsun/awt/image/SurfaceManager;->getPrimarySurfaceData()Lsun/java2d/SurfaceData;

    move-result-object p0

    return-object p0
.end method

.method private getTextPipe(Lsun/java2d/SunGraphics2D;Z)Lsun/java2d/pipe/TextPipe;
    .locals 2

    iget p0, p1, Lsun/java2d/SunGraphics2D;->textAntialiasHint:I

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getFontInfo()Lsun/java2d/loops/FontInfo;

    move-result-object p0

    iget p0, p0, Lsun/java2d/loops/FontInfo;->aaHint:I

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Lsun/java2d/SurfaceData;->aaTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_0
    sget-object p0, Lsun/java2d/SurfaceData;->solidTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_1
    sget-object p0, Lsun/java2d/SurfaceData;->lcdTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_2
    sget-object p0, Lsun/java2d/SurfaceData;->aaTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_3
    sget-object p0, Lsun/java2d/SurfaceData;->solidTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_4
    sget-object p0, Lsun/java2d/SurfaceData;->aaTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_5
    sget-object p0, Lsun/java2d/SurfaceData;->solidTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_6
    if-eqz p2, :cond_7

    sget-object p0, Lsun/java2d/SurfaceData;->aaTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0

    :cond_7
    sget-object p0, Lsun/java2d/SurfaceData;->solidTextRenderer:Lsun/java2d/pipe/TextPipe;

    return-object p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method public static isNull(Lsun/java2d/SurfaceData;)Z
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lsun/java2d/NullSurfaceData;->theInstance:Lsun/java2d/SurfaceData;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpaqueGray(Ljava/awt/image/IndexColorModel;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static makeConverter(Lsun/java2d/pipe/AAShapePipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;
    .locals 0

    .line 2
    invoke-static {p0, p0}, Lsun/java2d/SurfaceData;->makeConverter(Lsun/java2d/pipe/AAShapePipe;Lsun/java2d/pipe/ParallelogramPipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;

    move-result-object p0

    return-object p0
.end method

.method private static makeConverter(Lsun/java2d/pipe/AAShapePipe;Lsun/java2d/pipe/ParallelogramPipe;)Lsun/java2d/pipe/PixelToParallelogramConverter;
    .locals 9

    .line 1
    new-instance v8, Lsun/java2d/pipe/PixelToParallelogramConverter;

    const-wide/high16 v3, 0x3fc0000000000000L    # 0.125

    const-wide v5, 0x3fdfef9db22d0e56L    # 0.499

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lsun/java2d/pipe/PixelToParallelogramConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;Lsun/java2d/pipe/ParallelogramPipe;DDZ)V

    return-object v8
.end method

.method public static makeRenderLoops(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/RenderLoops;
    .locals 2

    new-instance v0, Lsun/java2d/loops/RenderLoops;

    invoke-direct {v0}, Lsun/java2d/loops/RenderLoops;-><init>()V

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawLine;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawLine;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawLineLoop:Lsun/java2d/loops/DrawLine;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/FillRect;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillRect;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->fillRectLoop:Lsun/java2d/loops/FillRect;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawRect;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawRect;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawRectLoop:Lsun/java2d/loops/DrawRect;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawPolygons;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawPolygons;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawPolygonsLoop:Lsun/java2d/loops/DrawPolygons;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawPath;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawPath;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawPathLoop:Lsun/java2d/loops/DrawPath;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/FillPath;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillPath;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->fillPathLoop:Lsun/java2d/loops/FillPath;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/FillSpans;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillSpans;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->fillSpansLoop:Lsun/java2d/loops/FillSpans;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/FillParallelogram;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillParallelogram;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->fillParallelogramLoop:Lsun/java2d/loops/FillParallelogram;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawParallelogram;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawParallelogram;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawParallelogramLoop:Lsun/java2d/loops/DrawParallelogram;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawGlyphList;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawGlyphList;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawGlyphListLoop:Lsun/java2d/loops/DrawGlyphList;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawGlyphListAA;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawGlyphListAA;

    move-result-object v1

    iput-object v1, v0, Lsun/java2d/loops/RenderLoops;->drawGlyphListAALoop:Lsun/java2d/loops/DrawGlyphListAA;

    invoke-static {p0, p1, p2}, Lsun/java2d/loops/DrawGlyphListLCD;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawGlyphListLCD;

    move-result-object p0

    iput-object p0, v0, Lsun/java2d/loops/RenderLoops;->drawGlyphListLCDLoop:Lsun/java2d/loops/DrawGlyphListLCD;

    return-object v0
.end method

.method public static restoreContents(Ljava/awt/Image;)Lsun/java2d/SurfaceData;
    .locals 0

    invoke-static {p0}, Lsun/awt/image/SurfaceManager;->getManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lsun/awt/image/SurfaceManager;->restoreContents()Lsun/java2d/SurfaceData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canRenderLCDText(Lsun/java2d/SunGraphics2D;)Z
    .locals 4

    iget v0, p1, Lsun/java2d/SunGraphics2D;->compositeState:I

    const/4 v1, 0x0

    if-gtz v0, :cond_2

    iget v0, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-gt v0, v2, :cond_2

    iget-object p1, p1, Lsun/java2d/SunGraphics2D;->surfaceData:Lsun/java2d/SurfaceData;

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getTransparency()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget p1, p0, Lsun/java2d/SurfaceData;->haveLCDLoop:I

    if-nez p1, :cond_1

    sget-object p1, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lsun/java2d/loops/DrawGlyphListLCD;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/DrawGlyphListLCD;

    move-result-object p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lsun/java2d/SurfaceData;->haveLCDLoop:I

    :cond_1
    iget p0, p0, Lsun/java2d/SurfaceData;->haveLCDLoop:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public canRenderParallelograms(Lsun/java2d/SunGraphics2D;)Z
    .locals 5

    iget v0, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_6

    iget v0, p1, Lsun/java2d/SunGraphics2D;->compositeState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget p1, p0, Lsun/java2d/SurfaceData;->havePgramXORLoop:I

    if-nez p1, :cond_1

    sget-object p1, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v0, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lsun/java2d/loops/FillParallelogram;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillParallelogram;

    move-result-object p1

    if-eqz p1, :cond_0

    move v3, v2

    :cond_0
    iput v3, p0, Lsun/java2d/SurfaceData;->havePgramXORLoop:I

    :cond_1
    iget p0, p0, Lsun/java2d/SurfaceData;->havePgramXORLoop:I

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    if-gtz v0, :cond_6

    iget v0, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-eq v0, v3, :cond_6

    iget p1, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-eq p1, v3, :cond_6

    iget p1, p0, Lsun/java2d/SurfaceData;->havePgramSolidLoop:I

    if-nez p1, :cond_5

    sget-object p1, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lsun/java2d/loops/FillParallelogram;->locate(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/FillParallelogram;

    move-result-object p1

    if-eqz p1, :cond_4

    move v3, v2

    :cond_4
    iput v3, p0, Lsun/java2d/SurfaceData;->havePgramSolidLoop:I

    :cond_5
    iget p0, p0, Lsun/java2d/SurfaceData;->havePgramSolidLoop:I

    if-ne p0, v2, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method

.method public checkCustomComposite()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lsun/java2d/SurfaceData;->compPermission:Ljava/security/Permission;

    if-nez v0, :cond_0

    new-instance v0, Ljava/awt/AWTPermission;

    const-string v1, "readDisplayPixels"

    invoke-direct {v0, v1}, Ljava/awt/AWTPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/java2d/SurfaceData;->compPermission:Ljava/security/Permission;

    :cond_0
    sget-object v0, Lsun/java2d/SurfaceData;->compPermission:Ljava/security/Permission;

    invoke-virtual {p0, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    return-void
.end method

.method public copyArea(Lsun/java2d/SunGraphics2D;IIIIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public abstract getBounds()Ljava/awt/Rectangle;
.end method

.method public final getColorModel()Ljava/awt/image/ColorModel;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SurfaceData;->colorModel:Ljava/awt/image/ColorModel;

    return-object p0
.end method

.method public getDefaultScale()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getDestination()Ljava/lang/Object;
.end method

.method public abstract getDeviceConfiguration()Ljava/awt/GraphicsConfiguration;
.end method

.method public getDisposerReferent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SurfaceData;->disposerReferent:Ljava/lang/Object;

    return-object p0
.end method

.method public getMaskFill(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/MaskFill;
    .locals 1

    invoke-static {p1}, Lsun/java2d/SurfaceData;->getPaintSurfaceType(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    invoke-static {p1}, Lsun/java2d/SurfaceData;->getFillCompositeType(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/CompositeType;

    move-result-object p1

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lsun/java2d/loops/MaskFill;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskFill;

    move-result-object p0

    return-object p0
.end method

.method public getNativeOps()J
    .locals 2

    iget-wide v0, p0, Lsun/java2d/SurfaceData;->pData:J

    return-wide v0
.end method

.method public abstract getRaster(IIII)Ljava/awt/image/Raster;
.end method

.method public getRenderLoops(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/RenderLoops;
    .locals 3

    invoke-static {p1}, Lsun/java2d/SurfaceData;->getPaintSurfaceType(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/SurfaceType;

    move-result-object p0

    invoke-static {p1}, Lsun/java2d/SurfaceData;->getFillCompositeType(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/CompositeType;

    move-result-object v0

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object p1

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object p1

    sget-object v1, Lsun/java2d/SurfaceData;->loopcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v1, p0, v0, p1}, Lsun/java2d/loops/RenderCache;->get(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lsun/java2d/loops/RenderLoops;

    return-object v1

    :cond_0
    invoke-static {p0, v0, p1}, Lsun/java2d/SurfaceData;->makeRenderLoops(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/RenderLoops;

    move-result-object v1

    sget-object v2, Lsun/java2d/SurfaceData;->loopcache:Lsun/java2d/loops/RenderCache;

    invoke-virtual {v2, p0, v0, p1, v1}, Lsun/java2d/loops/RenderCache;->put(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;Ljava/lang/Object;)V

    return-object v1
.end method

.method public abstract getReplacement()Lsun/java2d/SurfaceData;
.end method

.method public getSourceSurfaceData(Ljava/awt/Image;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;
    .locals 3

    invoke-static {p1}, Lsun/awt/image/SurfaceManager;->getManager(Ljava/awt/Image;)Lsun/awt/image/SurfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lsun/awt/image/SurfaceManager;->getPrimarySurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/Image;->getAccelerationPriority()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    iget-object p1, p0, Lsun/java2d/SurfaceData;->blitProxyKey:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lsun/awt/image/SurfaceManager;->getCacheData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsun/java2d/SurfaceDataProxy;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsun/java2d/SurfaceDataProxy;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getState()Lsun/java2d/StateTrackable$State;

    move-result-object p1

    sget-object v2, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    if-ne p1, v2, :cond_1

    sget-object p1, Lsun/java2d/SurfaceDataProxy;->UNCACHED:Lsun/java2d/SurfaceDataProxy;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lsun/java2d/SurfaceData;->makeProxyFor(Lsun/java2d/SurfaceData;)Lsun/java2d/SurfaceDataProxy;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lsun/java2d/SurfaceData;->blitProxyKey:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lsun/awt/image/SurfaceManager;->setCacheData(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v1, p2, p3, p4}, Lsun/java2d/SurfaceDataProxy;->replaceData(Lsun/java2d/SurfaceData;ILsun/java2d/loops/CompositeType;Ljava/awt/Color;)Lsun/java2d/SurfaceData;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getState()Lsun/java2d/StateTrackable$State;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->getState()Lsun/java2d/StateTrackable$State;

    move-result-object p0

    return-object p0
.end method

.method public getStateTracker()Lsun/java2d/StateTracker;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->getStateTracker()Lsun/java2d/StateTracker;

    move-result-object p0

    return-object p0
.end method

.method public final getSurfaceType()Lsun/java2d/loops/SurfaceType;
    .locals 0

    iget-object p0, p0, Lsun/java2d/SurfaceData;->surfaceType:Lsun/java2d/loops/SurfaceType;

    return-object p0
.end method

.method public getTransparency()I
    .locals 0

    invoke-virtual {p0}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result p0

    return p0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/java2d/SurfaceData;->valid:Z

    iget-object p0, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public isSurfaceLost()Z
    .locals 0

    iget-boolean p0, p0, Lsun/java2d/SurfaceData;->surfaceLost:Z

    return p0
.end method

.method public final isValid()Z
    .locals 0

    iget-boolean p0, p0, Lsun/java2d/SurfaceData;->valid:Z

    return p0
.end method

.method public makeProxyFor(Lsun/java2d/SurfaceData;)Lsun/java2d/SurfaceDataProxy;
    .locals 0

    sget-object p0, Lsun/java2d/SurfaceDataProxy;->UNCACHED:Lsun/java2d/SurfaceDataProxy;

    return-object p0
.end method

.method public final markDirty()V
    .locals 0

    iget-object p0, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public pixelFor(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/java2d/SurfaceData;->surfaceType:Lsun/java2d/loops/SurfaceType;

    iget-object p0, p0, Lsun/java2d/SurfaceData;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0, p1, p0}, Lsun/java2d/loops/SurfaceType;->pixelFor(ILjava/awt/image/ColorModel;)I

    move-result p0

    return p0
.end method

.method public pixelFor(Ljava/awt/Color;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceData;->pixelFor(I)I

    move-result p0

    return p0
.end method

.method public rgbFor(I)I
    .locals 1

    iget-object v0, p0, Lsun/java2d/SurfaceData;->surfaceType:Lsun/java2d/loops/SurfaceType;

    iget-object p0, p0, Lsun/java2d/SurfaceData;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v0, p1, p0}, Lsun/java2d/loops/SurfaceType;->rgbFor(ILjava/awt/image/ColorModel;)I

    move-result p0

    return p0
.end method

.method public setBlitProxyKey(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lsun/java2d/SurfaceDataProxy;->isCachingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lsun/java2d/SurfaceData;->blitProxyKey:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSurfaceLost(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/java2d/SurfaceData;->surfaceLost:Z

    iget-object p0, p0, Lsun/java2d/SurfaceData;->stateDelegate:Lsun/java2d/StateTrackableDelegate;

    invoke-virtual {p0}, Lsun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public useTightBBoxes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public validatePipe(Lsun/java2d/SunGraphics2D;)V
    .locals 5

    sget-object v0, Lsun/java2d/SurfaceData;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    iget v0, p1, Lsun/java2d/SunGraphics2D;->compositeState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget v0, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    if-le v0, v2, :cond_0

    sget-object v0, Lsun/java2d/SurfaceData;->paintViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->paintShape:Lsun/java2d/pipe/SpanShapeRenderer;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceData;->canRenderParallelograms(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/java2d/SurfaceData;->colorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    goto :goto_0

    :cond_1
    sget-object v0, Lsun/java2d/SurfaceData;->colorViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    sget-object v2, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    iput-object v2, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    :goto_0
    iget v2, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v2, v3, :cond_2

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->outlineTextRenderer:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_2
    iget v2, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    if-lt v2, v1, :cond_3

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    goto :goto_2

    :cond_3
    iget v1, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-eqz v1, :cond_4

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    goto :goto_1

    :cond_4
    sget-object v0, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    :goto_1
    sget-object v0, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    :goto_2
    sget-object v0, Lsun/java2d/SurfaceData;->solidTextRenderer:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_5
    if-ne v0, v1, :cond_9

    iget v0, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-ne v0, v3, :cond_7

    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v0, v3, :cond_6

    sget-object v0, Lsun/java2d/SurfaceData;->AAClipCompViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->clipCompText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_6
    sget-object v0, Lsun/java2d/SurfaceData;->AACompViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->compText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_7
    sget-object v0, Lsun/java2d/SurfaceData;->compViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->compShape:Lsun/java2d/pipe/SpanShapeRenderer;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v0, v3, :cond_8

    sget-object v0, Lsun/java2d/SurfaceData;->clipCompText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_8
    sget-object v0, Lsun/java2d/SurfaceData;->compText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_9
    iget v4, p1, Lsun/java2d/SunGraphics2D;->antialiasHint:I

    if-ne v4, v3, :cond_10

    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceData;->getMaskFill(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/MaskFill;

    move-result-object v0

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->alphafill:Lsun/java2d/loops/MaskFill;

    if-eqz v0, :cond_e

    iget v1, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v1, v3, :cond_a

    sget-object v0, Lsun/java2d/SurfaceData;->AAClipColorViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->clipColorText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v0}, Lsun/java2d/loops/MaskFill;->canDoParallelograms()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lsun/java2d/SurfaceData;->AAColorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

    goto :goto_3

    :cond_b
    sget-object v0, Lsun/java2d/SurfaceData;->AAColorViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    :goto_3
    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    iget v0, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    if-gt v0, v2, :cond_d

    iget v0, p1, Lsun/java2d/SunGraphics2D;->compositeState:I

    if-lez v0, :cond_c

    goto :goto_4

    :cond_c
    invoke-direct {p0, p1, v2}, Lsun/java2d/SurfaceData;->getTextPipe(Lsun/java2d/SunGraphics2D;Z)Lsun/java2d/pipe/TextPipe;

    move-result-object v0

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_d
    :goto_4
    sget-object v0, Lsun/java2d/SurfaceData;->colorText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_e
    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v0, v3, :cond_f

    sget-object v0, Lsun/java2d/SurfaceData;->AAClipPaintViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->clipPaintText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_f
    sget-object v0, Lsun/java2d/SurfaceData;->AAPaintViaShape:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->paintText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto/16 :goto_9

    :cond_10
    iget v4, p1, Lsun/java2d/SunGraphics2D;->paintState:I

    if-gt v4, v2, :cond_15

    if-gtz v0, :cond_15

    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v0, v3, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceData;->canRenderParallelograms(Lsun/java2d/SunGraphics2D;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lsun/java2d/SurfaceData;->colorViaPgram:Lsun/java2d/pipe/PixelToParallelogramConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    goto :goto_5

    :cond_12
    sget-object v0, Lsun/java2d/SurfaceData;->colorViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    sget-object v2, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    iput-object v2, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    :goto_5
    iget v2, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    if-lt v2, v1, :cond_13

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    goto :goto_7

    :cond_13
    iget v1, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-eqz v1, :cond_14

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    goto :goto_6

    :cond_14
    sget-object v0, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    :goto_6
    sget-object v0, Lsun/java2d/SurfaceData;->colorPrimitives:Lsun/java2d/pipe/LoopPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    :goto_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/java2d/SurfaceData;->getTextPipe(Lsun/java2d/SunGraphics2D;Z)Lsun/java2d/pipe/TextPipe;

    move-result-object v0

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto :goto_9

    :cond_15
    :goto_8
    sget-object v0, Lsun/java2d/SurfaceData;->paintViaShape:Lsun/java2d/pipe/PixelToShapeConverter;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    sget-object v0, Lsun/java2d/SurfaceData;->paintShape:Lsun/java2d/pipe/SpanShapeRenderer;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceData;->getMaskFill(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/MaskFill;

    move-result-object v0

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->alphafill:Lsun/java2d/loops/MaskFill;

    if-eqz v0, :cond_17

    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v0, v3, :cond_16

    sget-object v0, Lsun/java2d/SurfaceData;->clipColorText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto :goto_9

    :cond_16
    sget-object v0, Lsun/java2d/SurfaceData;->colorText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto :goto_9

    :cond_17
    iget v0, p1, Lsun/java2d/SunGraphics2D;->clipState:I

    if-ne v0, v3, :cond_18

    sget-object v0, Lsun/java2d/SurfaceData;->clipPaintText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    goto :goto_9

    :cond_18
    sget-object v0, Lsun/java2d/SurfaceData;->paintText:Lsun/java2d/pipe/TextPipe;

    iput-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    :goto_9
    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->textpipe:Lsun/java2d/pipe/TextPipe;

    instance-of v0, v0, Lsun/java2d/pipe/LoopBasedPipe;

    if-nez v0, :cond_19

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    instance-of v0, v0, Lsun/java2d/pipe/LoopBasedPipe;

    if-nez v0, :cond_19

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->fillpipe:Lsun/java2d/pipe/PixelFillPipe;

    instance-of v0, v0, Lsun/java2d/pipe/LoopBasedPipe;

    if-nez v0, :cond_19

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->drawpipe:Lsun/java2d/pipe/PixelDrawPipe;

    instance-of v0, v0, Lsun/java2d/pipe/LoopBasedPipe;

    if-nez v0, :cond_19

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->imagepipe:Lsun/java2d/pipe/DrawImagePipe;

    instance-of v0, v0, Lsun/java2d/pipe/LoopBasedPipe;

    if-eqz v0, :cond_1a

    :cond_19
    invoke-virtual {p0, p1}, Lsun/java2d/SurfaceData;->getRenderLoops(Lsun/java2d/SunGraphics2D;)Lsun/java2d/loops/RenderLoops;

    move-result-object p0

    iput-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    :cond_1a
    return-void
.end method
