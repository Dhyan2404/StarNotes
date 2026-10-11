.class public final Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;",
        "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;",
        "args",
        "",
        "correct",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "b",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;->c(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;",
            ")",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->getParalleledPairs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->getAlignedPairs()Ljava/util/List;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->mergeList([Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector$findCorrectPair$1;

    new-instance v1, Lcom/sunia/HTREnginev2/i0f;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/i0f;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method public correct(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/correct/DefaultShapeCorrector;->b(Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;)Lkotlin/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->getRenderMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->transform(Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-static {v3, v1}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->transform(Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v3, v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationAngleForParallel(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/Guideline;->isShapeGuideLine()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-static {v3, p0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isAlign(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dx()F

    move-result p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dy()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
