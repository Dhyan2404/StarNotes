.class public final Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;
.super Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016R\"\u0010\u0012\u001a\u00020\u000b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;",
        "Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;",
        "",
        "useLowLatencyFlush",
        "readyToLowLatencyFlush",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "reset",
        "lowLatencyFlush",
        "",
        "resetLowLatencyData",
        "",
        "L",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "M",
        "Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "getShapeRender",
        "()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;",
        "setShapeRender",
        "(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V",
        "shapeRender",
        "<init>",
        "()V",
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
.field public L:I

.field public M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/BrushScribbleShape;-><init>()V

    const/16 v0, 0x31

    iput v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->L:I

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/note/common/data/render/SoftPaintPenShapeRender;-><init>(Lcom/onyx/android/sdk/note/common/shape/pen/PenShape;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-void
.end method


# virtual methods
.method public getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->L:I

    return p0
.end method

.method public lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->lowLatencyFlush(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Z)Z

    move-result p0

    return p0
.end method

.method public readyToLowLatencyFlush()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->readyToLowLatencyFlush()Z

    move-result p0

    return p0
.end method

.method public resetLowLatencyData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->resetLowLatencyData()V

    return-void
.end method

.method public setShapeRender(Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->M:Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->L:I

    return-void
.end method

.method public useLowLatencyFlush()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/SoftPaintScribbleShape;->getShapeRender()Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/PenShapeRender;->useLowLatencyFlush()Z

    move-result p0

    return p0
.end method
