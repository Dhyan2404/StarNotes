.class public final Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterHistoryOptionsPopup$OperationCallback;",
        "onDelete",
        "",
        "onEditCountName",
        "note_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->b:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->access$getViewmodel(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->getSelectionMode()Z

    move-result p0

    invoke-virtual {v1, v2, v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/CountHistoryViewModel;->deleteCount(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public onEditCountName()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;

    move-result-object v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CountUpHistoryFragment$initRecyclerContent$4$1;->b:I

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CountUpHistoryAdapter;->onEditCountName(I)V

    return-void
.end method
