.class public abstract Lcom/onyx/android/sdk/genericshape/Geometry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/genericshape/IGeometry;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeometry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Geometry.kt\ncom/onyx/android/sdk/genericshape/Geometry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1#2:73\n1855#3,2:74\n*S KotlinDebug\n*F\n+ 1 Geometry.kt\ncom/onyx/android/sdk/genericshape/Geometry\n*L\n58#1:74,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0017J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u0004J\u0008\u0010\u0017\u001a\u00020\u0018H\u0004J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0010\u0010 \u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/Geometry;",
        "Lcom/onyx/android/sdk/genericshape/IGeometry;",
        "()V",
        "fromShapeType",
        "",
        "type",
        "",
        "getType",
        "()Ljava/lang/String;",
        "setType",
        "(Ljava/lang/String;)V",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "matrix",
        "Landroid/graphics/Matrix;",
        "strokePaint",
        "Landroid/graphics/Paint;",
        "fillPaint",
        "getFillPath",
        "Landroid/graphics/Path;",
        "getFromShapeType",
        "getRenderPathBoundingRect",
        "Landroid/graphics/RectF;",
        "isFromMarkerPen",
        "",
        "isFromPencil",
        "scaleSelectionPoints",
        "scaleX",
        "",
        "scaleY",
        "setFromShapeType",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeometry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Geometry.kt\ncom/onyx/android/sdk/genericshape/Geometry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1#2:73\n1855#3,2:74\n*S KotlinDebug\n*F\n+ 1 Geometry.kt\ncom/onyx/android/sdk/genericshape/Geometry\n*L\n58#1:74,2\n*E\n"
    }
.end annotation


# instance fields
.field private fromShapeType:I

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->type:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->fromShapeType:I

    return-void
.end method


# virtual methods
.method public applyFillColor(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->applyFillColor(Lcom/onyx/android/sdk/genericshape/IGeometry;I)V

    return-void
.end method

.method public applyStrokeColor(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->applyStrokeColor(Lcom/onyx/android/sdk/genericshape/IGeometry;I)V

    return-void
.end method

.method public applyStrokeWidth(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->applyStrokeWidth(Lcom/onyx/android/sdk/genericshape/IGeometry;F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string p4, "canvas"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "strokePaint"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadRenderPath()Landroid/graphics/Path;

    move-result-object p4

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 6
    :cond_0
    iget p0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->fromShapeType:I

    const/16 p2, 0x2e

    if-ne p0, p2, :cond_2

    .line 7
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    sget-object p2, Lcom/onyx/android/sdk/pen/utils/PenUtils;->INSTANCE:Lcom/onyx/android/sdk/pen/utils/PenUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/pen/utils/PenUtils;->getLOW_QUALITY_WIDTH()F

    move-result p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    .line 8
    invoke-virtual {p1, p4, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/pen/NeoPencilPen;->Companion:Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;

    invoke-virtual {p0, p1, p4, p3}, Lcom/onyx/android/sdk/pen/NeoPencilPen$Companion;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p4, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/DrawContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    return-void
.end method

.method public draw(Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoRenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->draw(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V

    return-void
.end method

.method public enableFillColor(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->enableFillColor(Lcom/onyx/android/sdk/genericshape/IGeometry;Z)V

    return-void
.end method

.method public erase(Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoRenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->erase(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/GeoRenderContext;)V

    return-void
.end method

.method public getBoundingRect()Landroid/graphics/RectF;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->getBoundingRect(Lcom/onyx/android/sdk/genericshape/IGeometry;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getFillPath()Landroid/graphics/Path;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadRenderPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public final getFromShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->fromShapeType:I

    return p0
.end method

.method public final getRenderPathBoundingRect()Landroid/graphics/RectF;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadRenderPath()Landroid/graphics/Path;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/PathKt;->computeBounds$default(Landroid/graphics/Path;ZILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    move-object v3, v0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/genericshape/Geometry$getRenderPathBoundingRect$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/genericshape/Geometry$getRenderPathBoundingRect$2;-><init>(Lcom/onyx/android/sdk/genericshape/Geometry;)V

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->type:Ljava/lang/String;

    return-object p0
.end method

.method public isEnableFillColor()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->isEnableFillColor(Lcom/onyx/android/sdk/genericshape/IGeometry;)Z

    move-result p0

    return p0
.end method

.method public final isFromMarkerPen()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->fromShapeType:I

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFromPencil()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->fromShapeType:I

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public scaleSelectionPoints(FF)V
    .locals 3

    invoke-interface {p0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->loadSelectionPoints()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2, p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->scale(FF)Lcom/onyx/android/sdk/base/data/TouchPoint;

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/genericshape/IGeometry;->updateBySelectionPoints(Ljava/util/List;)V

    return-void
.end method

.method public setFromShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->fromShapeType:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/Geometry;->type:Ljava/lang/String;

    return-void
.end method

.method public split(Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/genericshape/IGeometry$DefaultImpls;->split(Lcom/onyx/android/sdk/genericshape/IGeometry;Lcom/onyx/android/sdk/genericshape/erase/EraseBean;)Lcom/onyx/android/sdk/genericshape/erase/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method
