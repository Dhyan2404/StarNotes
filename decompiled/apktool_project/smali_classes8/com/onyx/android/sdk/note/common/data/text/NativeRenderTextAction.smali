.class public final Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0004\u001a\u00020\u0000H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;",
        "",
        "",
        "render",
        "a",
        "Lcom/onegravity/rteditor/RTEditText;",
        "textRender",
        "",
        "b",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "getRenderContext",
        "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "setRenderContext",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/text/TextRenderCacheManager;->getRenderView(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text shape origin render size, w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v7}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b(Lcom/onegravity/rteditor/RTEditText;)V

    return-object p0
.end method

.method public final b(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final render()Z
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/Benchmark;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/Benchmark;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a()Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;

    const-string p0, "text render finish"

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/Benchmark;->report(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setRenderContext(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-void
.end method
