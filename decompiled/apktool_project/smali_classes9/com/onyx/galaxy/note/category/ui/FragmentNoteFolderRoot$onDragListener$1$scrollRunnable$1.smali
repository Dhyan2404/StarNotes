.class public final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
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
        "com/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;->access$getScrollUp$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getScrollTop$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-static {v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;->access$getFlingVelocity(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;->access$getScrollUp$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-static {v2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;->access$getFlingVelocity(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->f:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1$scrollRunnable$1;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;->access$getScrollDuration$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$onDragListener$1;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
