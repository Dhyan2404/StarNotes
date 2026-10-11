.class public final Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;
.super Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J0\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J0\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00072\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u0008\u0010\u001b\u001a\u00020\u000eH\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016J\u001e\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016R\u0018\u0010!\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R$\u0010)\u001a\u0004\u0018\u00010\"8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
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
        "render",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "onLowLatencyTouchData",
        "lowLatencyRender",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "cloneRenderData",
        "destroyPenRender",
        "clearRender",
        "Lkotlin/Function0;",
        "applyStrokeStyle",
        "b",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "neoPenRender",
        "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;",
        "c",
        "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;",
        "getPenResults",
        "()Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;",
        "setPenResults",
        "(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)V",
        "penResults",
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
.field public b:Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public volatile c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    return-void
.end method


# virtual methods
.method public applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->applyPaintStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

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

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender$applyStrokeStyle$1;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender$applyStrokeStyle$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-super {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clearRender()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->Companion:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->clearCache(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    return-void
.end method

.method public cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getPrecision()Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;-><init>(Lcom/onyx/android/sdk/pen/PenPrecision;Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/pen/NeoBallpointInkPen;->Companion:Lcom/onyx/android/sdk/pen/NeoBallpointInkPen$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/pen/NeoBallpointInkPen$Companion;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getSmoothLevel()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setSmoothLevel(F)V

    return-object p1
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
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->createPenConfig(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getRenderStrokeWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setWidth(F)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setColor(I)V

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;->Companion:Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;

    move-result-object p0

    return-object p0
.end method

.method public createPenRender(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/pen/NeoPenConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "penConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;->Companion:Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;)Lcom/onyx/android/sdk/note/common/data/render/BallpointPenRenderWrapper;

    move-result-object p0

    return-object p0
.end method

.method public destroyPenRender()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->b:Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->destroyPen()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->b:Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

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

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->b:Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->destroyPenRender()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getRenderMatrix(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->createPenRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->b:Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->b:Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    return-object p0
.end method

.method public final getPenResults()Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    return-object p0
.end method

.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->ensurePenRender$default(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 7
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

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDown()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->ensurePenRender$default(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->onTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public declared-synchronized prepareRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getPrecisionScale(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/pen/NeoPenConfig;->Companion:Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/pen/NeoPenConfig$Companion;->getPenPrecision(F)Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->Companion:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->isValid(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;Lcom/onyx/android/sdk/pen/PenPrecision;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender$prepareRender$result$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender$prepareRender$result$1;-><init>(Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/pen/PenPrecision;)V

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->preparePenResults(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/onyx/android/sdk/pen/PenResult;->Companion:Lcom/onyx/android/sdk/pen/PenResult$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pen/PenResult$Companion;->clearCache(Ljava/util/List;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;-><init>(Lcom/onyx/android/sdk/pen/PenPrecision;Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    iget-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->isValid(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;Lcom/onyx/android/sdk/pen/PenPrecision;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->isIntersectClipRect(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender$render$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender$render$1;-><init>(Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setPenResults(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/BallpointPenShapeRender;->c:Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;

    return-void
.end method
