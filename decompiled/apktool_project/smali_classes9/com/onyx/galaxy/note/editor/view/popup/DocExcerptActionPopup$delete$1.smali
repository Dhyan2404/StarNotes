.class final Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->m()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptByModelEvent;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->access$getModel$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptByModelEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->access$getListener$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$ActionListener;->onDeleted()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;

    .line 6
    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->access$getFull$p(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "click_galaxy_excerpt_0010"

    goto :goto_0

    :cond_1
    const-string v0, "click_galaxy_excerpt_0005"

    .line 7
    :goto_0
    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->access$reportEvent(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;Ljava/lang/String;)V

    return-void
.end method
