.class public final Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\u0015\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/DragEvent;",
        "event",
        "",
        "onDrag",
        "",
        "selectedPosition",
        "",
        "c",
        "viewIndexByOldPosition",
        "Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;",
        "hitTestResult",
        "d",
        "position",
        "a",
        "b",
        "e",
        "Z",
        "tabItemPositionChanged",
        "",
        "f",
        "F",
        "lastX",
        "g",
        "I",
        "moveDistanceThreshold",
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
.field public e:Z

.field public f:F

.field public final g:I

.field public final synthetic h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->doc_tab_drag_move_distance_threshold:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->g:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final b(Landroid/view/DragEvent;)Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;
    .locals 8

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-direct {p0, p1, v1, v4}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;-><init>(IILandroid/graphics/Rect;)V

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;-><init>(IILandroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final c(ILandroid/view/DragEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->f:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->g:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->b(Landroid/view/DragEvent;)Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;->getPosition()I

    move-result v2

    if-gez v2, :cond_4

    return-void

    :cond_4
    if-ne p1, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->a(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->f:F

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoteTabLayout, oldPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newPosition = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    const-string p2, "adapter"

    if-ge p1, v2, :cond_7

    move v4, p1

    :goto_1
    if-ge v4, v2, :cond_9

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v5}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_6
    invoke-virtual {v5}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5, v4, v6}, Lcom/onyx/android/sdk/base/extension/ListExtKt;->swap(Ljava/util/List;II)V

    move v4, v6

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v2, 0x1

    if-gt v4, p1, :cond_9

    move v5, p1

    :goto_2
    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v6}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    :cond_8
    invoke-virtual {v6}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-static {v6, v5, v7}, Lcom/onyx/android/sdk/base/extension/ListExtKt;->swap(Ljava/util/List;II)V

    if-eq v5, v4, :cond_9

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_a
    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isOutOfRange(Ljava/util/Collection;I)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v4

    if-nez v4, :cond_b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_b
    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isOutOfRange(Ljava/util/Collection;I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v4}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object v1, v4

    :goto_3
    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    invoke-virtual {p0, v3, v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->d(ILcom/onyx/galaxy/note/editor/view/DragHitTestResult;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->e:Z

    :cond_e
    :goto_4
    return-void
.end method

.method public final d(ILcom/onyx/galaxy/note/editor/view/DragHitTestResult;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;->getHitRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    neg-int p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;->getViewIndex()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;->getViewIndex()I

    move-result v2

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_5

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    iget-object p0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/DragHitTestResult;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/universal/editor/config/EditorConstantsKt;->isStarSplitScreenEvent(Landroid/view/DragEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getSelectedDragItem$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 p1, 0x4

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->e:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->h:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->access$saveTabList(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->e:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;->c(ILandroid/view/DragEvent;)V

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
