.class public final Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00083\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J>\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nJ>\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J6\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006J>\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006J&\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006JF\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006J&\u0010\u001d\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006J.\u0010\u001d\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006J.\u0010*\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u0004R\u0014\u0010+\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00100\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008/\u0010.R\u0014\u00102\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00081\u0010.\u00a8\u00065"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "",
        "getTouchPointCoordinatesHashCode",
        "",
        "circleX",
        "circleY",
        "circleRadius",
        "",
        "ellipseX",
        "ellipseY",
        "ellipseA",
        "ellipseB",
        "",
        "circleEllipseHitTest",
        "x1",
        "y1",
        "x2",
        "y2",
        "cx",
        "cy",
        "radius",
        "hitTestLine",
        "getSmallestDistanceOfPointToLine",
        "x",
        "y",
        "limit",
        "hitTest",
        "Landroid/graphics/RectF;",
        "rect",
        "circleRectHitTest",
        "x3",
        "y3",
        "x4",
        "y4",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "touchPointList",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "drawableRes",
        "hitTestShapeDrawable",
        "ELLIPSE_HIT_TEST_DIFF_VALUE",
        "F",
        "ELLIPSE_HIT_TEST_POINTS",
        "I",
        "a",
        "MAX_XY",
        "b",
        "HIT_TEST_BLOCK_SIZE",
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


# static fields
.field public static final ELLIPSE_HIT_TEST_DIFF_VALUE:F = 0.5f

.field public static final ELLIPSE_HIT_TEST_POINTS:I = 0x168

.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I = 0x2710

.field public static final b:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final circleEllipseHitTest(FFFDDDD)Z
    .locals 18

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    move-wide/from16 v2, p8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-wide/from16 v4, p10

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x168

    if-ge v7, v8, :cond_1

    move/from16 v8, p1

    float-to-double v9, v8

    move/from16 v11, p3

    float-to-double v12, v11

    int-to-double v14, v7

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const/16 v6, 0xb4

    int-to-double v0, v6

    div-double/2addr v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v12

    add-double/2addr v9, v0

    move/from16 v0, p2

    move v1, v7

    float-to-double v6, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    sub-double v9, v9, p4

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double v6, v6, p6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v9, v2

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v6, v4

    add-double/2addr v9, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v9, v6

    if-ltz v6, :cond_0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpg-double v6, v9, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v7, v1, 0x4

    move-wide v0, v12

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public final circleRectHitTest(Landroid/graphics/RectF;FFF)Z
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, p2, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr p0, v0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    iget p0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr p0, v0

    goto :goto_0

    :cond_1
    move p0, p2

    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p3, v0

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr v0, p1

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    sub-float/2addr p2, p0

    sub-float/2addr p3, v0

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    float-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    float-to-double p2, p4

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final getSmallestDistanceOfPointToLine(FFFFFF)D
    .locals 8

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide p1

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide p3

    mul-double p5, p3, p3

    mul-double v2, v0, v0

    mul-double v4, p1, p1

    add-double v6, v2, v4

    cmpl-double p0, p5, v6

    if-ltz p0, :cond_0

    return-wide p1

    :cond_0
    add-double/2addr v2, p5

    cmpl-double p0, v4, v2

    if-ltz p0, :cond_1

    return-wide p3

    :cond_1
    add-double p5, v0, p1

    add-double/2addr p5, p3

    const/4 p0, 0x2

    int-to-double v2, p0

    div-double/2addr p5, v2

    sub-double v4, p5, v0

    mul-double/2addr v4, p5

    sub-double p0, p5, p1

    mul-double/2addr v4, p0

    sub-double/2addr p5, p3

    mul-double/2addr v4, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public final getTouchPointCoordinatesHashCode(Lcom/onyx/android/sdk/base/data/TouchPoint;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "touchPoint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    const/16 v0, 0x2710

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getTouchPointCoordinatesHashCode(Lcom/onyx/android/sdk/base/data/TouchPoint;II)I

    move-result p0

    return p0
.end method

.method public final hitTest(FFFFFFF)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/scribble/utils/Algorithm;->INSTANCE:Lcom/onyx/android/sdk/scribble/utils/Algorithm;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/scribble/utils/Algorithm;->distance(FFFFFF)F

    move-result p0

    cmpg-float p0, p0, p7

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hitTest(Lcom/onyx/android/sdk/base/data/TouchPointList;FFF)Z
    .locals 16
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointList"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 v3, 0x1

    aput p3, v0, v3

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 4
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v9

    .line 5
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v10

    .line 6
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    .line 7
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v12

    aget v13, v0, v2

    aget v14, v0, v3

    move-object/from16 v8, p0

    move/from16 v15, p4

    .line 8
    invoke-virtual/range {v8 .. v15}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTest(FFFFFFF)Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final hitTest(Lcom/onyx/android/sdk/base/data/TouchPointList;FFFF)Z
    .locals 19
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPointList"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 v3, 0x1

    aput p3, v0, v3

    const/4 v4, 0x2

    aput p4, v0, v4

    const/4 v5, 0x3

    aput p5, v0, v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 11
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    .line 12
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v12

    .line 13
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v13

    .line 14
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v14

    aget v15, v0, v2

    aget v16, v0, v3

    aget v17, v0, v4

    aget v18, v0, v5

    move-object/from16 v10, p0

    .line 15
    invoke-virtual/range {v10 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public final hitTestLine(FFFFFFF)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->getSmallestDistanceOfPointToLine(FFFFFF)D

    move-result-wide p0

    float-to-double p2, p7

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hitTestLine(FFFFFFFF)Z
    .locals 7

    sub-float p0, p4, p2

    sub-float v0, p1, p3

    mul-float v1, p3, p2

    mul-float v2, p1, p4

    sub-float/2addr v1, v2

    mul-float v2, p0, p5

    mul-float v3, v0, p6

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float v3, p0, p7

    mul-float v4, v0, p8

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    const/4 v1, 0x0

    cmpg-float v4, v2, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-nez v4, :cond_3

    cmpg-float v4, v3, v1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-nez v4, :cond_3

    .line 2
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v6

    :goto_2
    if-eqz v2, :cond_3

    return v6

    :cond_3
    sub-float v2, p8, p6

    sub-float v3, p5, p7

    mul-float/2addr p7, p6

    mul-float/2addr p5, p8

    sub-float/2addr p7, p5

    mul-float/2addr p1, v2

    mul-float/2addr p2, v3

    add-float/2addr p1, p2

    add-float/2addr p1, p7

    mul-float/2addr p3, v2

    mul-float/2addr p4, v3

    add-float/2addr p3, p4

    add-float/2addr p3, p7

    cmpg-float p2, p1, v1

    if-nez p2, :cond_4

    move p2, v5

    goto :goto_3

    :cond_4
    move p2, v6

    :goto_3
    if-nez p2, :cond_7

    cmpg-float p2, p3, v1

    if-nez p2, :cond_5

    move p2, v5

    goto :goto_4

    :cond_5
    move p2, v6

    :goto_4
    if-nez p2, :cond_7

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpg-float p1, p1, p2

    if-nez p1, :cond_6

    move p1, v5

    goto :goto_5

    :cond_6
    move p1, v6

    :goto_5
    if-eqz p1, :cond_7

    return v6

    :cond_7
    mul-float/2addr p0, v3

    mul-float/2addr v2, v0

    sub-float/2addr p0, v2

    cmpg-float p0, p0, v1

    if-nez p0, :cond_8

    move v6, v5

    :cond_8
    xor-int/lit8 p0, v6, 0x1

    return p0
.end method

.method public final hitTestShapeDrawable(FFFLcom/onyx/android/sdk/note/common/shape/Shape;I)Z
    .locals 10
    .param p4    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result p2

    const/16 v0, 0x2c

    if-ne p2, v0, :cond_1

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p2

    if-ge p2, v1, :cond_0

    return v3

    :cond_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-direct {p2, v0, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p2

    :goto_0
    move-object v5, p2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p4

    move v6, p5

    invoke-static/range {v4 .. v9}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->getDrawableRect$default(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ILandroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object p2

    aget p4, v2, v3

    aget p1, v2, p1

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->circleRectHitTest(Landroid/graphics/RectF;FFF)Z

    move-result p0

    return p0
.end method
