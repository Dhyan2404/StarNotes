.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurveVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/CurveVerification;",
        "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;",
        "()V",
        "shapeName",
        "",
        "similarObjectTypes",
        "",
        "verify",
        "",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;-><init>()V

    return-void
.end method


# virtual methods
.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Curve"

    return-object p0
.end method

.method public similarObjectTypes()Ljava/util/List;
    .locals 24
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

    const-string v0, "Curve"

    const-string v1, "line"

    const-string v2, "garden hose"

    const-string v3, "cap"

    const-string v4, "football stadium"

    const-string v5, "constellation"

    const-string v6, "mushroom"

    const-string v7, "wifi"

    const-string v8, "vest"

    const-string v9, "canoe"

    const-string v10, "toothbrush"

    const-string v11, "glove"

    const-string v12, "unicycle"

    const-string v13, "football trophy"

    const-string v14, "bird"

    const-string v15, "seahorse"

    const-string v16, "stitches"

    const-string v17, "hairbrush"

    const-string v18, "cooler"

    const-string v19, "robot"

    const-string v20, "kayak"

    const-string v21, "dog house"

    const-string v22, "golfer"

    const-string v23, "hockey player"

    filled-new-array/range {v0 .. v23}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 15

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getCurveCleanPointsPercent()F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    int-to-float v6, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getCurveCleanPointsPercent()F

    move-result v3

    sub-float/2addr v6, v3

    mul-float/2addr v4, v6

    float-to-int v3, v4

    invoke-static {v0, v1, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1f

    const/4 v14, 0x0

    move-object v6, v1

    invoke-static/range {v6 .. v14}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllTurningPoints$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->likeHeadToTail()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v5, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->isClosurePath()Z

    move-result p0

    if-nez p0, :cond_1

    move v2, v5

    :cond_1
    return v2
.end method
