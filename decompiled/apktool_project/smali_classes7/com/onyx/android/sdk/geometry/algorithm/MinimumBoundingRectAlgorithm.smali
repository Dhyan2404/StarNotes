.class public final Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMinimumBoundingRectAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MinimumBoundingRectAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1549#2:47\n1620#2,3:48\n1#3:51\n*S KotlinDebug\n*F\n+ 1 MinimumBoundingRectAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm\n*L\n25#1:47\n25#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;",
        "",
        "()V",
        "findMinimumBoundingRect",
        "Lcom/onyx/android/sdk/geometry/data/RotatedRect;",
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
        "SMAP\nMinimumBoundingRectAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MinimumBoundingRectAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1549#2:47\n1620#2,3:48\n1#3:51\n*S KotlinDebug\n*F\n+ 1 MinimumBoundingRectAlgorithm.kt\ncom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm\n*L\n25#1:47\n25#1:48,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/MinimumBoundingRectAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findMinimumBoundingRect(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 13
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
            "Lcom/onyx/android/sdk/geometry/data/RotatedRect;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/algorithm/ConvexHullAlgorithm;->findConvexHull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->Companion:Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;->getEMPTY()Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->Companion:Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/RotatedRect$Companion;->getEMPTY()Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->copy()Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v0, :cond_b

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, v2, v4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    sub-float/2addr v4, v7

    float-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, p0

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v8, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    neg-float v9, v4

    invoke-virtual {v8, v7, v3, v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v9

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    goto :goto_4

    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_5

    :cond_6
    sub-float v5, v8, v7

    sub-float v10, v6, v9

    mul-float v11, v5, v10

    cmpg-float v12, v11, v1

    if-gez v12, :cond_1

    add-float/2addr v7, v8

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr v7, p1

    add-float/2addr v9, v6

    div-float/2addr v9, p1

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v7, v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v1, p1, v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    invoke-direct {v1, p1, v5, v10, v4}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;FFF)V

    move-object p1, v1

    move v1, v11

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_b
    return-object p1
.end method
