.class public final Lcom/onyx/android/sdk/hwr/utils/ArrowUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrowUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrowUtils.kt\ncom/onyx/android/sdk/hwr/utils/ArrowUtilsKt\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n41#2,5:86\n41#2,5:91\n1#3:96\n*S KotlinDebug\n*F\n+ 1 ArrowUtils.kt\ncom/onyx/android/sdk/hwr/utils/ArrowUtilsKt\n*L\n60#1:86,5\n63#1:91,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0000\u001a2\u0010\u0004\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "checkArrowFeature",
        "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "isArrowDistanceEnough",
        "",
        "arrowStartIndex",
        "",
        "arrowEndIndex",
        "lineStartIndex",
        "lineEndIndex",
        "sdk-hwr_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nArrowUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrowUtils.kt\ncom/onyx/android/sdk/hwr/utils/ArrowUtilsKt\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,85:1\n41#2,5:86\n41#2,5:91\n1#3:96\n*S KotlinDebug\n*F\n+ 1 ArrowUtils.kt\ncom/onyx/android/sdk/hwr/utils/ArrowUtilsKt\n*L\n60#1:86,5\n63#1:91,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final checkArrowFeature(Ljava/util/List;)Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;
    .locals 14
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPathCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setCenterPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowTurningPointThreshold()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findTurningPointFromCenterToStart(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setStartArrowPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowTurningPointThreshold()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findTurningPointFromCenterToEnd(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setEndArrowPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getStartArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getEndArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_2
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/RectKt;->longerSize(Landroid/graphics/RectF;)F

    move-result v5

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsByTurningPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findLongestSegment(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {p0, v8, v7}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-static {p0, v9, v10}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v10

    invoke-static {v10}, Lcom/onyx/android/sdk/base/extension/RectKt;->longerSize(Landroid/graphics/RectF;)F

    move-result v10

    invoke-virtual {v1, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/RectKt;->longerSize(Landroid/graphics/RectF;)F

    move-result v7

    invoke-virtual {v1, v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v9}, Lcom/onyx/android/sdk/base/extension/RectKt;->longerSize(Landroid/graphics/RectF;)F

    move-result v9

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMinimumLength()F

    move-result v12

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMaxLengthPercent()F

    move-result v13

    mul-float/2addr v13, v10

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v12

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getStartArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v13

    if-eqz v13, :cond_3

    move v13, v11

    goto :goto_0

    :cond_3
    move v13, v8

    :goto_0
    if-eqz v13, :cond_4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v12, v7}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getStartArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-static {p0, v7}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v11

    invoke-static {p0, v8, v7, v13, v3}, Lcom/onyx/android/sdk/hwr/utils/ArrowUtilsKt;->isArrowDistanceEnough(Ljava/util/List;IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v11

    goto :goto_1

    :cond_4
    move v3, v8

    :goto_1
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setHasStartArrow(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getEndArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v11

    goto :goto_2

    :cond_5
    move v3, v8

    :goto_2
    if-eqz v3, :cond_6

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v12, v3}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getEndArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-static {p0, v7}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {p0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v11

    invoke-static {p0, v3, v7, v9, v4}, Lcom/onyx/android/sdk/hwr/utils/ArrowUtilsKt;->isArrowDistanceEnough(Ljava/util/List;IIII)Z

    move-result p0

    if-eqz p0, :cond_6

    move p0, v11

    goto :goto_3

    :cond_6
    move p0, v8

    :goto_3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setHasEndArrow(Z)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMainSegmentMinLengthPercent()F

    move-result p0

    mul-float/2addr v5, p0

    cmpl-float p0, v10, v5

    if-lez p0, :cond_7

    move v8, v11

    :cond_7
    invoke-virtual {v0, v8}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setMainSegmentEnoughLong(Z)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getLineMistakenThresholdForArrow()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->length(Ljava/util/List;)F

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getLineMistakenThresholdPercent()F

    move-result v2

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->setMainSegmentStraight(Z)V

    return-object v0
.end method

.method public static final isArrowDistanceEnough(Ljava/util/List;IIII)Z
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;IIII)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->swapIndexAsc(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v0, p1, p2

    const/4 v1, 0x1

    aget p1, p1, v1

    add-int/2addr p1, v1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    invoke-static {p3, p4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->swapIndexAsc(II)[I

    move-result-object p3

    aget p4, p3, p2

    aget p3, p3, v1

    add-int/2addr p3, v1

    invoke-static {p0, p4, p3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    new-instance p3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p3, p4, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p3, p4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMinimumDistanceToLine()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    move p2, v1

    :cond_1
    return p2

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
