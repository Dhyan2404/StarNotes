.class public final Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaveLineFeatureValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveLineFeatureValidator.kt\ncom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n766#2:77\n857#2,2:78\n*S KotlinDebug\n*F\n+ 1 WaveLineFeatureValidator.kt\ncom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator\n*L\n52#1:75,2\n71#1:77\n71#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J(\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;",
        "",
        "()V",
        "checkWaveLineFeature",
        "",
        "points",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "groupByDirection",
        "rotatedRect",
        "Lcom/onyx/android/sdk/geometry/data/RotatedRect;",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWaveLineFeatureValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaveLineFeatureValidator.kt\ncom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1855#2,2:75\n766#2:77\n857#2,2:78\n*S KotlinDebug\n*F\n+ 1 WaveLineFeatureValidator.kt\ncom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator\n*L\n52#1:75,2\n71#1:77\n71#1:78,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkWaveLineFeature(Ljava/util/List;)Z
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
            ">;)Z"
        }
    .end annotation

    const-string v0, "points"

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

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$expectationOfX$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$expectationOfX$1;

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;->getExpectation(Ljava/util/List;Lkotlin/jvm/functions/Function1;)F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$expectationOfY$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$expectationOfY$1;

    invoke-virtual {v1, p1, v3}, Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;->getExpectation(Ljava/util/List;Lkotlin/jvm/functions/Function1;)F

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$deviationOfX$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$deviationOfX$1;

    invoke-virtual {v1, p1, v4}, Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;->getStandardDeviation(Ljava/util/List;Lkotlin/jvm/functions/Function1;)F

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$deviationOfY$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator$checkWaveLineFeature$deviationOfY$1;

    invoke-virtual {v1, p1, v5}, Lcom/onyx/android/sdk/geometry/algorithm/ExpectationAndVariance;->getStandardDeviation(Ljava/util/List;Lkotlin/jvm/functions/Function1;)F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getWidth()F

    move-result v5

    sget-object v6, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getWaveLineExpectationFactor()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    cmpg-float v2, v2, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getHeight()F

    move-result v3

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getWaveLineExpectationFactor()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v3, v8

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getWidth()F

    move-result v2

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getWaveLineDeviationFactor()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v2, v4, v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getHeight()F

    move-result v2

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getWaveLineDeviationFactor()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    if-nez v1, :cond_1

    return v7

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/WaveLineFeatureValidator;->groupByDirection(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/RotatedRect;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getWaveLineMinTurningPointCount()I

    move-result p1

    if-lt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    :goto_1
    return v5
.end method

.method public final groupByDirection(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/RotatedRect;)Ljava/util/List;
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/RotatedRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/geometry/data/RotatedRect;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotatedRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getNextItem(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v11, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v11

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/utils/MathUtils;->areApproximatelyEqual$default(Lcom/onyx/android/sdk/base/utils/MathUtils;FFFILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(FLjava/lang/Float;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getHeight()F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getWaveLinePeakFactor()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object p0
.end method
