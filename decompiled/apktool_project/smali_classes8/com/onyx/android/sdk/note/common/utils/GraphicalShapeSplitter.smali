.class public final Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006J\u001a\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "eraseBean",
        "",
        "shapeType",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "split",
        "a",
        "Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;",
        "b",
        "Landroid/graphics/Path;",
        "path",
        "c",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic split$default(Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;IILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x24

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->split(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;I)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    return-object v6

    :cond_0
    new-instance p0, Landroid/graphics/RegionIterator;

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;->createRegionByPath$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRegionUtils;Landroid/graphics/Path;Landroid/graphics/RectF;ZILjava/lang/Object;)Landroid/graphics/Region;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_2

    return-object v6

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    const/16 v0, 0x25

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShape(Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v6

    :cond_3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setSplitSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setRemoveSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->c(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;Landroid/graphics/Path;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getRemoveSegmentList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getRemoveSegmentList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->isPathErased()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setPathErased(Z)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    return-object v0
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;Landroid/graphics/Path;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;
    .locals 18

    move-object/from16 v0, p2

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;-><init>()V

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-direct {v2, v4, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v4, 0x2

    new-array v5, v4, [F

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v7}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setRemoveSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setSplitSegmentList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    new-instance v8, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v8}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    new-instance v9, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v9}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    const/4 v11, 0x0

    move v15, v3

    move-object v14, v11

    const/4 v13, 0x0

    :goto_0
    cmpg-float v16, v13, v10

    const/4 v12, 0x1

    if-gez v16, :cond_6

    invoke-virtual {v2, v13, v5, v11}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v16

    if-eqz v16, :cond_5

    sget-object v11, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/PointUtils;

    aget v4, v5, v3

    aget v3, v5, v12

    invoke-virtual {v11, v4, v3}, Lcom/onyx/android/sdk/note/common/utils/PointUtils;->createTouchPoint(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isPointHitTest(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v9, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v8, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v8}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v9, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v9}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    :cond_2
    const/4 v4, 0x2

    int-to-float v11, v4

    sub-float v4, v10, v11

    cmpl-float v4, v13, v4

    if-ltz v4, :cond_3

    move v15, v12

    :cond_3
    invoke-virtual {v8, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    move-object/from16 v17, v2

    move-object v14, v3

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;

    const-string v11, "null point"

    move-object/from16 v17, v2

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v11, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v2, 0x2

    int-to-float v3, v2

    add-float/2addr v13, v3

    move v4, v2

    move-object/from16 v2, v17

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    move v2, v4

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->isClosedShape()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_7

    if-eqz v15, :cond_7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->addAll(ILjava/util/List;)V

    :cond_7
    const/4 v2, 0x0

    cmpg-float v2, v10, v2

    if-gtz v2, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->clone()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isAllPointHitTest(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1, v12}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setPathErased(Z)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    :cond_8
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1, v12}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->setPathErased(Z)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    :cond_a
    return-object v1
.end method

.method public final split(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;I)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
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

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->b(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getSplitSegmentList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapesAndRestMatrix(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;->isCutShape()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getRemoveSegmentList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapesAndRestMatrix(Ljava/util/List;Lcom/onyx/android/sdk/note/common/shape/Shape;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->isClosedShape()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->isIgnoreFill(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->isPathErased()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->isErased()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, v3

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->getSplitShapes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p2, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->getRemoveShapes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v4, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setSplitShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->isPathErased()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;->setRemoveShapes(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/split/SplitPathResult;->getNotHitTestPaths()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Path;

    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;

    invoke-virtual {v2, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeSplitUtils;->savePathToShape(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Path;I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method
