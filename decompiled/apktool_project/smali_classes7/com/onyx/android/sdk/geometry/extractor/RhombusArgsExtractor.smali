.class public final Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;",
        "Lcom/onyx/android/sdk/geometry/extractor/IGeometryArgsExtractor;",
        "()V",
        "extractArgs",
        "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;",
        "outline",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;->INSTANCE:Lcom/onyx/android/sdk/geometry/extractor/RhombusArgsExtractor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractArgs(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/GeometryArgs;
    .locals 7
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

    const-string p0, "outline"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, v0, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v2, v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p1

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v0, p1, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, p1, v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    filled-new-array {p0, v0, p1, v1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->gravityCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v5, v4, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v5

    neg-float v6, v5

    invoke-virtual {v3, v2, v4, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;

    invoke-direct {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;-><init>()V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCx(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setCy(F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setWidth(F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setHeight(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateX(F)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotateY(F)V

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setRotation(F)V

    filled-new-array {p0, v0, p1, v1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setPoints(Ljava/util/List;)V

    filled-new-array {p0, v0, p1, v1, v4}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->setExtras(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryArgs;->updateCorners()V

    return-object v3
.end method
