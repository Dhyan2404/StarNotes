.class public final Lcom/onyx/android/sdk/note/common/shape/Shape$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/Shape;
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
.method public static clearLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->clearLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)V

    return-void
.end method

.method public static cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public static cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public static createGuideLineHandler(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->createGuideLineHandler(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    move-result-object p0

    return-object p0
.end method

.method public static enableFillColor(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle$DefaultImpls;->enableFillColor(Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;Z)V

    return-void
.end method

.method public static ensureShapeSourceBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection$DefaultImpls;->ensureShapeSourceBean(Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p0

    return-object p0
.end method

.method public static getLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle$DefaultImpls;->getLineStyle(Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;)I

    move-result p0

    return p0
.end method

.method public static getRenderPointSize(Lcom/onyx/android/sdk/note/common/shape/Shape;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->getRenderPointSize(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)I

    move-result p0

    return p0
.end method

.method public static getRenderPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/base/data/TouchPointList;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints$DefaultImpls;->getRenderPoints(Lcom/onyx/android/sdk/note/common/shape/ShapePoints;)Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    return-object p0
.end method

.method public static getUsePointCount(Lcom/onyx/android/sdk/note/common/shape/Shape;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints$DefaultImpls;->getUsePointCount(Lcom/onyx/android/sdk/note/common/shape/ShapePoints;)I

    move-result p0

    return p0
.end method

.method public static hasReferenceShapeBeanList(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection$DefaultImpls;->hasReferenceShapeBeanList(Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;)Z

    move-result p0

    return p0
.end method

.method public static isFillColorEnabled(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle$DefaultImpls;->isFillColorEnabled(Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;)Z

    move-result p0

    return p0
.end method

.method public static lowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->lowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z

    move-result p0

    return p0
.end method

.method public static lowLatencyRender(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    move-result p0

    return p0
.end method

.method public static readyToLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->readyToLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)Z

    move-result p0

    return p0
.end method

.method public static resetConnection(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection$DefaultImpls;->resetConnection(Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;)V

    return-void
.end method

.method public static resetLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->resetLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)V

    return-void
.end method

.method public static setLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle$DefaultImpls;->setLineStyle(Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;I)V

    return-void
.end method

.method public static toPdfHighlight(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "embedShapeBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeConvert;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeConvert$DefaultImpls;->toPdfHighlight(Lcom/onyx/android/sdk/note/common/shape/ShapeConvert;Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;)Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;

    move-result-object p0

    return-object p0
.end method

.method public static underContent(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes$DefaultImpls;->underContent(Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;)Z

    move-result p0

    return p0
.end method

.method public static useLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p0, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;

    invoke-static {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;->useLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)Z

    move-result p0

    return p0
.end method
