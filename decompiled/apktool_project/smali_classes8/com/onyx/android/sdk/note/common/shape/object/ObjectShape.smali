.class public abstract Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.super Lcom/onyx/android/sdk/note/common/shape/BaseShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
        "Lcom/onyx/android/sdk/note/common/shape/BaseShape;",
        "()V",
        "hitTest",
        "",
        "x",
        "",
        "y",
        "radius",
        "testData",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;-><init>()V

    return-void
.end method


# virtual methods
.method public hitTest(FFF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    aget v0, v1, v2

    aget p1, v1, p1

    invoke-virtual {p2, p0, v0, p1, p3}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->circleRectHitTest(Landroid/graphics/RectF;FFF)Z

    move-result p0

    return p0
.end method

.method public testData()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTests;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->testData()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method
