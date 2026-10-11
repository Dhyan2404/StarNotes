.class public final Lcom/onyx/android/sdk/note/common/shape/ShapeRender$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
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
.method public static clearLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static cloneLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static cloneRenderData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static createGuideLineHandler(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/DefaultShapeGuideLineHandler;

    return-object p0
.end method

.method public static getRenderPointSize(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)I
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static lowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lowLatencyFlush$default(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;ZILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: lowLatencyFlush"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lowLatencyRender(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "renderContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static readyToLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static resetLowLatencyData(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)V
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static useLowLatencyFlush(Lcom/onyx/android/sdk/note/common/shape/ShapeRender;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/ShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
