.class public final Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFarthestPointAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FarthestPointAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 FarthestPointAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm\n*L\n30#1:55,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;",
        "",
        "()V",
        "findFarthestPointPair",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "points",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
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
        "SMAP\nFarthestPointAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FarthestPointAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 FarthestPointAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm\n*L\n30#1:55,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findFarthestPointPair(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 10
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
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getLongestEdge(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->findConvexHull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    :goto_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v7, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    rem-int v8, v7, v8

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v9, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;

    invoke-virtual {v9, v4, v5, v6}, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->cross(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v6

    invoke-virtual {v9, v4, v5, v8}, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->cross(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v7, v1

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v4

    cmpl-float v5, v4, v2

    if-lez v5, :cond_2

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    move v2, v4

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string p1, "points not enough"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method
