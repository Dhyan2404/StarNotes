.class public final Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u00a2\u0006\u0004\u0008!\u0010\"J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006H\u0002J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0019R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001cR\u0014\u0010 \u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;",
        "Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "updateRenderContext",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPointInPage",
        "onDown",
        "onUp",
        "onMove",
        "render",
        "f",
        "up",
        "c",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "d",
        "",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "e",
        "g",
        "a",
        "touchPointInRender",
        "b",
        "Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "currentPoint",
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "guideLineRender",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;)V
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance p1, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->isDrawingGuideLine()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    sget-object v2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineParallelDegThreshold()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->degreeToRad(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isHorizontal(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isVertical(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p0, v1, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/onyx/android/sdk/geometry/data/Guideline;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Landroid/graphics/RectF;

    move-result-object v2

    sget-object v4, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Drag:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->consumeStickyDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->isStickyState()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDx()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->getDy()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->translate(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->b(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p1
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->e()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->update(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)V

    return-void
.end method

.method public onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    return-void
.end method

.method public onMove(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->f(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->g()V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointInPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->c(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    return-void
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;->isFreeSubType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->d:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->a:Lcom/onyx/android/sdk/note/common/shape/pen/MarkerScribbleShape;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->drawGuideLines$default(Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;Landroid/graphics/Canvas;Ljava/util/List;FILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/MarkerPenGuideLineHandler;->b:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-void
.end method
