.class public final Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
.super Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u00080\u00101J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cJ\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000cJ\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0018\u001a\u00020\u0016H\u0002J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002J\u0018\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010!R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010#R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010%R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010%R\u0016\u0010\u0008\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010(R\u0016\u0010\r\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010/\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010+\u00a8\u00062"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;",
        "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;",
        "Landroid/graphics/RectF;",
        "renderRect",
        "setRenderRect",
        "editorRect",
        "setEditorRect",
        "",
        "textWidth",
        "setTextWidth",
        "textHeight",
        "setTextHeight",
        "",
        "saveShape",
        "setSaveShape",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "transformType",
        "setTransformType",
        "value",
        "setUpdateRectOnly",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "workBundle",
        "",
        "execute",
        "i",
        "g",
        "h",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "f",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "",
        "I",
        "TEXT_SHAPE_POINT_SIZE",
        "Landroid/graphics/RectF;",
        "j",
        "k",
        "F",
        "l",
        "m",
        "Z",
        "n",
        "Lcom/onyx/android/sdk/textbox/data/TransformType;",
        "o",
        "updateRectOnly",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:I

.field public i:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:F

.field public l:F

.field public m:Z

.field public n:Lcom/onyx/android/sdk/textbox/data/TransformType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 p1, 0x2

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->h:I

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->m:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->h()V

    :goto_0
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->clearSelectionRect()V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getSelectionRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->setSelectionRect(Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;)V

    return-void
.end method

.method public final g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->k:F

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->l:F

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, v2, v0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->onTranslate(FF)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update vertical position: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i:Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "render rect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", shape="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v2

    iget v3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->k:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v3

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->l:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->k:F

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    iget v4, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->l:F

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i()V

    const/4 v0, 0x0

    cmpg-float v2, v2, v0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    cmpg-float v2, v3, v0

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getRenderRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i:Landroid/graphics/RectF;

    :cond_5
    iget-boolean v2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->o:Z

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->j:Landroid/graphics/RectF;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i:Landroid/graphics/RectF;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrixInvertValue(F)F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->j:Landroid/graphics/RectF;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i:Landroid/graphics/RectF;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrixInvertValue(F)F

    move-result v3

    cmpg-float v5, v2, v0

    if-nez v5, :cond_7

    move v5, v4

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    if-eqz v5, :cond_9

    cmpg-float v0, v3, v0

    if-nez v0, :cond_8

    move v1, v4

    :cond_8
    if-nez v1, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0, v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->onTranslate(FF)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->f(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    :cond_a
    return-void
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->h:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getDownPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPointList;->setPoints(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v0

    add-float/2addr v1, v0

    invoke-direct {v2, v3, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->g:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0, v2, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    :cond_1
    return-void
.end method

.method public final setEditorRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->j:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setRenderRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setSaveShape(Z)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->m:Z

    return-object p0
.end method

.method public final setTextHeight(F)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->l:F

    return-object p0
.end method

.method public final setTextWidth(F)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->k:F

    return-object p0
.end method

.method public final setTransformType(Lcom/onyx/android/sdk/textbox/data/TransformType;)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/TransformType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->n:Lcom/onyx/android/sdk/textbox/data/TransformType;

    return-object p0
.end method

.method public final setUpdateRectOnly(Z)Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/request/textinput/UpdateTextShapeRectRequest;->o:Z

    return-object p0
.end method
