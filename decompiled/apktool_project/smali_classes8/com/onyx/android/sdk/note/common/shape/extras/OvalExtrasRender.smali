.class public final Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u001b\u0010\u000e\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u000b\u0010\rR\u001b\u0010\u0010\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;",
        "Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "shape",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "",
        "draw",
        "Landroid/graphics/Paint;",
        "a",
        "Lkotlin/Lazy;",
        "()Landroid/graphics/Paint;",
        "dashPaint",
        "b",
        "solidPaint",
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


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender$dashPaint$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender$dashPaint$2;-><init>(Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender$solidPaint$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender$solidPaint$2;-><init>(Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->b:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final b()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Landroid/graphics/Matrix;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;->getSelectionPoints()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/Matrix;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p3, v3, p2

    invoke-virtual {v1, v0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->concatTransform(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    sub-float/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getCircleOvalDifferThresholdPercent()F

    move-result v5

    mul-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getCircleOvalDifferThreshold()F

    move-result v3

    sget-object v5, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    cmpg-float p3, p3, v2

    if-gez p3, :cond_0

    move v4, p2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v9

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->b()Landroid/graphics/Paint;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->a()Landroid/graphics/Paint;

    move-result-object p2

    :goto_0
    move-object v10, p2

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v9

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->b()Landroid/graphics/Paint;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/OvalExtrasRender;->a()Landroid/graphics/Paint;

    move-result-object p0

    :goto_1
    move-object v10, p0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getDefaultDashLinePaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender$DefaultImpls;->getDefaultDashLinePaint(Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSolidLinePaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender$DefaultImpls;->getDefaultSolidLinePaint(Lcom/onyx/android/sdk/note/common/shape/extras/ShapeExtrasRender;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method
