.class public final Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;
.super Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000K\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J0\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0014J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0002H\u0016J,\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\u0016J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u0018\u0010\u0018\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\tH\u0016J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0016J\u0018\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0002H\u0016JB\u0010!\u001a\u00020\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001fH\u0016J\u0018\u0010#\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0010H\u0002\u00a8\u0006$"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1",
        "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "Landroid/view/DragEvent;",
        "event",
        "Landroid/view/View;",
        "itemView",
        "",
        "canDragIn",
        "",
        "beforeThreshold",
        "afterThreshold",
        "onDragLocation",
        "item",
        "",
        "getItemUniqueKey",
        "",
        "dragState",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "originTreeNode",
        "targetTreeNode",
        "",
        "dragItemView",
        "index",
        "setOrderIndex",
        "getOrderIndex",
        "originItem",
        "targetItem",
        "updateParentIdByTargetUniqueKey",
        "updateParentIdByTargetParentId",
        "targetPos",
        "",
        "list",
        "onItemUpdated",
        "offset",
        "i",
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
.field public final synthetic g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public canDragIn(ILcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 4
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "originTreeNode"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetTreeNode"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result p1

    if-eq p0, p1, :cond_4

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result p1

    if-lt p0, p1, :cond_4

    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getMaxDepth()I

    move-result p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x14

    if-gt p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result p0

    if-lt p1, p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public dragItemView(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->dragItemView(Landroid/view/View;I)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->i(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->i(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public getItemUniqueKey(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getItemUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->getItemUniqueKey(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOrderIndex(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)F
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getOrderIndex()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getOrderIndex(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->getOrderIndex(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)F

    move-result p0

    return p0
.end method

.method public final i(Landroid/view/View;I)V
    .locals 0

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object p0

    invoke-virtual {p0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;Landroid/view/View;ZFF)Z
    .locals 4
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDocTocBinding;->rvTocContainer:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    if-ne v2, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->onDragLocation(Landroid/view/DragEvent;Landroid/view/View;ZFF)Z

    move-result p0

    return p0
.end method

.method public onItemUpdated(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;IILjava/util/List;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;II",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)V"
        }
    .end annotation

    const-string p3, "originTreeNode"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "targetTreeNode"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "list"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p4, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->canDragIn(ILcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "editorBundle"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    const/4 p3, 0x1

    invoke-direct {p1, p2, p5, p3}, Lcom/onyx/android/sdk/universal/editor/action/toc/UpdateTocEntryAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->g:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getSelectable$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "drag_galaxy_outline_0001"

    goto :goto_0

    :cond_2
    const-string p1, "drag_galaxy_outline_sort_0001"

    :goto_0
    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$reportStatisticEvent(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;Ljava/lang/String;)V

    return-void
.end method

.method public setOrderIndex(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;F)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setOrderIndex(F)V

    return-void
.end method

.method public bridge synthetic setOrderIndex(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->setOrderIndex(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;F)V

    return-void
.end method

.method public updateParentIdByTargetParentId(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "originItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getParentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setParentId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateParentIdByTargetParentId(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->updateParentIdByTargetParentId(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    return-void
.end method

.method public updateParentIdByTargetUniqueKey(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "originItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setParentId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic updateParentIdByTargetUniqueKey(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;->updateParentIdByTargetUniqueKey(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    return-void
.end method
