.class public interface abstract Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H&J \u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0018\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012H&J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u0003H&J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0012H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;",
        "",
        "shapeMatrix",
        "Landroid/graphics/Matrix;",
        "getShapeMatrix",
        "()Landroid/graphics/Matrix;",
        "setShapeMatrix",
        "(Landroid/graphics/Matrix;)V",
        "getRenderMatrix",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "isClosedShape",
        "",
        "onMirror",
        "",
        "type",
        "Lcom/onyx/android/sdk/geometry/data/MirrorType;",
        "translateDistance",
        "",
        "onPreRotate",
        "angle",
        "pivotPoint",
        "Landroid/graphics/PointF;",
        "onRotate",
        "onScale",
        "sx",
        "sy",
        "rectF",
        "Landroid/graphics/RectF;",
        "onTranslate",
        "dx",
        "dy",
        "postConcat",
        "matrix",
        "scaleDisplayScale",
        "scale",
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


# virtual methods
.method public abstract getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getShapeMatrix()Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isClosedShape()Z
.end method

.method public abstract onMirror(Lcom/onyx/android/sdk/geometry/data/MirrorType;F)V
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MirrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onPreRotate(FLandroid/graphics/PointF;)V
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onRotate(FLandroid/graphics/PointF;)V
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onScale(FFLandroid/graphics/RectF;)V
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onTranslate(FF)V
.end method

.method public abstract postConcat(Landroid/graphics/Matrix;)V
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract scaleDisplayScale(F)V
.end method

.method public abstract setShapeMatrix(Landroid/graphics/Matrix;)V
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
