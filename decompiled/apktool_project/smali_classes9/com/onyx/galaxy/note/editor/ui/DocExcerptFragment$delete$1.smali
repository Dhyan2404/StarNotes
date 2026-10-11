.class final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->s0()V
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
.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->$items:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptByModelEvent;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->$items:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptByModelEvent;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object v0

    const-string v2, "adapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->$items:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->remove(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$updateSelectionView(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    const-string v0, "click_galaxy_excerpt_0015"

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$reportStatisticEvent(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;Ljava/lang/String;)V

    return-void
.end method
