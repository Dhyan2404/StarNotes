.class public abstract Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;
.super Lcom/onyx/android/sdk/note/common/shape/BaseShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;",
        "Lcom/onyx/android/sdk/note/common/shape/BaseShape;",
        "()V",
        "lowLatencyRender",
        "",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "render",
        "split",
        "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;",
        "eraseBean",
        "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;",
        "testData",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;-><init>()V

    return-void
.end method


# virtual methods
.method public lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/graphical/GraphicalShape;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0
.end method

.method public render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 4
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

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->getRenderPath(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRenders;->renderFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/Path;)V

    const/4 p0, 0x1

    return p0
.end method

.method public split(Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "eraseBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;->split$default(Lcom/onyx/android/sdk/note/common/utils/GraphicalShapeSplitter;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;IILjava/lang/Object;)Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;

    move-result-object p0

    return-object p0
.end method

.method public testData()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTests;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->addTestPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    invoke-super {p0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->testData()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    return-object p0
.end method
