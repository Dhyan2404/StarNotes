.class public final Lcom/onyx/android/sdk/base/extension/MatrixKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/onyx/android/sdk/base/extension/MatrixKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,330:1\n1855#2,2:331\n337#3:333\n344#3,3:334\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/onyx/android/sdk/base/extension/MatrixKt\n*L\n41#1:331,2\n182#1:333\n184#1:334,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u001a\u000c\u0010\u0001\u001a\u00020\u0000*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u0002\u001a\u00020\u0000*\u0004\u0018\u00010\u0000\u001a%\u0010\u0005\u001a\u00020\u00002\u0016\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00000\u0003\"\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u001d\u0010\u0008\u001a\u00020\u0007*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\u000c\u0008\u0000\u0012\u0002\u0018\u0000\u001a\u0004\u0008\u0002\u0010\u0000\u001a\u001d\u0010\t\u001a\u00020\u0007*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\u000c\u0008\u0000\u0012\u0002\u0018\u0000\u001a\u0004\u0008\u0002\u0010\u0000\u001a\u000c\u0010\u000b\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u000c\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\r\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u000e\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u000f\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u0010\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u0011\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u00002\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\n\u001a\u000c\u0010\u0016\u001a\u00020\u0015*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u0018\u001a\u00020\u0017*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u001a\u001a\u00020\u0019*\u0004\u0018\u00010\u0000\u001a\u000c\u0010\u001b\u001a\u00020\u0000*\u0004\u0018\u00010\u0000\u001a\u0006\u0010\u001c\u001a\u00020\u0017\u001a\u000c\u0010\u001d\u001a\u00020\n*\u0004\u0018\u00010\u0000\u001a\u000e\u0010\u001e\u001a\u00020\n*\u0004\u0018\u00010\u0000H\u0007\u001a\u000e\u0010\u001f\u001a\u00020\n*\u0004\u0018\u00010\u0000H\u0007\u001a\u0012\u0010\u001d\u001a\u00020\n*\u00020\u00002\u0006\u0010!\u001a\u00020 \u001a\u0018\u0010$\u001a\u0004\u0018\u00010\"*\u0004\u0018\u00010\u00002\u0008\u0010#\u001a\u0004\u0018\u00010\"\u001a\u000c\u0010\u0018\u001a\u00020\u0017*\u0004\u0018\u00010\u0019\u001a\u000c\u0010%\u001a\u00020\u0000*\u0004\u0018\u00010\u0019\u001a\n\u0010&\u001a\u00020\n*\u00020\u0017\u001a\n\u0010\'\u001a\u00020\n*\u00020\u0017\u001a\n\u0010(\u001a\u00020\n*\u00020\u0017\u001a\n\u0010)\u001a\u00020\n*\u00020\u0017\u001a\u000c\u0010*\u001a\u00020\n*\u0004\u0018\u00010\u0017\u001a\u000c\u0010%\u001a\u00020\u0000*\u0004\u0018\u00010\u0017\u001a\u000c\u0010+\u001a\u00020\u0007*\u0004\u0018\u00010\u0017\u001a\n\u0010\u001d\u001a\u00020\n*\u00020\u0017\u001a\u000c\u0010\u001e\u001a\u00020\n*\u00020\u0017H\u0007\u001a\u000c\u0010\u001f\u001a\u00020\n*\u00020\u0017H\u0007\u001a\u0014\u0010\u001d\u001a\u00020\n*\u0004\u0018\u00010\u00172\u0006\u0010!\u001a\u00020 \u001a\u0016\u0010-\u001a\u00020\u0007*\u0004\u0018\u00010\u00172\u0008\u0010,\u001a\u0004\u0018\u00010\u0017\u001a\u0012\u00100\u001a\u00020.*\u00020\u00002\u0006\u0010/\u001a\u00020.\u001a\u001a\u00100\u001a\u00020.*\u00020\u00002\u0006\u00101\u001a\u00020\n2\u0006\u00102\u001a\u00020\n\u001a\u0012\u00104\u001a\u000203*\u00020\u00002\u0006\u0010/\u001a\u00020.\u001a\u0012\u00106\u001a\u00020\n*\u00020\u00002\u0006\u00105\u001a\u00020\n\u001a\n\u00107\u001a\u000203*\u00020\u0000\"\u0014\u0010:\u001a\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109\u00a8\u0006;"
    }
    d2 = {
        "Landroid/graphics/Matrix;",
        "nonNull",
        "copy",
        "",
        "matrices",
        "concat",
        "([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;",
        "",
        "isEmpty",
        "isNullOrEmpty",
        "",
        "getMaxScale",
        "getMinScale",
        "getAverageScale",
        "getTransX",
        "getTransY",
        "getScaleX",
        "getScaleY",
        "scaleX",
        "scaleY",
        "scaleTranslate",
        "",
        "info",
        "",
        "getMatrixValue",
        "Lcom/onyx/android/sdk/base/data/MatrixValues;",
        "toMatrixValues",
        "invertMatrix",
        "getDefaultMatrixValue",
        "getMatrixRotateAngel",
        "getMatrixFloatRotate",
        "getHorizontalAngle",
        "Landroid/graphics/RectF;",
        "rectF",
        "Landroid/graphics/Rect;",
        "rect",
        "mapRect",
        "getMatrixByValues",
        "getMatrixScaleX",
        "getMatrixScaleY",
        "getMatrixTransX",
        "getMatrixTransY",
        "getMatrixMinScale",
        "isEmptyMatrix",
        "m2",
        "safelyEquals",
        "Landroid/graphics/PointF;",
        "pointF",
        "mapPoint",
        "x",
        "y",
        "",
        "mapSelfPoint",
        "value",
        "getScaledFloat",
        "validateScaleLimit",
        "a",
        "Landroid/graphics/Matrix;",
        "EMPTY",
        "sdk-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Matrix.kt\ncom/onyx/android/sdk/base/extension/MatrixKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,330:1\n1855#2,2:331\n337#3:333\n344#3,3:334\n*S KotlinDebug\n*F\n+ 1 Matrix.kt\ncom/onyx/android/sdk/base/extension/MatrixKt\n*L\n41#1:331,2\n182#1:333\n184#1:334,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/extension/MatrixKt;->a:Landroid/graphics/Matrix;

    return-void
.end method

.method public static final varargs concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2
    .param p0    # [Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "matrices"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public static final getAverageScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMinScale(Landroid/graphics/Matrix;)F

    move-result v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMaxScale(Landroid/graphics/Matrix;)F

    move-result p0

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static final getDefaultMatrixValue()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/extension/MatrixKt;->a:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object v0

    return-object v0
.end method

.method public static final getHorizontalAngle(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/FloatRange;
        from = -90.0
        to = 90.0
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getHorizontalAngle([F)F

    move-result p0

    return p0
.end method

.method public static final getHorizontalAngle([F)F
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/FloatRange;
        from = -90.0
        to = 90.0
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixFloatRotate([F)F

    move-result p0

    neg-float p0, p0

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, v0, p0

    const/16 v1, 0xb4

    if-gez v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    int-to-float v0, v1

    sub-float/2addr p0, v0

    return p0

    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_2

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    int-to-float v0, v1

    add-float/2addr v0, p0

    return v0

    :cond_2
    return p0
.end method

.method public static final getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/base/data/MatrixValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/MatrixValues;->getValues()[F

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    array-length v1, p0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_0
    return-object v0
.end method

.method public static final getMatrixByValues([F)Landroid/graphics/Matrix;
    .locals 3
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p0, :cond_0

    .line 6
    array-length v1, p0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_0
    return-object v0
.end method

.method public static final getMatrixFloatRotate(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/FloatRange;
        from = -180.0
        to = 180.0
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixFloatRotate([F)F

    move-result p0

    return p0
.end method

.method public static final getMatrixFloatRotate([F)F
    .locals 4
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/FloatRange;
        from = -180.0
        to = 180.0
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x0

    .line 3
    aget p0, p0, v1

    float-to-double v0, v0

    float-to-double v2, p0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final getMatrixMinScale([F)F
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p0

    return p0

    :cond_2
    :goto_1
    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static final getMatrixRotateAngel(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel([F)F

    move-result p0

    return p0
.end method

.method public static final getMatrixRotateAngel(Landroid/graphics/Matrix;Landroid/graphics/RectF;)F
    .locals 14
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v0, v0, [F

    .line 3
    iget p1, p1, Landroid/graphics/RectF;->right:F

    aput p1, v0, v3

    aput v2, v0, v4

    .line 4
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6
    sget-object v5, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    aget p0, v1, v3

    float-to-double v6, p0

    aget p0, v1, v4

    float-to-double v8, p0

    aget p0, v0, v3

    float-to-double v10, p0

    aget p0, v0, v4

    float-to-double v12, p0

    invoke-virtual/range {v5 .. v13}, Lcom/onyx/android/sdk/base/utils/MathUtils;->calculateAngle(DDDD)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public static final getMatrixRotateAngel([F)F
    .locals 4
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    aget v0, p0, v0

    const/4 v1, 0x0

    .line 8
    aget p0, p0, v1

    float-to-double v0, v0

    float-to-double v2, p0

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static final getMatrixRotateAngel([FLandroid/graphics/RectF;)F
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues([F)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final getMatrixScaleX([F)F
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x3

    aget p0, p0, v1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final getMatrixScaleY([F)F
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final getMatrixTransX([F)F
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public static final getMatrixTransY([F)F
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    aget p0, p0, v0

    return p0
.end method

.method public static final getMatrixValue(Landroid/graphics/Matrix;)[F
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/onyx/android/sdk/base/extension/MatrixKt;->a:Landroid/graphics/Matrix;

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v0
.end method

.method public static final getMatrixValue(Lcom/onyx/android/sdk/base/data/MatrixValues;)[F
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/base/data/MatrixValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [F

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/MatrixValues;->getValues()[F

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final getMaxScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p0

    invoke-static {v0, p0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    return p0
.end method

.method public static final getMinScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const-string v0, "FLOAT_ONE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixMinScale([F)F

    move-result p0

    return p0
.end method

.method public static final getScaleX(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleX([F)F

    move-result p0

    return p0
.end method

.method public static final getScaleY(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixScaleY([F)F

    move-result p0

    return p0
.end method

.method public static final getScaledFloat(Landroid/graphics/Matrix;F)F
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMinScale(Landroid/graphics/Matrix;)F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static final getTransX(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixTransX([F)F

    move-result p0

    return p0
.end method

.method public static final getTransY(Landroid/graphics/Matrix;)F
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixTransY([F)F

    move-result p0

    return p0
.end method

.method public static final info(Landroid/graphics/Matrix;)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "matrix is null"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getTransX(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getTransY(Landroid/graphics/Matrix;)F

    move-result v3

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " sy="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " translateX="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " translateY="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " rotation="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method public static final isEmpty(Landroid/graphics/Matrix;)Z
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->isNullOrEmpty(Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public static final isEmptyMatrix([F)Z
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues([F)Landroid/graphics/Matrix;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/extension/MatrixKt;->a:Landroid/graphics/Matrix;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isNullOrEmpty(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/extension/MatrixKt;->a:Landroid/graphics/Matrix;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final mapPoint(Landroid/graphics/Matrix;FF)Landroid/graphics/PointF;
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    return-object v0
.end method

.method public static final mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3
    new-instance p0, Landroid/graphics/PointF;

    aget p1, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static final mapRect(Landroid/graphics/Matrix;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V
    .locals 4
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p0, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static final nonNull(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static final safelyEquals([F[F)Z
    .locals 6
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, p0, v3

    aget v5, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static final scaleTranslate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;
    .locals 4
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getTransX(Landroid/graphics/Matrix;)F

    move-result v0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getTransY(Landroid/graphics/Matrix;)F

    move-result v1

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float/2addr v0, p1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method public static final toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;
    .locals 1
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/MatrixValues;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixValue(Landroid/graphics/Matrix;)[F

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/base/data/MatrixValues;-><init>([F)V

    return-object v0
.end method

.method public static final validateScaleLimit(Landroid/graphics/Matrix;)V
    .locals 3
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scale over limit: sx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", sy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    return-void
.end method
