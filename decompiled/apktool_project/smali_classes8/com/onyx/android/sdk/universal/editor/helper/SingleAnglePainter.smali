.class public final Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/helper/AnglePainter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0016\u00a2\u0006\u0004\u0008)\u0010*J6\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\"\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\"\u0010(\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;",
        "Lcom/onyx/android/sdk/universal/editor/helper/AnglePainter;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
        "shape",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "points",
        "",
        "strokeWidth",
        "",
        "showRightAngle",
        "",
        "draw",
        "a",
        "F",
        "getRadius",
        "()F",
        "setRadius",
        "(F)V",
        "radius",
        "Landroid/graphics/Paint;",
        "b",
        "Landroid/graphics/Paint;",
        "getArcPaint",
        "()Landroid/graphics/Paint;",
        "setArcPaint",
        "(Landroid/graphics/Paint;)V",
        "arcPaint",
        "c",
        "getTextPaint",
        "setTextPaint",
        "textPaint",
        "d",
        "Z",
        "getSupportAngleGreaterThan180",
        "()Z",
        "setSupportAngleGreaterThan180",
        "(Z)V",
        "supportAngleGreaterThan180",
        "<init>",
        "(FLandroid/graphics/Paint;Landroid/graphics/Paint;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:F

.field public b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;-><init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "arcPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textPaint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->a:F

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->b:Landroid/graphics/Paint;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 6
    sget-object p1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getAngleDefaultRadius()F

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 8
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;-><init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;FZ)V
    .locals 16
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;FZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p3

    const-string v2, "canvas"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "shape"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "points"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v1, v4, v5, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getClockwiseAngle(Lcom/onyx/android/sdk/geometry/data/AnglePoints;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v7

    iget v8, v0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->a:F

    new-instance v9, Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->c:Landroid/graphics/Paint;

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->b:Landroid/graphics/Paint;

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v11, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v12, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v13

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v11}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v13

    const/high16 v14, 0x43340000    # 180.0f

    cmpg-float v14, v7, v14

    if-gez v14, :cond_1

    move v14, v5

    goto :goto_0

    :cond_1
    move v14, v4

    :goto_0
    if-nez v14, :cond_2

    iget-boolean v0, v0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->d:Z

    if-nez v0, :cond_2

    move v4, v5

    :cond_2
    or-int v0, v14, v4

    const/4 v14, 0x2

    int-to-float v14, v14

    div-float v15, p4, v14

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v1, v6, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getStrokedAnglePoints(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;Z)Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    move/from16 p2, v7

    move-object/from16 p3, v10

    goto :goto_1

    :cond_4
    new-instance v6, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move/from16 p2, v7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v7

    move-object/from16 p3, v10

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v6, v15, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    :goto_1
    div-float/2addr v3, v14

    add-float/2addr v3, v13

    if-eqz v4, :cond_5

    const v6, 0x40490fdb    # (float)Math.PI

    add-float/2addr v3, v6

    :cond_5
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v1, v6, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v7

    invoke-virtual {v12, v6}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const-string v7, "888"

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v7, v15

    if-eqz v0, :cond_6

    cmpg-float v0, v6, v7

    if-gez v0, :cond_6

    div-float/2addr v7, v6

    mul-float/2addr v8, v7

    :cond_6
    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->shortSideLength()F

    move-result v0

    sget-object v6, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getAngleSingleRadiusMaxPercent()F

    move-result v6

    mul-float/2addr v0, v6

    cmpl-float v6, v8, v0

    if-lez v6, :cond_7

    div-float/2addr v0, v8

    mul-float/2addr v8, v0

    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    mul-float/2addr v6, v0

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    mul-float/2addr v6, v0

    move-object/from16 v7, p3

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2

    :cond_7
    move-object/from16 v7, p3

    :goto_2
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    add-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v6

    const/16 v0, 0x168

    if-eqz v4, :cond_8

    int-to-float v3, v0

    sub-float v3, v3, p2

    goto :goto_3

    :cond_8
    move/from16 v3, p2

    :goto_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0xb0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v2, v1, v11, v12}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getOvalRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz p5, :cond_9

    const/16 v11, 0x5a

    if-ne v3, v11, :cond_9

    move-object/from16 v11, p1

    invoke-static {v11, v5, v8, v7}, Lcom/onyx/android/sdk/universal/editor/helper/AnglePainterKt;->drawRightAngle(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/AnglePoints;FLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    move-object/from16 v11, p1

    if-eqz v4, :cond_a

    int-to-float v0, v0

    sub-float v0, p2, v0

    move v3, v0

    goto :goto_4

    :cond_a
    move/from16 v3, p2

    :goto_4
    invoke-virtual {v2, v13}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_5
    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v11, v9, v10, v0, v1}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->drawTextFromCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method public final getArcPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->a:F

    return p0
.end method

.method public final getSupportAngleGreaterThan180()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->d:Z

    return p0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->c:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final setArcPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public final setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->a:F

    return-void
.end method

.method public final setSupportAngleGreaterThan180(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->d:Z

    return-void
.end method

.method public final setTextPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;->c:Landroid/graphics/Paint;

    return-void
.end method
