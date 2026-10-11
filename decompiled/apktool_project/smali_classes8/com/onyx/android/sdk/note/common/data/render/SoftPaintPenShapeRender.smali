.class public final Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;
.super Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J0\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0016J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0006H\u0002J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;",
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
        "lowLatencyFlush",
        "reset",
        "onLowLatencyTouchData",
        "touchData",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "readyToLowLatencyFlush",
        "resetLowLatencyData",
        "useLowLatencyFlush",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I = 0xf4240


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;->Companion:Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender$Companion;

    return-void
.end method

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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleX(Landroid/graphics/Matrix;)F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleX(F)V

    .line 3
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getDisplayScale()F

    move-result p0

    div-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setDisplayScaleY(F)V

    return-object v0
.end method

.method public final createPenConfig(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 1

    .line 4
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;->createPenConfig(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p2

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getRenderStrokeWidth(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setWidth(F)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/pen/NeoPenConfig;->setColor(I)V

    return-object p2
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
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;->createPenConfig(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/pen/NeoPenConfig;

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
    sget-object p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->Companion:Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper$Companion;->create(Lcom/onyx/android/sdk/pen/NeoPenConfig;Z)Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/pen/NeoBrushSignPen;->Companion:Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/NeoBrushSignPen$Companion;->defaultPenConfig()Lcom/onyx/android/sdk/pen/NeoPenConfig;

    move-result-object p0

    return-object p0
.end method

.method public lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->getPenShape()Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->getNeoPenRender()Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;->lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;Z)Z

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

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->isTouchDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->applyPaintStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->onLowLatencyTouchData(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public readyToLowLatencyFlush()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->getNeoPenRender()Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    instance-of v0, p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->isUnlimitedPointCountThreshold()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenRenderWrapper;->getBrushPointCount()I

    move-result p0

    const v1, 0xf4240

    if-lt p0, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public resetLowLatencyData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BrushPenShapeRender;->getNeoPenRender()Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/NeoPenRender;->reset()V

    :cond_0
    return-void
.end method

.method public useLowLatencyFlush()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
