.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAngleVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AngleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n*S KotlinDebug\n*F\n+ 1 AngleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification\n*L\n63#1:66\n63#1:67,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;",
        "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;",
        "",
        "shapeName",
        "",
        "similarObjectTypes",
        "",
        "verify",
        "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;",
        "output",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "a",
        "Ljava/util/List;",
        "turningPoints",
        "<init>",
        "()V",
        "sdk-hwr_release"
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
        "SMAP\nAngleVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AngleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1549#2:66\n1620#2,3:67\n*S KotlinDebug\n*F\n+ 1 AngleVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification\n*L\n63#1:66\n63#1:67,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;-><init>()V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public output()Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->shapeName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Angle"

    return-object p0
.end method

.method public similarObjectTypes()Ljava/util/List;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Angle"

    const-string v1, "cap"

    const-string v2, "shirt"

    const-string v3, "queen"

    const-string v4, "kayak"

    const-string v5, "castle"

    const-string v6, "triangle"

    const-string v7, "box"

    const-string v8, "constellation"

    const-string v9, "party hat"

    const-string v10, "graduation cap"

    const-string v11, "deer"

    const-string v12, "male symbol"

    const-string v13, "vest"

    const-string v14, "cooler"

    const-string v15, "dress"

    const-string v16, "glove"

    const-string v17, "robot"

    const-string v18, "race car"

    const-string v19, "school"

    const-string v20, "diploma"

    const-string v21, "cap"

    const-string v22, "graduation cap"

    const-string v23, "bird"

    const-string v24, "stroller"

    const-string v25, "diploma"

    const-string v26, "football stadium"

    const-string v27, "elbow"

    const-string v28, "stairs"

    const-string v29, "hockey stick"

    const-string v30, "leg"

    const-string v31, "scooter"

    const-string v32, "golf club"

    const-string v33, "arm"

    const-string v34, "socks"

    const-string v35, "ramen"

    const-string v36, "sewing machine"

    filled-new-array/range {v0 .. v36}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 11

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getAngleTurningPointThresholdPercent()F

    move-result v2

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    sget-object v9, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMinimumLength()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllTurningPoints(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ZZ)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->length(Ljava/util/List;)F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getAngleTurningPointMinSpacingPercent()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->cleanClosePoints(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v6, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v7, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, v6, v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    new-instance v6, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    iget-object v7, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v8, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/AngleVerification;->a:Ljava/util/List;

    const/4 v10, 0x2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v6, v7, v8}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->isClosurePath()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getLineMistakenThreshold()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getAngleLineStraightThresholdPercent()F

    move-result v8

    mul-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v9, v5, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getLineMistakenThreshold()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getAngleLineStraightThresholdPercent()F

    move-result v7

    mul-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v9, v0, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getAngleSideDifferRateMax()F

    move-result v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    move v4, v3

    :cond_1
    return v4
.end method
