.class public final synthetic Lcom/sunia/HTREnginev2/iln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final synthetic f:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iln;->e:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iln;->f:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/iln;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iln;->e:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/iln;->f:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iln;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1, p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
