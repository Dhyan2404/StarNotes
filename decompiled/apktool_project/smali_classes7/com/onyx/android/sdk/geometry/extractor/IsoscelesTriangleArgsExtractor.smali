.class public final Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIsoscelesTriangleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsoscelesTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n2310#2,14:55\n*S KotlinDebug\n*F\n+ 1 IsoscelesTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor\n*L\n18#1:55,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u000c\u0010\u0008\u001a\u00020\u0007*\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;",
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
        "SMAP\nIsoscelesTriangleArgsExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IsoscelesTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n2310#2,14:55\n*S KotlinDebug\n*F\n+ 1 IsoscelesTriangleArgsExtractor.kt\ncom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor\n*L\n18#1:55,14\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V
    .locals 3

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getRotateX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getRotateY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getRotation()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setWidth(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setHeight(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getCx()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setScaleX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getCy()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setScaleY(F)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getCy()F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setSy(F)V

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->getCx()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setSx(F)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->updateCorners()V

    return-void
.end method

.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 5
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->sideLengthDifferRate()F

    move-result v1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->sideLengthDifferRate()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_2

    move-object v0, v2

    move v1, v3

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->shortSideLength()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->longSideLength()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->average(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousDirection()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->nextDirection()F

    move-result v0

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, p1, v4, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, p1, v1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateX(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateY(F)V

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v3, v2, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotation(F)V

    filled-new-array {p1, v2, v0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    filled-new-array {p1, v2, v0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/geometry/extractor/IsoscelesTriangleArgsExtractor;->a(Lcom/onyx/android/sdk/geometry/data/GeometryArgs;)V

    return-object v1

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
