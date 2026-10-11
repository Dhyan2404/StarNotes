.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->t(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/api/ReaderSelection;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->access$drawHighlight(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->access$getCreationRenderer$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/view/TextExcerptCreationRenderer;->lowLatencyRender(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    :goto_0
    return-void
.end method
