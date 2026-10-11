.class public final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;
.super Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->K(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0016\u0010\u0012\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;",
        "",
        "fromPosition",
        "toPosition",
        "",
        "swap",
        "",
        "canMerge",
        "onMergeData",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "performMerge",
        "onStopDrag",
        "position",
        "canDrag",
        "a",
        "Z",
        "dataChanged",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public canDrag(I)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canMerge(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onMergeData(II)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$merge(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Ljava/util/List;I)V

    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setLayerList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->setPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->c:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public swap(II)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    if-gt v0, p1, :cond_3

    move v1, p1

    :goto_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq v1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->b:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$addItemTouchHelper$handler$1;->a:Z

    return-void
.end method
