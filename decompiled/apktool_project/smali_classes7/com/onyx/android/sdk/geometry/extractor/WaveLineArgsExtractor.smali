.class public final Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaveLineArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveLineArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1549#2:50\n1620#2,3:51\n1549#2:54\n1620#2,3:55\n1045#2:58\n*S KotlinDebug\n*F\n+ 1 WaveLineArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor\n*L\n21#1:50\n21#1:51,3\n22#1:54\n22#1:55,3\n26#1:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;",
        "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "outline",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "extractArgs",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-geometry_release"
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
        "SMAP\nWaveLineArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveLineArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n1549#2:50\n1620#2,3:51\n1549#2:54\n1620#2,3:55\n1045#2:58\n*S KotlinDebug\n*F\n+ 1 WaveLineArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor\n*L\n21#1:50\n21#1:51,3\n22#1:54\n22#1:55,3\n26#1:58\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setLeft(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setTop(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateY(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotation(F)V

    return-void
.end method

.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;->findMinimumBoundingRect(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->swapWidthAndHeightIfNeeded()Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getRotationInRad()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;

    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;->groupByDirection(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/RotatedRect;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getRotationInRad()F

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getHeight()F

    move-result v4

    div-float/2addr v4, v3

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getWidth()F

    move-result v7

    neg-float v7, v7

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getRotationInRad()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getWidth()F

    move-result v8

    div-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getRotationInRad()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v3, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    filled-new-array {v6, v3}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor$extractArgs$$inlined$sortedBy$1;

    invoke-direct {v5, p1}, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor$extractArgs$$inlined$sortedBy$1;-><init>(Ljava/util/List;)V

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setWidth(F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getHeight()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setHeight(F)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCycle(F)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPeak(F)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/geometry/extractor/WaveLineArgsExtractor;->a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    return-object v3
.end method
