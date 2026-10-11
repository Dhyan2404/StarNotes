.class public final Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarkerScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkerScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n121#2,8:326\n121#2,8:334\n1855#3,2:342\n1747#3,3:344\n1#4:347\n*S KotlinDebug\n*F\n+ 1 MarkerScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape\n*L\n91#1:326,8\n105#1:334,8\n193#1:342,2\n218#1:344,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 S2\u00020\u0001:\u0001SB\u0007\u00a2\u0006\u0004\u0008Q\u0010RJ\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J \u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002J\u001e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0015H\u0002J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J(\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0011H\u0002J\u0018\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0005H\u0002J\u0018\u0010%\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0005H\u0002J\u0008\u0010&\u001a\u00020\u0011H\u0016J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005H\u0016J\u0018\u0010*\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010,\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010-\u001a\u00020\u0007H\u0016J \u0010.\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\rH\u0016J\u0008\u0010/\u001a\u00020\u0007H\u0016J\u0010\u00103\u001a\u0002022\u0006\u00101\u001a\u000200H\u0016J\u0008\u00104\u001a\u00020\u0013H\u0016J\u0018\u00109\u001a\u00020\u00112\u0006\u00106\u001a\u0002052\u0006\u00108\u001a\u000207H\u0016J\u0006\u0010:\u001a\u00020\u0011J\u0008\u0010<\u001a\u00020;H\u0016J\u0010\u0010>\u001a\u00020\u001c2\u0006\u0010=\u001a\u00020\u001eH\u0016J\u0008\u0010@\u001a\u00020?H\u0016R\"\u0010G\u001a\u00020;8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001b\u0010M\u001a\u00020H8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010O\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "points",
        "",
        "c",
        "d",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "l",
        "",
        "x",
        "y",
        "radius",
        "",
        "i",
        "Landroid/graphics/Path;",
        "g",
        "Lkotlin/Function0;",
        "render",
        "b",
        "a",
        "first",
        "f",
        "j",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "pdfShape",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "shapeBean",
        "m",
        "lastPoint",
        "currentPoint",
        "e",
        "point",
        "k",
        "underContent",
        "normalizedPoint",
        "screenPoint",
        "onMove",
        "onUp",
        "lowLatencyRender",
        "onLowLatencyTouchData",
        "clearLowLatencyData",
        "hitTest",
        "updateShapeRect",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "split",
        "getPath",
        "Landroid/graphics/Region;",
        "region",
        "Landroid/graphics/Matrix;",
        "matrix",
        "intersectRegion",
        "isFreeSubType",
        "",
        "getUsePointCount",
        "embedShapeBean",
        "toPdfShape",
        "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;",
        "createGuideLineHandler",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;",
        "K",
        "Lkotlin/Lazy;",
        "h",
        "()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;",
        "neoPenRender",
        "L",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "lowLatencyTouchData",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMarkerScribbleShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkerScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n121#2,8:326\n121#2,8:334\n1855#3,2:342\n1747#3,3:344\n1#4:347\n*S KotlinDebug\n*F\n+ 1 MarkerScribbleShape.kt\ncom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape\n*L\n91#1:326,8\n105#1:334,8\n193#1:342,2\n218#1:344,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final M:I = 0x3


# instance fields
.field public J:I

.field public final K:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public L:Lcom/onyx/android/sdk/geometry/data/TouchData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->J:I

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$neoPenRender$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$neoPenRender$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->K:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$drawFreePath(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$drawLinePath(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->d(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/extension/ColorKt;->similarWithoutAlpha$default(IIILjava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/PaintKt;->copy(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->h()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchPointList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->h()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->h()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->reset()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public clearLowLatencyData()V
    .locals 0

    return-void
.end method

.method public createGuideLineHandler()Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;)V

    return-object v0
.end method

.method public final d(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->f(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final e(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide p0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p3

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$getLastPoint$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$getLastPoint$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-static {p3, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final g()Landroid/graphics/Path;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->f(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    return-object v2
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->g()Landroid/graphics/Path;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->J:I

    return p0
.end method

.method public getUsePointCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    return p0
.end method

.method public final h()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->K:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;

    return-object p0
.end method

.method public hitTest(FFF)Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->hitTest(FFF)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->i(FFF)Z

    move-result p0

    return p0
.end method

.method public final i(FFF)Z
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    add-float v9, p3, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v9}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result p0

    return p0
.end method

.method public intersectRegion(Landroid/graphics/Region;Landroid/graphics/Matrix;)Z
    .locals 9
    .param p1    # Landroid/graphics/Region;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result p0

    const/4 v1, 0x2

    int-to-float v2, v1

    div-float/2addr p0, v2

    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p0

    float-to-int p0, p0

    new-instance v2, Lkotlin/ranges/IntRange;

    neg-int v3, p0

    invoke-direct {v2, v3, p0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-array v4, v1, [F

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    aput v5, v4, v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v4, v3

    float-to-int v2, v2

    aget v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_1

    return v5

    :cond_1
    instance-of v6, p0, Ljava/util/Collection;

    if-eqz v6, :cond_2

    move-object v6, p0

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v6

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    add-int v8, v2, v7

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/2addr v7, v4

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v7, v5

    :goto_1
    if-eqz v7, :cond_3

    move v3, v5

    :cond_6
    :goto_2
    if-eqz v3, :cond_0

    return v5

    :cond_7
    return v3
.end method

.method public final isFreeSubType()Z
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->underContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isTransparent(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 12

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->L:Lcom/onyx/android/sdk/geometry/data/TouchData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->setPredictPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchMove()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->k(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->e(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDone()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->L:Lcom/onyx/android/sdk/geometry/data/TouchData;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/TouchData;->copy(I)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, p1

    :cond_5
    :goto_0
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->L:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->h()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->h()Lcom/onyx/android/sdk/note/common/data/render/MarkerPenRenderWrapper;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getPointList()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->renderPointArray(Landroid/graphics/Matrix;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getRevisedDisplayScale()F

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->scalePointList(Ljava/util/List;F)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->realPointArray(Ljava/util/List;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRealPoints([F)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->normalizeRenderPointList(Ljava/util/List;F)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->setRenderPoints([F)V

    return-void
.end method

.method public onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->l(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    :cond_1
    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "normalizedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->e(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setCurrentPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;->onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "normalizedPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getCurrentPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$render$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape$render$1;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->b(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->J:I

    return-void
.end method

.method public split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;->split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->getType()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->split(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;I)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;

    sget-object v1, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->Companion:Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo$Companion;->createMarkerStrokeShape()Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;->initPdfShape(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->applyMultiplyBlendMode(Z)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->m(Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;->applyLineCapJoinStyle(Z)V

    return-object v0
.end method

.method public underContent()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)Z

    move-result p0

    return p0
.end method

.method public updateShapeRect()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    return-void
.end method
