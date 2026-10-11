.class final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;->invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->updateUiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/request/OpenNoteDocumentRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/request/OpenNoteDocumentRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->getOpenDocArgs()Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->toNoteDocBean()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/request/OpenNoteDocumentRequest;->setNoteDocBean(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$openNoteDocument$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method
