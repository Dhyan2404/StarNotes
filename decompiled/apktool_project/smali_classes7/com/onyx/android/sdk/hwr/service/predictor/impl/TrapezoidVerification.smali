.class public final Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;
.super Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrapezoidVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrapezoidVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1045#2:62\n1045#2:63\n1549#2:64\n1620#2,3:65\n*S KotlinDebug\n*F\n+ 1 TrapezoidVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification\n*L\n44#1:62\n46#1:63\n58#1:64\n58#1:65,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\u000b\u001a\u00020\u0006*\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002R\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;",
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
        "",
        "a",
        "Ljava/util/List;",
        "sortedPoints",
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
        "SMAP\nTrapezoidVerification.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrapezoidVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1045#2:62\n1045#2:63\n1549#2:64\n1620#2,3:65\n*S KotlinDebug\n*F\n+ 1 TrapezoidVerification.kt\ncom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification\n*L\n44#1:62\n46#1:63\n58#1:64\n58#1:65,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v8, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v10, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v8, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v15, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v14, 0x2

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v15, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v11, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v11, v3, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v13, v3, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object v12, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v11

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v14, [Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    aput-object v8, v1, v9

    aput-object v11, v1, v10

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification$hasParallelSide$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification$hasParallelSide$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v11, v12

    move-object v12, v15

    move-object v3, v13

    move v4, v14

    move-object v14, v1

    move-object v1, v15

    move v15, v2

    invoke-static/range {v11 .. v17}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v4, [Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    aput-object v1, v2, v9

    aput-object v3, v2, v10

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification$hasParallelSide$$inlined$sortedBy$2;

    invoke-direct {v2}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification$hasParallelSide$$inlined$sortedBy$2;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    :goto_0
    iget-object v2, v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->a:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v10

    :cond_1
    return v9
.end method

.method public output()Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->a:Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->shapeName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public shapeName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Trapezoid"

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

    const-string v0, "Trapezoid"

    const-string v1, "cap"

    const-string v2, "tennis player"

    const-string v3, "anvil"

    const-string v4, "constellation"

    const-string v5, "basketball player"

    const-string v6, "queen"

    const-string v7, "taj mahal"

    const-string v8, "triangle"

    const-string v9, "robot"

    const-string v10, "box"

    const-string v11, "skirt"

    const-string v12, "party hat"

    const-string v13, "sushi"

    const-string v14, "hat"

    const-string v15, "comb"

    const-string v16, "bucket"

    const-string v17, "football field"

    const-string v18, "spyglass"

    const-string v19, "dress"

    const-string v20, "male symbol"

    const-string v21, "glove"

    const-string v22, "seal"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

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

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->likeHeadToTail()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;->isAllSegmentsStraight$default(Lcom/onyx/android/sdk/hwr/service/predictor/BaseShapeVerification;Ljava/lang/Number;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v7, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v8, v0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleRight$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLjava/lang/Number;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/predictor/impl/TrapezoidVerification;->b(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
