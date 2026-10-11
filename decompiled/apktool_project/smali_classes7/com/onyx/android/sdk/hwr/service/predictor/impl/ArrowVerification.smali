.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrowVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrowVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n673#2,2:57\n1549#3:59\n1620#3,3:60\n*S KotlinDebug\n*F\n+ 1 ArrowVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification\n*L\n52#1:57,2\n53#1:59\n53#1:60,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;",
        "Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;",
        "",
        "shapeName",
        "",
        "similarObjectTypes",
        "",
        "verify",
        "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;",
        "output",
        "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;",
        "a",
        "Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;",
        "arrowFeature",
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
        "SMAP\nArrowVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrowVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n673#2,2:57\n1549#3:59\n1620#3,3:60\n*S KotlinDebug\n*F\n+ 1 ArrowVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification\n*L\n52#1:57,2\n53#1:59\n53#1:60,3\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    return-void
.end method


# virtual methods
.method public output()Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getStartArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getEndArrowPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_1
    filled-new-array {v1, v2}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->getHasStartArrow()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->shapeName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Arrow"

    return-object p0
.end method

.method public similarObjectTypes()Ljava/util/List;
    .locals 23
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

    const-string v0, "Arrow"

    const-string v1, "arrow"

    const-string v2, "tie"

    const-string v3, "shirt"

    const-string v4, "football yard marker"

    const-string v5, "daisy"

    const-string v6, "line"

    const-string v7, "kayak"

    const-string v8, "cricket bat"

    const-string v9, "male symbol"

    const-string v10, "vest"

    const-string v11, "lollipop"

    const-string v12, "party hat"

    const-string v13, "tennis player"

    const-string v14, "golfer"

    const-string v15, "glove"

    const-string v16, "constellation"

    const-string v17, "diving board"

    const-string v18, "magic wand"

    const-string v19, "toothbrush"

    const-string v20, "scroll"

    const-string v21, "satellite"

    const-string v22, "blouse"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsByTurningPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findLongestSegment(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/LineUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->isLine(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/utils/ArrowUtilsKt;->checkArrowFeature(Ljava/util/List;)Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->likeHeadToTail()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->hasSingleArrow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->isMainSegmentEnoughLong()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ArrowVerification;->a:Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/utils/ArrowFeature;->isMainSegmentStraight()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowTurningPointThreshold()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getArrowMinimumLength()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->hasTurningPoint(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v3, v4

    :cond_1
    return v3
.end method
