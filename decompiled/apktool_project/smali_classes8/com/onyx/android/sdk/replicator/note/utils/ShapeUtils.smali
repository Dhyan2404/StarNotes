.class public final Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J \u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;",
        "",
        "()V",
        "getTransformRect",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;",
        "originRectF",
        "Landroid/graphics/RectF;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "migrateAbsPoints",
        "pointList",
        "Lcom/onyx/android/sdk/base/data/TouchPointList;",
        "shapeMatrix",
        "shapeType",
        "",
        "sdk-replicator_overseasRelease"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;
    .locals 8
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "originRectF"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "matrix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;-><init>(Landroid/graphics/RectF;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v3, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v4, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointDistance(FFFF)F

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v4, v5, v0, v6, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getPointDistance(FFFF)F

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    div-float/2addr v2, v5

    sub-float/2addr v6, v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    add-float/2addr v0, v2

    invoke-direct {v1, v4, v6, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p2, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;Landroid/graphics/RectF;)F

    move-result p1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->setOriginRectF(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->setAngle(F)V

    return-object p0
.end method

.method public final migrateAbsPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;Landroid/graphics/Matrix;I)Landroid/graphics/Matrix;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPointList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "pointList"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lcom/onyx/android/sdk/replicator/note/utils/ShapeUtils;->getTransformRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getAngle()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterY()F

    move-result v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getAngle()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;->getOriginCenterY()F

    move-result p0

    invoke-virtual {p2, v0, v1, p0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/data/TouchPointList;->applyMatrix(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    return-object p2
.end method
