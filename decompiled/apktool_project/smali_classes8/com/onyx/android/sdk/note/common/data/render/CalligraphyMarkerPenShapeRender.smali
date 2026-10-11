.class public final Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;
.super Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u001e\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J0\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J0\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J\u0018\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u001e\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001aH\u0016J\u001e\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001aH\u0002R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001f\u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;",
        "Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;",
        "Landroid/graphics/Matrix;",
        "renderMatrix",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "createPenConfig",
        "penConfig",
        "",
        "segment",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "createPenRender",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lkotlin/Function1;",
        "",
        "config",
        "force",
        "ensurePenRender",
        "prepareRender",
        "drawFreePath",
        "clearLowLatencyData",
        "clearRender",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "onLowLatencyTouchData",
        "lowLatencyRender",
        "Lkotlin/Function0;",
        "render",
        "applyStrokeStyle",
        "a",
        "com/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1",
        "b",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;",
        "shapeRender",
        "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
        "penShape",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V",
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
.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2;

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$applySquareStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$applySquareStrokeStyle$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$applySquareStrokeStyle$1;-><init>(Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    invoke-super {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "render"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->a(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    return-object p0
.end method

.method public clearLowLatencyData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->clearLowLatencyData()V

    return-void
.end method

.method public clearRender()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->clearRender()V

    return-void
.end method

.method public createPenConfig(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->createPenConfig(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->resetBrushRatioAndAngle()V

    return-object p0
.end method

.method public createPenRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Landroid/graphics/Matrix;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;->createPenRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public createPenRender(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "penConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->createPenRender(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public drawFreePath(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    return-void
.end method

.method public ensurePenRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZLkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->ensurePenRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZLkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    return-object p0
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0
.end method

.method public onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->isFreeSubType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender;->b()Lcom/onyx/android/sdk/note/common/data/render/CalligraphyMarkerPenShapeRender$shapeRender$2$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0
.end method
