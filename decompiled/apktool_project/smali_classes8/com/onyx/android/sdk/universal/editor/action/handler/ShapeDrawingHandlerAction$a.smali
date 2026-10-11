.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ")V"
        }
    .end annotation

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->g:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRender;->lowLatencyRender(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->g:Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;->access$getShapeGuideLineHandler$p(Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/ShapeDrawingHandlerAction$a;->e:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeGuideLineHandler;->render(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V

    return-void
.end method
