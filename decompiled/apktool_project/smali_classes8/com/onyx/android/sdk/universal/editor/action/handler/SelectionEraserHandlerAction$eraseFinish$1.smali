.class final Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;->D(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)Lio/reactivex/rxjava3/core/Observable;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionEraserHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionEraserHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1855#2,2:109\n*S KotlinDebug\n*F\n+ 1 SelectionEraserHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1\n*L\n69#1:109,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSelectionEraserHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionEraserHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1855#2,2:109\n*S KotlinDebug\n*F\n+ 1 SelectionEraserHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1\n*L\n69#1:109,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

.field final synthetic $pairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/base/data/TouchPointList;",
            ">;>;",
            "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$pairList:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$pairList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    .line 4
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPointList;

    .line 5
    sget-object v6, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v7

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v6, v7, v4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->ensureNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v4

    .line 6
    invoke-static {v1, v5}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;->access$createEraseShape(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction;Lcom/onyx/android/sdk/base/data/TouchPointList;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v5

    .line 7
    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getLayerIndex()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setLayerId(I)V

    .line 8
    new-instance v6, Lcom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3}, Lcom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V

    .line 9
    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest;->setEraseShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/universal/editor/request/erase/AreaEraseFinishedRequest;

    .line 10
    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;->setNotePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    .line 11
    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$pairList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    .line 13
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionEraserHandlerAction$eraseFinish$1;->$eraseContext:Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;->mergeChangedShapeBeans()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    :cond_3
    return-void
.end method
