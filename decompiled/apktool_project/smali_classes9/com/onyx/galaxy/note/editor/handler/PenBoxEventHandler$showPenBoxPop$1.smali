.class final Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->i(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
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
        "Landroid/app/Activity;",
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
.field final synthetic $penArgs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->$penArgs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->invoke(Landroid/app/Activity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    .line 3
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->access$editorBundle(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerLocation$note_overseasRelease()[I

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    invoke-static {v5}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->access$getScribbleFragment$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getRootLocation$note_overseasRelease()[I

    move-result-object v5

    .line 7
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;[ILandroid/graphics/Rect;[I)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->access$setPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V

    .line 8
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PenBoxEventHandler$showPenBoxPop$1;->$penArgs:Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->show(Landroid/app/Activity;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :cond_0
    return-void
.end method
