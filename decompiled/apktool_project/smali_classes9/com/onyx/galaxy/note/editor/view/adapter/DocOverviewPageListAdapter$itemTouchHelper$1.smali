.class public final Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0011*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J@\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u001a\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\tH\u0016J0\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\"\u0010 \u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010$\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u001b\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u0016\u0010\'\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1",
        "Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "target",
        "",
        "onMove",
        "",
        "fromPos",
        "toPos",
        "x",
        "y",
        "",
        "onMoved",
        "direction",
        "onSwiped",
        "actionState",
        "onSelectedChanged",
        "viewSize",
        "viewSizeOutOfBounds",
        "totalSize",
        "",
        "msSinceStartScroll",
        "interpolateOutOfBoundsScroll",
        "i",
        "I",
        "getMoveFromPos",
        "()I",
        "setMoveFromPos",
        "(I)V",
        "moveFromPos",
        "j",
        "getMoveToPos",
        "setMoveToPos",
        "moveToPos",
        "k",
        "J",
        "lastMoveTime",
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
.field public i:I

.field public j:I

.field public k:J

.field public final synthetic l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->j:I

    return-void
.end method


# virtual methods
.method public final getMoveFromPos()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    return p0
.end method

.method public final getMoveToPos()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->j:I

    return p0
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->k:J

    :cond_0
    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    invoke-virtual {p3, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->k:J

    sub-long/2addr v2, v4

    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->drag_and_drop_move_interval_limit:I

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/chad/library/adapter4/BaseDifferAdapter;->move(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->k:J

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iput p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    :cond_0
    iput p5, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->j:I

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-nez p2, :cond_1

    iget p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->j:I

    if-ltz v0, :cond_1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->onItemMoved(II)V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->j:I

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    invoke-static {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->access$setItemTouchActionState$p(Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->l:Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->onSelectedChanged()V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setMoveFromPos(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->i:I

    return-void
.end method

.method public final setMoveToPos(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter$itemTouchHelper$1;->j:I

    return-void
.end method
