.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawSelectionRectAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawSelectionRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,93:1\n32#2,5:94\n*S KotlinDebug\n*F\n+ 1 DrawSelectionRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1\n*L\n71#1:94,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDrawSelectionRectAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawSelectionRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,93:1\n32#2,5:94\n*S KotlinDebug\n*F\n+ 1 DrawSelectionRectAction.kt\ncom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1\n*L\n71#1:94,5\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->setRenderingShapes(Z)Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->getRenderContext()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->updateCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction$create$1$1;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;->access$getRequest(Lcom/onyx/android/sdk/universal/editor/action/selection/DrawSelectionRectAction;)Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/display/SelectionRectRender;->renderNote(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    :cond_2
    return-void
.end method
