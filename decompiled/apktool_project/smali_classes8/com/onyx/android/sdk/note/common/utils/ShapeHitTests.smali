.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeHitTests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeHitTests.kt\ncom/onyx/android/sdk/note/common/utils/ShapeHitTests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,185:1\n1549#2:186\n1620#2,3:187\n1855#2,2:190\n215#3,2:192\n*S KotlinDebug\n*F\n+ 1 ShapeHitTests.kt\ncom/onyx/android/sdk/note/common/utils/ShapeHitTests\n*L\n57#1:186\n57#1:187,3\n105#1:190,2\n111#1:192,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\'\u0010(J&\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J6\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J4\u0010\t\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\u0004J \u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u0004J*\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\n2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0004J&\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J.\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004J\"\u0010\u001d\u001a\u00020\u0008*\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J*\u0010 \u001a\u00020\u0008*\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J2\u0010 \u001a\u00020\u0008*\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J\"\u0010&\u001a\u00020%2\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#2\u0008\u0010!\u001a\u0004\u0018\u00010\rH\u0002\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/BaseShape;",
        "shape",
        "",
        "x",
        "y",
        "radius",
        "",
        "hitTestShapePoint",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "points",
        "Landroid/graphics/Matrix;",
        "shapeMatrix",
        "shapePointList",
        "hitPointList",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "hitTestShapePoints",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapeList",
        "limit",
        "hitTestShapesPoints",
        "hitTestShapeLines",
        "x1",
        "y1",
        "x2",
        "y2",
        "hitTestOriginRect",
        "Landroid/graphics/RectF;",
        "rect",
        "hitTestRect",
        "matrix",
        "point",
        "",
        "outArray",
        "",
        "a",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapeHitTests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeHitTests.kt\ncom/onyx/android/sdk/note/common/utils/ShapeHitTests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,185:1\n1549#2:186\n1620#2,3:187\n1855#2,2:190\n215#3,2:192\n*S KotlinDebug\n*F\n+ 1 ShapeHitTests.kt\ncom/onyx/android/sdk/note/common/utils/ShapeHitTests\n*L\n57#1:186\n57#1:187,3\n105#1:190,2\n111#1:192,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;[FLandroid/graphics/Matrix;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    const/4 v0, 0x0

    aput p0, p2, v0

    const/4 p0, 0x1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    aput p1, p2, p0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_0
    return-void
.end method

.method public final hitTestOriginRect(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FFF)Z

    move-result p0

    return p0
.end method

.method public final hitTestRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;FFF)Z
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Landroid/graphics/Matrix;FFF)Z

    move-result p0

    return p0
.end method

.method public final hitTestRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Landroid/graphics/Matrix;FFF)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
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

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "matrix"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const/4 p1, 0x3

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p4, p1, p2

    const/4 p4, 0x1

    aput p5, p1, p4

    const/4 p5, 0x2

    aput p6, p1, p5

    .line 3
    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p3, p1, p2

    aget p4, p1, p4

    aget p1, p1, p5

    .line 4
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 6
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public final hitTestShapeLines(Lcom/onyx/android/sdk/note/common/shape/Shape;FFF)Z
    .locals 18
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "shape"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2
    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->getShapeVertices(Lcom/onyx/android/sdk/note/common/shape/Shape;)[F

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    .line 3
    array-length v7, v0

    if-lt v6, v7, :cond_0

    move v6, v2

    :cond_0
    add-int/lit8 v7, v4, 0x3

    .line 4
    array-length v8, v0

    const/4 v9, 0x1

    if-lt v7, v8, :cond_1

    move v7, v9

    .line 5
    :cond_1
    sget-object v10, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    .line 6
    aget v11, v0, v4

    aget v12, v0, v5

    .line 7
    aget v13, v0, v6

    aget v14, v0, v7

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    .line 8
    invoke-virtual/range {v10 .. v17}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_2

    return v9

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final hitTestShapeLines(Lcom/onyx/android/sdk/note/common/shape/Shape;FFFF)Z
    .locals 19
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "shape"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 10
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 11
    sget-object v3, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->getShapeVertices(Lcom/onyx/android/sdk/note/common/shape/Shape;)[F

    move-result-object v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    .line 12
    array-length v7, v0

    if-lt v6, v7, :cond_1

    move v6, v2

    :cond_1
    add-int/lit8 v7, v4, 0x3

    .line 13
    array-length v8, v0

    const/4 v9, 0x1

    if-lt v7, v8, :cond_2

    move v7, v9

    .line 14
    :cond_2
    sget-object v10, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    .line 15
    aget v11, v0, v4

    aget v12, v0, v5

    .line 16
    aget v13, v0, v6

    aget v14, v0, v7

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    .line 17
    invoke-virtual/range {v10 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestLine(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_3

    return v9

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final hitTestShapePoint(Lcom/onyx/android/sdk/note/common/shape/BaseShape;FFF)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/BaseShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestShapePoint(Ljava/util/List;Landroid/graphics/Matrix;FFF)Z

    move-result p0

    return p0
.end method

.method public final hitTestShapePoint(Ljava/util/List;Landroid/graphics/Matrix;FFF)Z
    .locals 19
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Landroid/graphics/Matrix;",
            "FFF)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "points"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v6, 0x1

    aput p4, v4, v6

    new-array v7, v3, [F

    .line 2
    fill-array-data v7, :array_0

    new-array v3, v3, [F

    .line 3
    fill-array-data v3, :array_1

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :cond_0
    if-ge v9, v8, :cond_1

    .line 5
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 6
    invoke-virtual {v0, v10, v7, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;[FLandroid/graphics/Matrix;)V

    add-int/lit8 v9, v9, 0x1

    .line 7
    new-instance v11, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$1;

    invoke-direct {v11, v10}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {v1, v9, v11}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getOrElse(Ljava/util/List;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, v10, v3, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;[FLandroid/graphics/Matrix;)V

    .line 8
    sget-object v11, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    aget v12, v7, v5

    aget v13, v7, v6

    aget v14, v3, v5

    aget v15, v3, v6

    aget v16, v4, v5

    aget v17, v4, v6

    move/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTest(FFFFFFF)Z

    move-result v10

    if-eqz v10, :cond_0

    return v6

    :cond_1
    return v5

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final hitTestShapePoint(Ljava/util/List;Ljava/util/List;Landroid/graphics/Matrix;F)Z
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Landroid/graphics/Matrix;",
            "F)Z"
        }
    .end annotation

    const-string v0, "shapePointList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitPointList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 10
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 11
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests;->hitTestShapePoint(Ljava/util/List;Landroid/graphics/Matrix;FFF)Z

    move-result p0

    return p0

    .line 12
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 13
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-nez p3, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    .line 17
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$shapePointMap$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeHitTests$hitTestShapePoint$shapePointMap$2;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 20
    sget-object p3, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->getTouchPointCoordinatesHashCode(Lcom/onyx/android/sdk/base/data/TouchPoint;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz p3, :cond_3

    .line 21
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v0, v2, p3, v3, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide p2

    float-to-double v2, p4

    cmpg-double p2, p2, v2

    if-gtz p2, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final hitTestShapePoints(Lcom/onyx/android/sdk/note/common/shape/BaseShape;Lcom/onyx/android/sdk/base/data/TouchPointList;F)Z
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/BaseShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3, p3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->hitTest(FFF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {p1, v2, v0, v4, v5}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->hitTest(FFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public final hitTestShapesPoints(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPointList;F)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            "F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shapeList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "hitPointList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v5, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->getTouchPointCoordinatesHashCode(Lcom/onyx/android/sdk/base/data/TouchPoint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/HashMap;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sget-object v6, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->getTouchPointCoordinatesHashCode(Lcom/onyx/android/sdk/base/data/TouchPoint;)I

    move-result v6

    if-eq v5, v6, :cond_4

    sget-object v5, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v4

    float-to-double v6, p3

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
