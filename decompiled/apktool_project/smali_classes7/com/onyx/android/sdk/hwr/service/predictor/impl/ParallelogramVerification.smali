.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParallelogramVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelogramVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1549#2:49\n1620#2,3:50\n*S KotlinDebug\n*F\n+ 1 ParallelogramVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification\n*L\n45#1:49\n45#1:50,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\u000b\u001a\u00020\u0006*\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;",
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
        "b",
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
        "SMAP\nParallelogramVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelogramVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1549#2:49\n1620#2,3:50\n*S KotlinDebug\n*F\n+ 1 ParallelogramVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification\n*L\n45#1:49\n45#1:50,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v10, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v10, v2, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, v5, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v11, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v11, v3, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object v9, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v7, v8

    :cond_0
    return v7
.end method

.method public output()Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->kneePoints$default(Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;ZZZLjava/lang/Number;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;->shapeName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Parallelogram"

    return-object p0
.end method

.method public similarObjectTypes()Ljava/util/List;
    .locals 17
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

    const-string v0, "Parallelogram"

    const-string v1, "box"

    const-string v2, "cap"

    const-string v3, "square"

    const-string v4, "anvil"

    const-string v5, "clipboard"

    const-string v6, "constellation"

    const-string v7, "bread"

    const-string v8, "bench"

    const-string v9, "shirt"

    const-string v10, "keyboard"

    const-string v11, "oven"

    const-string v12, "overalls"

    const-string v13, "laptop"

    const-string v14, "football field"

    const-string v15, "school"

    const-string v16, "map"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public verify()Z
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->kneePoints$default(Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;ZZZLjava/lang/Number;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->likeHeadToTail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->isAllSegmentsStraight$default(Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification;->b(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v7, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v9, 0x0

    sget-object v10, Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification$verify$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/impl/ParallelogramVerification$verify$1;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findMatchedAngleCount$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
