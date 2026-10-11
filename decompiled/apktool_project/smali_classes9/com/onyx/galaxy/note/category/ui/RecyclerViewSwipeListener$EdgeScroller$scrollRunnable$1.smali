.class public final Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;FJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$getCurrentMoveEvent$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->stopScroll()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$getRecyclerView$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$computeDynamicScrollSpeed(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;Landroidx/recyclerview/widget/RecyclerView;F)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$getRecyclerView$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$getRecyclerView$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$getRecyclerView$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->access$getRecyclerView$p(Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;->stopScroll()V

    :goto_0
    return-void
.end method
