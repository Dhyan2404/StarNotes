.class public final Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1",
        "Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;",
        "onFinished",
        "",
        "onStart",
        "onSwiped",
        "x",
        "",
        "y",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->releaseSwipeIndex()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->releaseSwipeIndex()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->access$getOnSwipeStateChangeListener$p(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onSwiped(FF)V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->access$getBinding$p(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutSwipeRecycleViewBinding;->recyclerView:Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;->getAutoFitRecycleView()Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getSwipeStartIndex()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->setSwipeStartIndex(I)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->access$getOnSwipeStateChangeListener$p(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getSwipeStartIndex()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;->onSwiped(II)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getLastSwipeEndIndex()I

    move-result p2

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->setLastSwipeEndIndex(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->access$getOnSwipeStateChangeListener$p(Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;)Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getSwipeStartIndex()I

    move-result p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$initView$1;->a:Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer;->getLastSwipeEndIndex()I

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/onyx/galaxy/note/category/view/SwipeRecycleViewContainer$OnSwipeStateChangeListener;->onSwiped(II)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
