.class public final Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRightTriangleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RightTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1045#2:56\n223#2,2:57\n223#2,2:59\n*S KotlinDebug\n*F\n+ 1 RightTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor\n*L\n14#1:56\n19#1:57,2\n20#1:59,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;",
        "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "outline",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "extractArgs",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-geometry_release"
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
        "SMAP\nRightTriangleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RightTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,55:1\n1045#2:56\n223#2,2:57\n223#2,2:59\n*S KotlinDebug\n*F\n+ 1 RightTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor\n*L\n14#1:56\n19#1:57,2\n20#1:59,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getRotation()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setWidth(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setHeight(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setScaleY(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-gez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setSx(F)V

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setSy(F)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->updateCorners()V

    return-void
.end method

.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 9
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
            "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "outline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor$extractArgs$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor$extractArgs$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Collection contains no element matching the predicate."

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->containsEndPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getVerticalLine(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateX(F)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateY(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotation(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRx(F)V

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v2, v6, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRy(F)V

    filled-new-array {p1, v6, v1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    filled-new-array {p1, v6, v1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/extractor/RightTriangleArgsExtractor;->a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
