.class public final Lcom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParallelogramGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelogramGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,23:1\n1549#2:24\n1620#2,3:25\n1549#2:28\n1620#2,3:29\n37#3,2:32\n*S KotlinDebug\n*F\n+ 1 ParallelogramGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor\n*L\n17#1:24\n17#1:25,3\n18#1:28\n18#1:29,3\n20#1:32,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor;",
        "Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;",
        "()V",
        "extract",
        "",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "shape",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "sdk-note_overseasRelease"
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
        "SMAP\nParallelogramGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ParallelogramGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,23:1\n1549#2:24\n1620#2,3:25\n1549#2:28\n1620#2,3:29\n37#3,2:32\n*S KotlinDebug\n*F\n+ 1 ParallelogramGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/ParallelogramGuideLineExtractor\n*L\n17#1:24\n17#1:25,3\n18#1:28\n18#1:29,3\n20#1:32,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Ljava/util/List;
    .locals 16
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "shape"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getVertexPoints(I)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v1, v4, v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v15, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v11

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v8, 0x0

    move-object v9, v15

    move-object v7, v15

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/onyx/android/sdk/geometry/data/Guideline;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xa

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v1, v3, v4, v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/onyx/android/sdk/geometry/data/Guideline;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3, v4, v4}, Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractorKt;->configStandardAlignment(Ljava/util/List;ZZ)V

    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    new-array v1, v4, [Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    new-array v1, v4, [Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
