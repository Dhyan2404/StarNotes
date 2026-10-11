.class final Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;->m(Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic $map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $request:Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;Ljava/util/Map;Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->$map:Ljava/util/Map;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->$request:Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/request/page/CopyNotePageRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->$map:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/request/page/CopyNotePageRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->$request:Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getCopyPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->$request:Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getCopyArgs()Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;->getDstIndex()I

    move-result v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/CopyPageAction$copyNotePage$1;->$request:Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/CopyVirtualPageRequest;->getCopyPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/PageCopiedEvent;-><init>(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/NoteBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
