.class public final Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAreaHitTestsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaHitTestsHelper.kt\ncom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n337#2:111\n344#2,3:112\n1#3:115\n*S KotlinDebug\n*F\n+ 1 AreaHitTestsHelper.kt\ncom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper\n*L\n83#1:111\n87#1:112,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0019\u001a\u00020\u0015\u0012\u0006\u0010\u001e\u001a\u00020\n\u0012\u0006\u0010\"\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020#\u00a2\u0006\u0004\u00083\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002J$\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0002J,\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00122\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0002R\u0017\u0010\u0019\u001a\u00020\u00158\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u001e\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\"\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0017\u0010\'\u001a\u00020#8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010$\u001a\u0004\u0008%\u0010&R\u0014\u0010)\u001a\u00020#8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008(\u0010$R\u0016\u0010,\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010/\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010\u001fR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "",
        "inRegion",
        "Landroid/graphics/Region;",
        "region",
        "Landroid/graphics/RectF;",
        "rectF",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "Landroid/graphics/Matrix;",
        "c",
        "selectionRegion",
        "matrix",
        "a",
        "selectionRectF",
        "",
        "radius",
        "d",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "b",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "getPoints",
        "()Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "points",
        "F",
        "getSelectionPenWidth",
        "()F",
        "selectionPenWidth",
        "",
        "I",
        "getSelectionType",
        "()I",
        "selectionType",
        "e",
        "SELECT_RECT_MAX",
        "f",
        "Landroid/graphics/Matrix;",
        "selectionMatrix",
        "g",
        "Landroid/graphics/RectF;",
        "selectionShapeRect",
        "h",
        "i",
        "Landroid/graphics/Region;",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FI)V",
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
        "SMAP\nAreaHitTestsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaHitTestsHelper.kt\ncom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n337#2:111\n344#2,3:112\n1#3:115\n*S KotlinDebug\n*F\n+ 1 AreaHitTestsHelper.kt\ncom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper\n*L\n83#1:111\n87#1:112,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/base/data/TouchPointList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:F

.field public final d:I

.field public final e:I

.field public f:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:F

.field public i:Landroid/graphics/Region;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FI)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "points"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->b:Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 4
    iput p3, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->c:F

    .line 5
    iput p4, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->d:I

    const/16 v0, 0x2710

    .line 6
    iput v0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->e:I

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->f:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v1, p3, v0

    .line 8
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrixInvertValue(F)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->h:F

    .line 9
    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->c(Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 10
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 11
    sget-object p1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionType;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionType;

    invoke-virtual {p1, p4}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionType;->isRectSelection(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    iget-object p4, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeByLineTo(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    iget-object p4, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, p4, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShape(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :goto_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p4, 0x0

    .line 14
    invoke-static {v3, p4, p1, p2}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds$default(Landroid/graphics/Path;ZILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->g:Landroid/graphics/RectF;

    div-float/2addr p3, v0

    .line 15
    invoke-static {p1, p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 16
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->g:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionByPath$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->i:Landroid/graphics/Region;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/base/data/TouchPointList;FI)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/Matrix;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FLandroid/graphics/Matrix;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->d(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FLandroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/Matrix;)Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "getBounds(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v2, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/note/common/data/selection/SelectionType;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/selection/SelectionType;

    iget v2, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->d:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionType;->isRectSelection(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_3
    invoke-interface {p1, p2, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->intersectRegion(Landroid/graphics/Region;Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Matrix;
    .locals 5

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->e:I

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    int-to-float p0, p0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float v1, p1, p0

    if-lez v1, :cond_1

    div-float/2addr p0, p1

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    return-object v0
.end method

.method public final d(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FLandroid/graphics/Matrix;)Z
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isPenShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isInvalidSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0, v2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {p4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    sget-object p4, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {p4, p2, v0}, Lcom/onyx/android/sdk/base/utils/RectUtils;->isIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->b:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-interface {p1, p0, p3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->hitTestPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;F)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public final getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->b:Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final getSelectionPenWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->c:F

    return p0
.end method

.method public final getSelectionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->d:I

    return p0
.end method

.method public final inRegion(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->i:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->g:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->inRegion(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final inRegion(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/RectF;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Region;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "region"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Region;Landroid/graphics/Matrix;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget p2, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->h:F

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/AreaHitTestsHelper;->d(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FLandroid/graphics/Matrix;)Z

    move-result p0

    if-eqz p0, :cond_0

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
