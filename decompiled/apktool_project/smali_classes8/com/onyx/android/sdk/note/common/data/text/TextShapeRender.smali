.class public final Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\"\u0010\u000c\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;",
        "",
        "",
        "render",
        "a",
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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;->render()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->b:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;-><init>(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/text/WebRenderTextAction;->render()Z

    move-result p0

    return p0
.end method

.method public final getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final render()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->a()Z

    move-result p0

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

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;->a:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-void
.end method
