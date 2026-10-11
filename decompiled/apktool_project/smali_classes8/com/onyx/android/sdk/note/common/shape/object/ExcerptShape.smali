.class public final Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;
.super Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0016J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002R\"\u0010\u001c\u001a\u00020\u00158\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;",
        "Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "",
        "render",
        "",
        "updateShapeRect",
        "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;",
        "embedShapeBean",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "toPdfShape",
        "",
        "x",
        "y",
        "radius",
        "hitTest",
        "a",
        "Landroid/graphics/Paint;",
        "strokePaint",
        "b",
        "",
        "J",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "K",
        "Z",
        "showExcerptIndicator",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public J:I

.field public K:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;-><init>()V

    const/16 v0, 0x29

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->J:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->K:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getShowExcerptIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v3, Lcom/onyx/android/sdk/note/R$drawable;->excerpt_indicator:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->renderDrawable$default(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ILandroid/graphics/RectF;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/graphics/Paint;)V
    .locals 2

    new-instance p0, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->J:I

    return p0
.end method

.method public hitTest(FFF)Z
    .locals 6

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->K:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;->hitTest(FFF)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;

    sget v5, Lcom/onyx/android/sdk/note/R$drawable;->excerpt_indicator:I

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/utils/HitTestUtils;->hitTestShapeDrawable(FFFLcom/onyx/android/sdk/note/common/shape/Shape;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/shape/object/ObjectShape;->hitTest(FFF)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->b(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getShowExcerptIndicator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->K:Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->J:I

    return-void
.end method

.method public toPdfShape(Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;->createPdfShape$default(Lcom/onyx/android/sdk/note/common/shape/object/ExcerptShape$Companion;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;IILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;

    move-result-object p0

    return-object p0
.end method

.method public updateShapeRect()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setOriginRect(Landroid/graphics/RectF;)V

    sget v0, Lcom/onyx/android/sdk/note/R$drawable;->excerpt_indicator:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->getBoundingRectWithDrawable$default(Lcom/onyx/android/sdk/note/common/shape/Shape;ILandroid/graphics/Matrix;ILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method
