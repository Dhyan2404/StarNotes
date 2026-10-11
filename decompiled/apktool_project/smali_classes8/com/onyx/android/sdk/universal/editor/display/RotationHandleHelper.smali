.class public final Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J(\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008J(\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008J&\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "shape",
        "Landroid/graphics/RectF;",
        "limitRect",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "",
        "extraMargin",
        "findBoundRectIncludingRotationPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "findRotationPoint",
        "",
        "position",
        "",
        "vertexPoints",
        "",
        "margin",
        "a",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic findBoundRectIncludingRotationPoint$default(Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;ILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->findBoundRectIncludingRotationPoint(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findRotationPoint$default(Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->findRotationPoint(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/util/List;F)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;F)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->gravityCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v2, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findSymmetricalPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p2, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 p0, 0x0

    invoke-static {p2, p3, p0, v3, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector$default(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;FLcom/onyx/android/sdk/base/data/TouchPoint;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final findBoundRectIncludingRotationPoint(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;)Landroid/graphics/RectF;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMargin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p3, v2, v0

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v2

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->getRotationPointSize()F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr p4, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->findRotationPoint(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/graphics/RectF;->union(FF)V

    return-object v0
.end method

.method public final findRotationPoint(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/RectF;Landroid/graphics/Matrix;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMargin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p3, v2, v0

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getStrokeWidth()F

    move-result v2

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v4

    mul-float/2addr v2, v4

    sget-object v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p1

    int-to-float p3, v1

    div-float/2addr v2, p3

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRenderKt;->getRotationPointMargin()F

    move-result p3

    add-float/2addr v2, p3

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p3

    add-float/2addr v2, p3

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Integer;

    const/4 p4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->a(ILjava/util/List;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p2, v1, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0, p4, p1, v2}, Lcom/onyx/android/sdk/universal/editor/display/RotationHandleHelper;->a(ILjava/util/List;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method
