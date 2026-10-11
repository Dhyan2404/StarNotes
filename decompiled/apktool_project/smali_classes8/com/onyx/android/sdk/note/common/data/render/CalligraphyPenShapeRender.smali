.class public Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;
.super Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0004J0\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0016J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;",
        "Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;",
        "penShape",
        "Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;",
        "(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V",
        "createPenConfig",
        "Lcom/onyx/android/sdk/pen/NeoPenConfig;",
        "renderMatrix",
        "Landroid/graphics/Matrix;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "createPenRender",
        "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;",
        "config",
        "Lkotlin/Function1;",
        "",
        "penConfig",
        "segment",
        "",
        "defaultPenConfig",
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
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    return-void
.end method


# virtual methods
.method public createPenConfig(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 3
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderMatrix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDirectionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDirectionEnabled(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getBrushShape()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setBrushShape(I)V

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getSmoothLevel()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setSmoothLevel(F)V

    .line 6
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleX(F)V

    .line 7
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result p0

    div-float/2addr p1, p0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleY(F)V

    return-object v1
.end method

.method public final createPenConfig(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDirectionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDirectionEnabled(Z)V

    .line 11
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getBrushShape()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setBrushShape(I)V

    .line 12
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getRenderStrokeWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setWidth(F)V

    .line 13
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setColor(I)V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getSmoothLevel()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setSmoothLevel(F)V

    .line 15
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleX(F)V

    .line 16
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result p0

    div-float/2addr p1, p0

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleY(F)V

    return-object v1
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenShapeRender;->createPenConfig(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, p2, p3}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->createPenRender$default(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;Lcom/onyx/android/sdk/pen/NeoPenConfig;ZILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

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

    .line 4
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;->Companion:Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;

    move-result-object p0

    return-object p0
.end method

.method public defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/pen/NeoSquarePen;->Companion:Lcom/onyx/android/sdk/pen/NeoSquarePen$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoSquarePen$Companion;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p0

    return-object p0
.end method
