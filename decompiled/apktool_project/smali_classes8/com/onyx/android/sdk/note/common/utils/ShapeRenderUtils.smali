.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J$\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rJ2\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00120\u0011H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;",
        "",
        "Landroid/graphics/Matrix;",
        "matrix",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "pointList",
        "Landroid/graphics/Path;",
        "renderShape",
        "renderShapeByLineTo",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Landroid/graphics/RectF;",
        "originRect",
        "Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;",
        "renderOptions",
        "Landroid/graphics/Bitmap;",
        "renderShapeBitmap",
        "Lkotlin/Function1;",
        "",
        "compose",
        "a",
        "<init>",
        "()V",
        "RenderOptions",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic renderShapeBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getShapeOriginRectWithWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, p4, p5}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;-><init>(ZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->renderShapeBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Matrix;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Path;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getRenderPoints()Ljava/util/List;

    move-result-object p0

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final renderShape(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$renderShape$1;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$renderShape$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->a(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final renderShapeBitmap(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originRect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "renderOptions"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->getExtraScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->getExtraScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renderShapeBitmap, width/height("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") invalid, transformRect.originRect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    mul-int v3, v0, v1

    const/high16 v4, 0x10000000

    if-lt v3, v4, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderShapeBitmap oversize: shapeId: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageId: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " originRect: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " matrix: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " resource: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getRelativePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  width: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;)V

    return-object p2

    :cond_4
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "createBitmap(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getAngle()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterX()F

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterY()F

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    neg-float p0, p0

    invoke-virtual {v1, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->getExtraScale()F

    move-result p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->getExtraScale()F

    move-result v3

    invoke-virtual {v1, p0, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0, v3, v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext$Companion;->create(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setRenderColorConfig(I)Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setClipRect(Landroid/graphics/RectF;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShapeShaderManager(Lcom/onyx/android/sdk/note/common/data/shape/ShapeShaderManager;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$RenderOptions;->getShowExcerptIndicator()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setShowExcerptIndicator(Z)V

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    return-object p2
.end method

.method public final renderShapeByLineTo(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;)Landroid/graphics/Path;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$renderShapeByLineTo$1;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils$renderShapeByLineTo$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeRenderUtils;->a(Landroid/graphics/Matrix;Lcom/onyx/android/sdk/base/data/TouchPointList;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
