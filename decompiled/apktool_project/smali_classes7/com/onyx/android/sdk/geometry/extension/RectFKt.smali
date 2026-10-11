.class public final Lcom/onyx/android/sdk/geometry/extension/RectFKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRectF.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/geometry/extension/RectFKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,595:1\n364#2:596\n364#2:602\n1#3:597\n1#3:603\n1855#4,2:598\n13309#5,2:600\n*S KotlinDebug\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/geometry/extension/RectFKt\n*L\n380#1:596\n527#1:602\n380#1:597\n527#1:603\n413#1:598,2\n526#1:600,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0010\u0004\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010\u0005\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000\u001a\u0012\u0010\u0007\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000\u001a\u0012\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u000c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\r\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u000e\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u000f\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u0010\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u001a\u0010\u0012\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000\u001a\u001a\u0010\u0013\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000\u001a\u001a\u0010\u0014\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000\u001a\u0012\u0010\u0015\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u0016\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u0017\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u0012\u0010\u0018\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0000\u001a\u001c\u0010\u001c\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010\u001d\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010\u001e\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a$\u0010 \u001a\u00020\t*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u0012\u0010!\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u001a\u0010$\u001a\u00020\t*\u00020\u00002\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001a\u001a\u0012\u0010%\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010&\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u001c\u0010(\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\'\u001a\u00020\u001a\u001a\u0012\u0010)\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010*\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0012\u0010+\u001a\u00020\u001a*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000\u001a2\u00101\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0002\u0010-\u001a\u00020,2\u0008\u0008\u0002\u0010.\u001a\u00020,2\u0008\u0008\u0002\u0010/\u001a\u00020,2\u0008\u0008\u0002\u00100\u001a\u00020,\u001a\u001c\u00103\u001a\u00020\u001a*\u00020\u00002\u0006\u00102\u001a\u00020\u001a2\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u001a\u001a\u00106\u001a\u00020\u0000*\u00020\u00002\u0006\u00104\u001a\u00020,2\u0006\u00105\u001a\u00020,\u001a\u0012\u00102\u001a\u00020\t*\u00020\u00002\u0006\u00102\u001a\u00020,\u001a\u0012\u00107\u001a\u00020\t*\u00020\u00002\u0006\u00102\u001a\u00020\u001a\u001a\u001a\u00107\u001a\u00020\t*\u00020\u00002\u0006\u00108\u001a\u00020\u001a2\u0006\u00109\u001a\u00020\u001a\u001a\n\u0010:\u001a\u00020\u0000*\u00020\u0000\u001a\n\u0010;\u001a\u00020\u0000*\u00020\u0000\u001a\n\u0010;\u001a\u00020<*\u00020<\u001a\n\u0010>\u001a\u00020=*\u00020<\u001a\u0018\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u00000@*\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010?\u001a\u0016\u0010B\u001a\u0008\u0012\u0004\u0012\u00020<0@*\u0008\u0012\u0004\u0012\u00020<0?\u001a\u0014\u0010D\u001a\u00020\u0000*\u0004\u0018\u00010\u00002\u0006\u0010C\u001a\u00020\u0000\u001a\u0014\u0010G\u001a\u00020\u0000*\u00020\u00002\u0008\u0010F\u001a\u0004\u0018\u00010E\u001a\u001c\u0010I\u001a\u00020\u0002*\u00020\u00002\u0006\u0010H\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010J\u001a\u00020\u0002*\u00020\u00002\u0006\u0010H\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010I\u001a\u00020\u0002*\u00020\u00002\u0006\u0010K\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010J\u001a\u00020\u0002*\u00020\u00002\u0006\u0010L\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010O\u001a\u00020N*\u00020\u00002\u0006\u0010M\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u001c\u0010P\u001a\u00020N*\u00020\u00002\u0006\u0010M\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u001a\u0010\u0010\u0011\u001a\u00020\u0000*\u0008\u0012\u0004\u0012\u00020\u00000?\u001a\u0012\u0010S\u001a\u00020\t*\u00020\u00002\u0006\u0010R\u001a\u00020Q\u001a\u0018\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00000@*\u00020\u00002\u0006\u0010T\u001a\u00020Q\u001a\u0012\u0010W\u001a\u00020\u0002*\u00020\u00002\u0006\u0010V\u001a\u00020\u0000\u001a\u0018\u0010Z\u001a\u00020\u0000*\u00020\u00002\u000c\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00000X\u001a\u0012\u0010\\\u001a\u00020\u0002*\u00020\u00002\u0006\u0010[\u001a\u00020\u0000\u001a \u0010_\u001a\u00020\u0002*\u0004\u0018\u00010\u00002\u0008\u0010]\u001a\u0004\u0018\u00010\u00002\u0008\u0008\u0002\u0010^\u001a\u00020\u001a\u001a\u0018\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00000?*\u00020\u00002\u0006\u0010`\u001a\u00020\u0000\u001a)\u0010d\u001a\u00020\u0000*\u00020\u00002\u0016\u0010c\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010E0b\"\u0004\u0018\u00010E\u00a2\u0006\u0004\u0008d\u0010e\u001a\u0012\u0010g\u001a\u00020\u0000*\u00020\u00002\u0006\u0010f\u001a\u00020\u001a\u001a\n\u0010h\u001a\u00020\u001a*\u00020\u0000\u001a\n\u0010i\u001a\u00020\u0000*\u00020\u0000\u001a\u0012\u0010k\u001a\u00020\u001a*\u00020\u00002\u0006\u0010R\u001a\u00020j\u001a\n\u0010l\u001a\u00020\u0000*\u00020\u0000\u001a\u0012\u0010o\u001a\u00020n*\u00020\u00002\u0006\u0010m\u001a\u00020\u0000\u001a\u0012\u0010p\u001a\u00020\t*\u00020\u00002\u0006\u0010[\u001a\u00020\u0000\u001a\n\u0010r\u001a\u00020q*\u00020\u0000\u001a\u001c\u0010t\u001a\u00020\u0002*\u00020\u00002\u0006\u0010V\u001a\u00020\u00002\u0008\u0008\u0002\u0010s\u001a\u00020\u001a\u00a8\u0006u"
    }
    d2 = {
        "Landroid/graphics/RectF;",
        "parent",
        "",
        "rebound",
        "limitRect",
        "limit",
        "limitRectF",
        "limitAndResize",
        "referenceRect",
        "",
        "alignOrigin",
        "centerAlign",
        "alignCenterHorizontal",
        "alignCenterVertical",
        "alignCenterIf",
        "alignCenterHorizontalIf",
        "alignCenterVerticalIf",
        "boundingRectF",
        "limitAndCenterIf",
        "limitAndCenterHorizontalIf",
        "limitAndCenterVerticalIf",
        "leftAlign",
        "rightAlign",
        "topAlign",
        "bottomAlign",
        "lastRect",
        "",
        "gap",
        "moveToBelow",
        "moveToRight",
        "moveToLeft",
        "rtl",
        "moveToEnd",
        "translateCoordinates",
        "width",
        "height",
        "scaleToPageByOrientation",
        "scaleToPage",
        "scaleToArea",
        "aspectScaleThreshold",
        "scaleToPageWithAspectScaleCheck",
        "scaleToWidth",
        "scaleToHeight",
        "fitWithinRect",
        "",
        "leftOffset",
        "rightOffset",
        "topOffset",
        "bottomOffset",
        "transform",
        "scale",
        "a",
        "sx",
        "sy",
        "scaleFromCenter",
        "scaleRect",
        "scaleX",
        "scaleY",
        "offsetToOrigin",
        "copy",
        "Landroid/graphics/Rect;",
        "Landroid/graphics/Point;",
        "center",
        "",
        "",
        "copyRectFList",
        "copyRectList",
        "dst",
        "unionOrCopy",
        "Landroid/graphics/Matrix;",
        "matrix",
        "copyAndTransform",
        "b",
        "hasVerticalOverlapWith",
        "hasHorizontalOverlapWith",
        "y",
        "x",
        "another",
        "",
        "verCheck",
        "horCheck",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "size",
        "resize",
        "sliceMaxSize",
        "split",
        "other",
        "isOutside",
        "Lkotlin/Function0;",
        "defaultValue",
        "ifEmpty",
        "rectF",
        "approximatelyTheSame",
        "target",
        "allowedMistakenRate",
        "approximatelyEqualsTo",
        "rectFB",
        "getNonIntersectRectFs",
        "",
        "matrixs",
        "concatTransform",
        "(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;",
        "degree",
        "rotate",
        "getDiagonalLength",
        "roundToExpand",
        "Landroid/util/Size;",
        "fitSafeRect",
        "createRectWithIntSize",
        "viewport",
        "Landroid/graphics/PointF;",
        "calculateOffsetToViewport",
        "unionRectByCorner",
        "Landroid/graphics/Path;",
        "toPath",
        "tolerance",
        "equalsWithTolerance",
        "sdk-geometry_release"
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
        "SMAP\nRectF.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/geometry/extension/RectFKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,595:1\n364#2:596\n364#2:602\n1#3:597\n1#3:603\n1855#4,2:598\n13309#5,2:600\n*S KotlinDebug\n*F\n+ 1 RectF.kt\ncom/onyx/android/sdk/geometry/extension/RectFKt\n*L\n380#1:596\n527#1:602\n380#1:597\n527#1:603\n413#1:598,2\n526#1:600,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;)F
    .locals 6

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleToRect exception, scale = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", return default value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v0

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    sub-float/2addr p2, v1

    div-float/2addr p2, v4

    add-float/2addr v5, p2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput v2, p0, Landroid/graphics/RectF;->left:F

    iput p2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v1

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    return p1
.end method

.method public static final alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static final alignCenterHorizontalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundWidth(Landroid/graphics/RectF;)I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundWidth(Landroid/graphics/RectF;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public static final alignCenterIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundWidth(Landroid/graphics/RectF;)I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundWidth(Landroid/graphics/RectF;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontal(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundHeight(Landroid/graphics/RectF;)I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundHeight(Landroid/graphics/RectF;)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterVertical(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public static final alignCenterVertical(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static final alignCenterVerticalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundHeight(Landroid/graphics/RectF;)I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->roundHeight(Landroid/graphics/RectF;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterVertical(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method public static final alignOrigin(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static final approximatelyEqualsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 5
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-nez p0, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    if-ne v2, v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    if-ne v2, v0, :cond_4

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v2, v2, p2

    if-gez v2, :cond_4

    iget v2, p0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr v2, p0

    cmpg-float p0, v2, p2

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0
.end method

.method public static synthetic approximatelyEqualsTo$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x3c23d70a    # 0.01f

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->approximatelyEqualsTo(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p0

    return p0
.end method

.method public static final approximatelyTheSame(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0    # Landroid/graphics/RectF;
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

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final bottomAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static final boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final calculateOffsetToViewport(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 5
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewport"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    :goto_0
    sub-float/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    sub-float v3, v1, v2

    goto :goto_2

    :cond_2
    iget p0, p0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p0, p1

    if-gez v1, :cond_3

    sub-float v3, p0, p1

    :cond_3
    :goto_2
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static final center(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 2
    .param p0    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static final centerAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static final varargs concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "matrixs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p0
.end method

.method public static final copy(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static final copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public static final copyAndTransform(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->nonNull(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p0
.end method

.method public static final copyRectFList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/geometry/extension/RectFKt$copyRectFList$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/extension/RectFKt$copyRectFList$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final copyRectList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/geometry/extension/RectFKt$copyRectList$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/extension/RectFKt$copyRectList$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final createRectWithIntSize(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    add-float/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static final equalsWithTolerance(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic equalsWithTolerance$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x3c23d70a    # 0.01f

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->equalsWithTolerance(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p0

    return p0
.end method

.method public static final fitSafeRect(Landroid/graphics/RectF;Landroid/util/Size;)F
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/SizeKt;->toRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final fitWithinRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static final getDiagonalLength(Landroid/graphics/RectF;)F
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final getNonIntersectRectFs(Landroid/graphics/RectF;Landroid/graphics/RectF;)Ljava/util/List;
    .locals 6
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectFB"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, p1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static final hasHorizontalOverlapWith(Landroid/graphics/RectF;FF)Z
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final hasHorizontalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic hasHorizontalOverlapWith$default(Landroid/graphics/RectF;FFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasHorizontalOverlapWith(Landroid/graphics/RectF;FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic hasHorizontalOverlapWith$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasHorizontalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p0

    return p0
.end method

.method public static final hasVerticalOverlapWith(Landroid/graphics/RectF;FF)Z
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final hasVerticalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic hasVerticalOverlapWith$default(Landroid/graphics/RectF;FFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasVerticalOverlapWith(Landroid/graphics/RectF;FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic hasVerticalOverlapWith$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasVerticalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p0

    return p0
.end method

.method public static final horCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "another"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasHorizontalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic horCheck$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->horCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I

    move-result p0

    return p0
.end method

.method public static final ifEmpty(Landroid/graphics/RectF;Lkotlin/jvm/functions/Function0;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/extension/RectFKt$ifEmpty$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/extension/RectFKt$ifEmpty$1;

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->ifEmpty(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final isOutside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

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

.method public static final leftAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static final limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v1, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    move v0, v2

    :cond_1
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v3, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    move v0, v2

    :cond_2
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, p1

    if-gez v1, :cond_3

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method public static final limitAndCenterHorizontalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundingRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterHorizontalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static final limitAndCenterIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundingRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static final limitAndCenterVerticalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundingRectF"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->limit(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->alignCenterVerticalIf(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static final limitAndResize(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limitRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    if-gez v0, :cond_0

    iput v1, p0, Landroid/graphics/RectF;->left:F

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iput v3, p0, Landroid/graphics/RectF;->right:F

    move v0, v2

    :cond_1
    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iput v3, p0, Landroid/graphics/RectF;->top:F

    move v0, v2

    :cond_2
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p1

    if-lez v1, :cond_3

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method public static final moveToBelow(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static synthetic moveToBelow$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToBelow(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static final moveToEnd(Landroid/graphics/RectF;Landroid/graphics/RectF;ZF)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToRight(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    :goto_0
    return-void
.end method

.method public static synthetic moveToEnd$default(Landroid/graphics/RectF;Landroid/graphics/RectF;ZFILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToEnd(Landroid/graphics/RectF;Landroid/graphics/RectF;ZF)V

    return-void
.end method

.method public static final moveToLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr v0, p1

    sub-float/2addr v0, p2

    iget p1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static synthetic moveToLeft$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToLeft(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static final moveToRight(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p2

    iget p2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static synthetic moveToRight$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->moveToRight(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static final offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public static final rebound(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v3, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float/2addr v4, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v4, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_1
    move v0, v2

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    move v0, v2

    :cond_3
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p1

    if-lez v1, :cond_4

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr p1, v4

    div-float/2addr p1, v1

    add-float/2addr v3, p1

    invoke-virtual {p0, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_2
    return v2
.end method

.method public static final resize(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static final rightAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static final rotate(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/MatrixKt;->rotationMatrix(FFF)Landroid/graphics/Matrix;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Matrix;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final roundToExpand(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->floor(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/FloatKt;->roundToIntFloat(F)F

    move-result v0

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method public static final scale(Landroid/graphics/RectF;Ljava/lang/Number;)V
    .locals 3
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static final scaleFromCenter(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;
    .locals 4
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    mul-float/2addr p0, p2

    div-float/2addr p0, v3

    add-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public static final scaleRect(Landroid/graphics/RectF;F)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 3
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 4
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static final scaleRect(Landroid/graphics/RectF;FF)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 6
    iget v0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 7
    iget v0, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 8
    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static final scaleToArea(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final scaleToPageByOrientation(Landroid/graphics/RectF;FF)V
    .locals 3
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-direct {v0, v1, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {v0, v1, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    invoke-static {p0, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    return-void
.end method

.method public static final scaleToPageWithAspectScaleCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    cmpg-float v1, v0, p2

    if-gtz v1, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v0

    cmpg-float p2, v1, p2

    if-gtz p2, :cond_1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic scaleToPageWithAspectScaleCheck$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x3e4ccccd    # 0.2f

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageWithAspectScaleCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)F

    move-result p0

    return p0
.end method

.method public static final scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public static final split(Landroid/graphics/RectF;Lcom/onyx/android/sdk/base/data/Size;)Ljava/util/List;
    .locals 16
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lcom/onyx/android/sdk/base/data/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sliceMaxSize"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    const/4 v7, 0x0

    move v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v10

    int-to-float v11, v8

    mul-float/2addr v11, v2

    sub-float/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v12, v10, v11

    if-gez v12, :cond_0

    goto :goto_3

    :cond_0
    move v12, v7

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v14

    int-to-float v15, v12

    mul-float/2addr v15, v3

    sub-float/2addr v14, v15

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    cmpg-float v15, v14, v11

    if-gez v15, :cond_1

    goto :goto_2

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v15

    invoke-virtual {v15, v13, v9}, Landroid/graphics/RectF;->offset(FF)V

    iget v6, v15, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v14

    iput v6, v15, Landroid/graphics/RectF;->right:F

    iget v6, v15, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v10

    iput v6, v15, Landroid/graphics/RectF;->bottom:F

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-float/2addr v13, v14

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    add-float/2addr v9, v10

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final toPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method public static final topAlign(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referenceRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static final transform(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;
    .locals 2
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftOffset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightOffset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topOffset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomOffset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget p1, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public static synthetic transform$default(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->transform(Landroid/graphics/RectF;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final translateCoordinates(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0
.end method

.method public static final unionOrCopy(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static final unionRectByCorner(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .param p0    # Landroid/graphics/RectF;
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

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->union(FF)V

    return-void
.end method

.method public static final verCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I
    .locals 1
    .param p0    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "another"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->hasVerticalOverlapWith(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic verCheck$default(Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->verCheck(Landroid/graphics/RectF;Landroid/graphics/RectF;F)I

    move-result p0

    return p0
.end method
