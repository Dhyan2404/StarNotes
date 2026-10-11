.class public final Lcom/onyx/android/sdk/hwr/utils/LineUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineUtils.kt\ncom/onyx/android/sdk/hwr/utils/LineUtils\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n657#2,14:77\n1855#3:91\n1940#3,14:92\n1856#3:106\n*S KotlinDebug\n*F\n+ 1 LineUtils.kt\ncom/onyx/android/sdk/hwr/utils/LineUtils\n*L\n42#1:77,14\n61#1:91\n63#1:92,14\n61#1:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\u0008\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0014\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/utils/LineUtils;",
        "",
        "()V",
        "isAllPointParallel",
        "",
        "points",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "isAllPointParallelIgnoreDirection",
        "isLine",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLineUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LineUtils.kt\ncom/onyx/android/sdk/hwr/utils/LineUtils\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n657#2,14:77\n1855#3:91\n1940#3,14:92\n1856#3:106\n*S KotlinDebug\n*F\n+ 1 LineUtils.kt\ncom/onyx/android/sdk/hwr/utils/LineUtils\n*L\n42#1:77,14\n61#1:91\n63#1:92,14\n61#1:106\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/utils/LineUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/LineUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/LineUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/LineUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAllPointParallel(Ljava/util/List;)Z
    .locals 8
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

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getLinePointResampleSpacing()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->resample$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v1, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-gt v3, v4, :cond_3

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v7, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v7, v5, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v5

    sget-object v6, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v6, v5, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaRad(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getLineMistakeDegree()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method public final isAllPointParallelIgnoreDirection(Ljava/util/List;)Z
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
            ">;)Z"
        }
    .end annotation

    const-string p0, "points"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v3, p0, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    filled-new-array {p0, v1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v8, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v8, v7, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v7

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v11, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v11, v10, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v12

    if-gez v12, :cond_5

    move-object v6, v9

    move-wide v7, v10

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    :goto_0
    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v5, v4, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaRad(FF)F

    move-result v5

    const v6, 0x3fc90fdb

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    const v6, 0x40490fdb    # (float)Math.PI

    sub-float v5, v6, v5

    :cond_6
    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/constant/HWRConfigurations;->getLineMistakenDegreeForRuler()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    return v0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_8
    return v2
.end method

.method public final isLine(Ljava/util/List;)Z
    .locals 4
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/LineUtils;->isAllPointParallel(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v1
.end method
