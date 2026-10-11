.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragSwipeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1\n+ 2 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n+ 3 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$2\n*L\n1#1,85:1\n304#2,4:86\n309#2,8:91\n18#3:90\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e\u00b8\u0006\u0000"
    }
    d2 = {
        "com/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1",
        "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;",
        "onItemDragEnd",
        "",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "pos",
        "",
        "onItemDragMoving",
        "source",
        "from",
        "target",
        "to",
        "onItemDragStart",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDragSwipeExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$4$listener$1\n+ 2 PenBoxPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/PenBoxPopup\n+ 3 DragSwipeExt.kt\ncom/chad/library/adapter4/dragswipe/DragSwipeExtKt$setItemDragListener$2\n*L\n1#1,85:1\n304#2,4:86\n309#2,8:91\n18#3:90\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->onEndDragHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->setPencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getMovingDraggable$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "movingDraggable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->enableDrag(Z)V

    return-void
.end method

.method public onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "source"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->onStartDragHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$$inlined$setItemDragListener$default$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->access$getMovingDraggable$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)Lcom/onyx/galaxy/note/common/extension/MovingDraggable;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "movingDraggable"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/extension/MovingDraggable;->enableDrag(Z)V

    return-void
.end method
