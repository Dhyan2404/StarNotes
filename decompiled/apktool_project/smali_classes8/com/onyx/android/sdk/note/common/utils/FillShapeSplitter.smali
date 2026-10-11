.class public final Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\rH\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "split",
        "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;",
        "c",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "touchPointList",
        "",
        "Landroid/graphics/RectF;",
        "rectFList",
        "",
        "a",
        "Landroid/graphics/Region;",
        "b",
        "eraseRegion",
        "inputRectF",
        "Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;",
        "d",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

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
    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/RectF;

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->createTouchPoint(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, p2}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->createTouchPoint(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Landroid/graphics/Region;
    .locals 10

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getErasePoints()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShape(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;

    move-result-object p0

    move-object v5, p0

    goto :goto_3

    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseRadius()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseRadius()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseRadius()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->getEraseRadius()F

    move-result v7

    add-float/2addr v2, v7

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_2

    :cond_3
    move-object v5, v0

    goto :goto_3

    :cond_4
    move-object v5, v1

    :goto_3
    if-nez v5, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionByPath$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;
    .locals 9

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->b(Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Landroid/graphics/Region;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;->ensureUpdateFillRectList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {p0, v3, v5}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->d(Landroid/graphics/Region;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->isErased()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->getSplitRectList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->a(Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/util/List;)V

    move v4, v6

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->a(Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/util/List;)V

    :goto_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isCutShape()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->getRemoveRectList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->a(Lcom/onyx/android/sdk/base/data/TouchPointList;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, v6}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setPathErased(Z)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    goto :goto_2

    :cond_4
    filled-new-array {v2}, [Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setRemoveSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    filled-new-array {v1}, [Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setSplitSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final d(Landroid/graphics/Region;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;
    .locals 7

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->setSplitRectList(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->setRemoveRectList(Ljava/util/List;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->roundExpandRectF(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->setPathErased(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v4, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, p1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    new-instance p1, Landroid/graphics/RegionIterator;

    invoke-direct {p1, v4}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {v4}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/onyx/android/sdk/note/common/data/split/SplitRectResult;->setPathErased(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->add(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/graphics/RegionIterator;

    invoke-direct {p1, v3}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RectUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RectUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/RectUtils;->toRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->add(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public final split(Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
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

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eraseBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/FillShapeSplitter;->c(Lcom/onyx/android/sdk/note/common/shape/fill/FillShape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v1, v2, p1, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isCutShape()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getRemoveSegmentList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2, p1, v3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setRemoveShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    :cond_0
    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->isPathErased()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    return-object v0
.end method
