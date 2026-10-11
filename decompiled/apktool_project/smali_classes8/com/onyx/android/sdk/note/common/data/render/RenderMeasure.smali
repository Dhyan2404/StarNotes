.class public final Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008#\u0018\u0000 u2\u00020\u0001:\u0001uB\u0007\u00a2\u0006\u0004\u0008s\u0010tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0011J\u0006\u0010\u0015\u001a\u00020\u0011J\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0016J\u0006\u0010\u001b\u001a\u00020\u001aJ\u0008\u0010\u001c\u001a\u00020\u001aH\u0007J\u0006\u0010\u001d\u001a\u00020\u0004J\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u000bJ\u0006\u0010 \u001a\u00020\u000bJ\u0006\u0010!\u001a\u00020\u000bJ\u0006\u0010\"\u001a\u00020\u000bJ\u0006\u0010#\u001a\u00020\u000bJ\u0006\u0010$\u001a\u00020\u000bJ\u0006\u0010%\u001a\u00020\u0016J\u000e\u0010%\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\u0004J\u000e\u0010\'\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001aJ\u0006\u0010)\u001a\u00020(J\u0006\u0010*\u001a\u00020\u000bJ\u0006\u0010+\u001a\u00020\u000bJ\u0006\u0010,\u001a\u00020\u000bJ\u000e\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u000bJ\u000e\u00101\u001a\u00020\u00022\u0006\u00100\u001a\u00020/J\u000e\u00101\u001a\u00020\u00022\u0006\u00103\u001a\u000202J\u0006\u00104\u001a\u000202J\u000e\u00106\u001a\u00020\u00002\u0006\u00105\u001a\u00020(J\u0006\u00107\u001a\u00020(J\u0010\u0010:\u001a\u00020\u00002\u0008\u00109\u001a\u0004\u0018\u000108J\u0006\u0010;\u001a\u00020\u001aJ\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u001a0<J\u0008\u0010>\u001a\u0004\u0018\u000108J\u0006\u0010?\u001a\u00020\u001aJ\u0006\u0010@\u001a\u00020\u0016J\u0006\u0010A\u001a\u00020(J\u000e\u0010D\u001a\u00020B2\u0006\u0010C\u001a\u00020BJ\u000e\u0010E\u001a\u00020B2\u0006\u0010C\u001a\u00020BJ\u0018\u0010E\u001a\u00020B2\u0008\u0010F\u001a\u0004\u0018\u00010(2\u0006\u0010C\u001a\u00020BJ\u000e\u0010H\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000bJ\u000e\u0010I\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000bJ\u0010\u0010K\u001a\u00020\u00042\u0008\u0010J\u001a\u0004\u0018\u00010\u0004J\u0006\u0010L\u001a\u00020\u0016J\u0006\u0010M\u001a\u00020\u0016J\u000e\u0010O\u001a\u00020\u000b2\u0006\u0010N\u001a\u00020\u000bJ\u0010\u0010P\u001a\u00020\u00022\u0008\u00105\u001a\u0004\u0018\u00010(J\u0006\u0010Q\u001a\u00020\u0002J\u0008\u0010R\u001a\u00020\u0000H\u0016J\u0008\u0010T\u001a\u00020SH\u0016R\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0016\u0010\u000f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010VR\u0016\u0010-\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010VR\u0016\u0010\u0008\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010ZR\u0016\u0010^\u001a\u0002028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u0016\u0010F\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\"\u0010g\u001a\u00020(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0016\u0010j\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010m\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\"\u0010r\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010V\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010q\u00a8\u0006v"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;",
        "",
        "",
        "a",
        "Landroid/graphics/RectF;",
        "zoomRect",
        "setZoomRect",
        "getZoomRect",
        "viewPortRect",
        "setViewPortRect",
        "getViewPortRect",
        "",
        "viewPortScale",
        "setViewPortScale",
        "getViewPortScaling",
        "viewPortScaling",
        "setViewPortScaling",
        "",
        "rotation",
        "setWindowRotation",
        "getWindowRotation",
        "getWindowAngle",
        "",
        "isRestoredZoom",
        "restored",
        "setRestoredZoom",
        "Landroid/graphics/Rect;",
        "getPageRenderRect",
        "getLimitNoteRect",
        "getPageRenderRectF",
        "getViewportCenterRect",
        "getViewPortScale",
        "getFitScreenScale",
        "getFitWidthScale",
        "getFitHeightScale",
        "getFullFitCanvasScale",
        "getFitCanvasScale",
        "isCanvasOutOfScreen",
        "viewRect",
        "isRectChanged",
        "Landroid/graphics/Matrix;",
        "getViewPortMatrix",
        "getRenderScale",
        "getNormalizeScale",
        "getScale",
        "renderScale",
        "setRenderScale",
        "Landroid/view/View;",
        "renderView",
        "setViewPoint",
        "Landroid/graphics/Point;",
        "point",
        "getViewPoint",
        "m",
        "setMatrix",
        "getMatrix",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "setPageInfo",
        "getViewRect",
        "",
        "getDisableRect",
        "getPageInfo",
        "getPageRect",
        "isViewScaling",
        "getNormalizeMatrix",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "p",
        "normalizePoint",
        "matrixPoint",
        "matrix",
        "size",
        "getNormalizeSize",
        "getRenderSize",
        "rectF",
        "getNormalizeRect",
        "isFitScreen",
        "isLessThanFitScreenScale",
        "value",
        "getMatrixNormalValue",
        "updateDisplayScale",
        "reset",
        "clone",
        "",
        "toString",
        "e",
        "F",
        "f",
        "g",
        "h",
        "Landroid/graphics/RectF;",
        "i",
        "j",
        "Landroid/graphics/Point;",
        "viewPoint",
        "k",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "l",
        "Landroid/graphics/Matrix;",
        "getScalingMatrix",
        "()Landroid/graphics/Matrix;",
        "setScalingMatrix",
        "(Landroid/graphics/Matrix;)V",
        "scalingMatrix",
        "n",
        "Z",
        "restoredZoom",
        "o",
        "I",
        "windowRotation",
        "getStrokeWidthDisplayScale",
        "()F",
        "setStrokeWidthDisplayScale",
        "(F)V",
        "strokeWidthDisplayScale",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public volatile e:F

.field public volatile f:F

.field public volatile g:F

.field public volatile h:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile j:Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->e:F

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->f:F

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->g:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->h:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->i:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->j:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->l:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->m:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->p:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/RectUtils;->scale(Landroid/graphics/RectF;FF)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setZoomRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public clone()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPortRect(Landroid/graphics/RectF;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    .line 6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getZoomRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setZoomRect(Landroid/graphics/RectF;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;-><init>()V

    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->clone()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object p0

    return-object p0
.end method

.method public final getDisableRect()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRect()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, p0, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getFitCanvasScale()F
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr v0, p0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    return p0
.end method

.method public final getFitHeightScale()F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method public final getFitScreenScale()F
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getFitWidthScale()F
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result p0

    div-float/2addr v1, p0

    return v1
.end method

.method public final getFullFitCanvasScale()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getFitWidthScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getFitHeightScale()F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public final getLimitNoteRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-object p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->l:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getMatrixNormalValue(F)F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v0, v1

    aget p1, v0, v2

    sub-float/2addr p0, p1

    return p0
.end method

.method public final getNormalizeMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public final getNormalizeRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getNormalizeScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getNormalizeScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result p0

    div-float/2addr v2, p0

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->scale(Landroid/graphics/RectF;FF)V

    return-object v0
.end method

.method public final getNormalizeScale()F
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getNormalizeSize(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getNormalizeScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->k:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public final getPageRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->k:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getPageRect(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getPageRenderRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectByCeil(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPageRenderRectF()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getScale()F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    invoke-direct {v1, p0, p0, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public final getRenderScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->g:F

    return p0
.end method

.method public final getRenderSize(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result p0

    div-float/2addr p1, p0

    return p1
.end method

.method public final getScale()F
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public final getScalingMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->m:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getStrokeWidthDisplayScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->p:F

    return p0
.end method

.method public final getViewPoint()Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->j:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getViewPortMatrix()Landroid/graphics/Matrix;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    neg-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method public final getViewPortRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->h:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getViewPortScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->e:F

    return p0
.end method

.method public final getViewPortScaling()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->f:F

    return p0
.end method

.method public final getViewRect()Landroid/graphics/Rect;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getViewportCenterRect()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->h:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {v3, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    add-float/2addr v2, p0

    new-instance p0, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public final getWindowAngle()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getWindowRotation()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method

.method public final getWindowRotation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->o:I

    return p0
.end method

.method public final getZoomRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final isCanvasOutOfScreen()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->isCanvasOutOfScreen(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final isCanvasOutOfScreen(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewPortRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectByFloor(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

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

.method public final isFitScreen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getFitScreenScale()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLessThanFitScreenScale()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getFitScreenScale()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRectChanged(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectByFloor(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq p1, p0, :cond_0

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

.method public final isRestoredZoom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->n:Z

    return p0
.end method

.method public final isViewScaling()Z
    .locals 2

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->e:F

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final matrixPoint(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final matrixPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->matrixPoint(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final normalizePoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getNormalizeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->matrixPoint(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final reset()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "reset"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v1, "FLOAT_ONE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->e:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->j:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->h:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->l:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->k:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->l:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    return-object p0
.end method

.method public final setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->k:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->a()V

    return-object p0
.end method

.method public final setRenderScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->g:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->a()V

    return-void
.end method

.method public final setRestoredZoom(Z)Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->n:Z

    return-object p0
.end method

.method public final setScalingMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->m:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setStrokeWidthDisplayScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->p:F

    return-void
.end method

.method public final setViewPoint(Landroid/graphics/Point;)V
    .locals 3
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->j:Landroid/graphics/Point;

    .line 4
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setViewPoint(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->setViewPoint(Landroid/graphics/Point;)V

    return-void
.end method

.method public final setViewPortRect(Landroid/graphics/RectF;)V
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewPortRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->h:Landroid/graphics/RectF;

    :cond_3
    :goto_2
    return-void
.end method

.method public final setViewPortScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->e:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->a()V

    return-void
.end method

.method public final setViewPortScaling(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->f:F

    return-void
.end method

.method public final setWindowRotation(I)V
    .locals 3

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->o:I

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->o:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setZoomRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewPortScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",renderScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getRenderScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",normalizeScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getNormalizeScale()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",viewPortRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getViewPortRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",zoomRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getZoomRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDisplayScale(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->p:F

    return-void
.end method
