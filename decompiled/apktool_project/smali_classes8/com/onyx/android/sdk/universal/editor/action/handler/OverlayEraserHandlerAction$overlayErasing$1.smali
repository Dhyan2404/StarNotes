.class final Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;->C(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;",
        "noteBundle",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

.field final synthetic $pointList:Lcom/onyx/android/sdk/base/data/TouchPointList;

.field final synthetic $renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field final synthetic $virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$pointList:Lcom/onyx/android/sdk/base/data/TouchPointList;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p5, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$pointList:Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDrawingArgs()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->createEraseArgs(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPointList;Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$virtualBoxInfo:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseEraseHandlerAction;->loadNotePage(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseArgs;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->setNotePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    .line 6
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    .line 7
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->$eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;->getEraseRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->unionEraseRect(Landroid/graphics/RectF;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/OverlayEraserHandlerAction$overlayErasing$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/universal/editor/request/erase/OverlayErasingRequest;

    move-result-object p0

    return-object p0
.end method
