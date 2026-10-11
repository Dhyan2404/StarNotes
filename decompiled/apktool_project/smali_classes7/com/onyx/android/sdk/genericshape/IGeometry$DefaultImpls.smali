.class public final Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/IGeometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static applyFillColor(Lcom/onyx/android/sdk/genericshape/IGeometry;I)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static applyStrokeColor(Lcom/onyx/android/sdk/genericshape/IGeometry;I)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static applyStrokeWidth(Lcom/onyx/android/sdk/genericshape/IGeometry;F)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "strokePaint"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/DrawContext;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/DrawContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    const-string p0, "drawContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoRenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 4
    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static enableFillColor(Lcom/onyx/android/sdk/genericshape/IGeometry;Z)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static erase(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoRenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getBoundingRect(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/RectF;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/data/TouchPointList;->Companion:Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;

    invoke-interface {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadSelectionPoints()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;->getBoundingRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static isEnableFillColor(Lcom/onyx/android/sdk/genericshape/IGeometry;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public static split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/genericshape/IGeometry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "eraseBean"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;->setShapeErased(Z)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    return-object p0
.end method
