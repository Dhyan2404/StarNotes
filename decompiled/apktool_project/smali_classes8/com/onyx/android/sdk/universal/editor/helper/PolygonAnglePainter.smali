.class public final Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/helper/AnglePainter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPolygonAnglePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonAnglePainter.kt\ncom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1549#2:152\n1620#2,3:153\n1855#2,2:156\n*S KotlinDebug\n*F\n+ 1 PolygonAnglePainter.kt\ncom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter\n*L\n48#1:152\n48#1:153,3\n50#1:156,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\"\u0010#J6\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\"\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPolygonAnglePainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonAnglePainter.kt\ncom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1549#2:152\n1620#2,3:153\n1855#2,2:156\n*S KotlinDebug\n*F\n+ 1 PolygonAnglePainter.kt\ncom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter\n*L\n48#1:152\n48#1:153,3\n50#1:156,2\n*E\n"
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

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;-><init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->a:F

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->b:Landroid/graphics/Paint;

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->c:Landroid/graphics/Paint;

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
    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;->access$createDefaultArcPaint()Landroid/graphics/Paint;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 8
    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;->access$createDefaultTextPaint()Landroid/graphics/Paint;

    move-result-object p3

    .line 9
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;-><init>(FLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;FZ)V
    .locals 19
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

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    const-string v2, "canvas"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "shape"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "points"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v8, v9, v10, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v2, v8, v9, v10, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v2, v12

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sget-object v6, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v1, v5}, Lcom/onyx/android/sdk/universal/editor/helper/AnglePurifierKt;->purifyAngles(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeAbilityFilterKt;->drawSingleAngleOnly(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v12

    :goto_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    iget v2, v0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->a:F

    new-instance v15, Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->c:Landroid/graphics/Paint;

    invoke-direct {v15, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->b:Landroid/graphics/Paint;

    invoke-direct {v6, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v3

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v9

    invoke-direct {v4, v5, v9}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v5, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v9

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v16

    sub-float v16, v16, v9

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v10

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    add-float/2addr v3, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 p2, v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v5, v10, v0, v14}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v5, v0, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->insideClosure(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/2addr v0, v10

    if-eqz v0, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/16 v14, 0x168

    int-to-float v14, v14

    sub-float/2addr v10, v14

    sget-object v14, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    move/from16 v17, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v14, v9}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v10, v9

    goto :goto_4

    :cond_3
    move/from16 v17, v9

    move/from16 v10, v16

    :goto_4
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v14, 0x43340000    # 180.0f

    cmpg-float v9, v9, v14

    if-gez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    :goto_5
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v14, v16, v14

    if-nez v14, :cond_5

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_6

    move v9, v0

    :cond_6
    div-float v14, p4, v4

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v1, v7, v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getStrokedAnglePoints(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;Z)Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    move-result-object v7

    if-nez v7, :cond_7

    move-object/from16 v9, p1

    move-object v14, v13

    move-object v13, v12

    goto/16 :goto_c

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v9

    move-object/from16 v16, v12

    move-object/from16 v18, v13

    goto :goto_7

    :cond_8
    new-instance v9, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-object/from16 v16, v12

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    move-object/from16 v18, v13

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    invoke-virtual {v9, v14, v12}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v9

    :goto_7
    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    invoke-virtual {v5, v12, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->insideClosure(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_9

    :goto_8
    move-object/from16 v9, p1

    move-object/from16 v13, v16

    move-object/from16 v14, v18

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v12

    invoke-static {v9, v12, v11}, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainterKt;->access$distanceToSides(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F

    move-result v12

    cmpg-float v13, v12, v14

    if-gez v13, :cond_a

    goto :goto_8

    :cond_a
    sub-float/2addr v12, v14

    sget-object v13, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v13}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getAngleRadiusMaxPercent()F

    move-result v13

    mul-float/2addr v12, v13

    cmpl-float v13, v2, v12

    if-lez v13, :cond_b

    div-float/2addr v12, v2

    mul-float/2addr v2, v12

    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    mul-float/2addr v13, v12

    invoke-virtual {v15, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    mul-float/2addr v13, v12

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_b
    if-eqz v0, :cond_c

    neg-float v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v9, v0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    goto :goto_9

    :cond_c
    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v9, v0, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    :goto_9
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    move-object/from16 v13, v18

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v12, 0x1

    xor-int/2addr v4, v12

    move-object/from16 v13, v16

    if-eqz v4, :cond_d

    invoke-interface {v13, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move-object/from16 v14, v18

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_a

    :cond_d
    move-object/from16 v14, v18

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0xb0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v5, v9, v1, v12}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getOvalRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz p5, :cond_e

    const/16 v1, 0x5a

    if-ne v3, v1, :cond_e

    move-object/from16 v9, p1

    invoke-static {v9, v7, v2, v6}, Lcom/onyx/android/sdk/universal/editor/helper/AnglePainterKt;->drawRightAngle(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/AnglePoints;FLandroid/graphics/Paint;)V

    move-object v12, v4

    goto :goto_b

    :cond_e
    move-object/from16 v9, p1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v3, v17

    move-object v12, v4

    move v4, v10

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_b
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v9, v15, v12, v1, v0}, Lcom/onyx/android/sdk/base/extension/CanvasKt;->drawTextFromCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)V

    :goto_c
    move-object/from16 v0, p0

    move-object v7, v9

    move-object v12, v13

    move-object v13, v14

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v14, p2

    goto/16 :goto_3

    :cond_f
    return-void
.end method

.method public final getArcPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getRadius()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->a:F

    return p0
.end method

.method public final getTextPaint()Landroid/graphics/Paint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->c:Landroid/graphics/Paint;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public final setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->a:F

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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;->c:Landroid/graphics/Paint;

    return-void
.end method
