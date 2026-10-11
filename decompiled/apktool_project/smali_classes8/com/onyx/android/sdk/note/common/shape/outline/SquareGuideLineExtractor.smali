.class public final Lcom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/outline/GuideLineExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSquareGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SquareGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n1855#2,2:32\n1549#2:34\n1620#2,3:35\n37#3,2:38\n*S KotlinDebug\n*F\n+ 1 SquareGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor\n*L\n15#1:28\n15#1:29,3\n16#1:32,2\n23#1:34\n23#1:35,3\n24#1:38,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor;",
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
        "SMAP\nSquareGuideLineExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SquareGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n1855#2,2:32\n1549#2:34\n1620#2,3:35\n37#3,2:38\n*S KotlinDebug\n*F\n+ 1 SquareGuideLineExtractor.kt\ncom/onyx/android/sdk/note/common/shape/outline/SquareGuideLineExtractor\n*L\n15#1:28\n15#1:29,3\n16#1:32,2\n23#1:34\n23#1:35,3\n24#1:38,2\n*E\n"
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
    .locals 14
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

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getSelectionPoints()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v13, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

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

    invoke-interface {v1, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->setSupportHorizontalAlignment(Z)V

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->setSupportVerticalAlignment(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-direct {v0, v5, v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-direct {v5, v7, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-array p0, v6, [Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    aput-object v0, p0, v2

    aput-object v5, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/onyx/android/sdk/geometry/data/Guideline;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance p0, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p0, v6}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    new-array p1, v2, [Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    new-array p1, v2, [Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
