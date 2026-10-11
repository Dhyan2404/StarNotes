.class public abstract Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;
.super Lcom/chad/library/adapter4/loadState/LoadStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/chad/library/adapter4/loadState/LoadStateAdapter<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u001b\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u00016B\u0011\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0006\u00a2\u0006\u0004\u00085\u0010)J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0017\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u0006\u0010\u0014\u001a\u00020\tJ\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u0008\u0010\u001a\u001a\u00020\tH\u0002J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002J\u0012\u0010\u001e\u001a\u00020\u000c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002R\u0017\u0010 \u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R(\u0010&\u001a\u0004\u0018\u00010\u00152\u0008\u0010\"\u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010#\u001a\u0004\u0008$\u0010%R\"\u0010\'\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001f\u001a\u0004\u0008\'\u0010!\"\u0004\u0008(\u0010)R\"\u00100\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0016\u00102\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010\u001fR\u0016\u00104\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010\u001f\u00a8\u00067"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "Lcom/chad/library/adapter4/loadState/LoadStateAdapter;",
        "Lcom/chad/library/adapter4/loadState/LoadState;",
        "loadState",
        "",
        "displayLoadStateAsItem",
        "holder",
        "",
        "onViewAttachedToWindow",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "",
        "itemCount",
        "currentPosition",
        "checkPreload$com_github_CymChad_brvah",
        "(II)V",
        "checkPreload",
        "invokeLoadMore",
        "invokeFailRetry",
        "checkDisableLoadMoreIfNotFullPage",
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;",
        "listener",
        "setOnLoadMoreListener",
        "",
        "toString",
        "i",
        "h",
        "",
        "numbers",
        "g",
        "Z",
        "isLoadEndDisplay",
        "()Z",
        "<set-?>",
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;",
        "getOnTrailingListener",
        "()Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;",
        "onTrailingListener",
        "isAutoLoadMore",
        "setAutoLoadMore",
        "(Z)V",
        "j",
        "I",
        "getPreloadSize",
        "()I",
        "setPreloadSize",
        "(I)V",
        "preloadSize",
        "k",
        "mNotFullPageNextLoadFlag",
        "l",
        "mDelayNextLoadFlag",
        "<init>",
        "OnTrailingListener",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final g:Z

.field public h:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->g:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;-><init>(Z)V

    return-void
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->f(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic c(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->j(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V

    return-void
.end method

.method public static synthetic d(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->e(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V

    return-void
.end method

.method public static final e(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->k:Z

    :cond_0
    return-void
.end method

.method public static final f(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "$manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->g([I)I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iput-boolean v1, p1, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->k:Z

    :cond_1
    return-void
.end method

.method public static final j(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->l:Z

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeLoadMore()V

    return-void
.end method


# virtual methods
.method public final checkDisableLoadMoreIfNotFullPage()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->k:Z

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    new-instance v1, Lcom/sunia/HTREnginev2/hln;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hln;-><init>(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sunia/HTREnginev2/iln;

    invoke-direct {v2, v1, p0, v0}, Lcom/sunia/HTREnginev2/iln;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkPreload$com_github_CymChad_brvah(II)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-le p2, v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    iget p2, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->j:I

    if-gt p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i()V

    :cond_1
    return-void
.end method

.method public displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/loadState/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loadState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->displayLoadStateAsItem(Lcom/chad/library/adapter4/loadState/LoadState;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->g:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final g([I)I
    .locals 3

    const/4 p0, -0x1

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    if-le v2, p0, :cond_2

    move p0, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return p0
.end method

.method public final getOnTrailingListener()Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->h:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;

    return-object p0
.end method

.method public final getPreloadSize()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->j:I

    return p0
.end method

.method public final h()Z
    .locals 4

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    instance-of v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_2

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_2
    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ne p0, v0, :cond_5

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->h:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;->isAllowLoading()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->k:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->l:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getLoadState()Lcom/chad/library/adapter4/loadState/LoadState;

    move-result-object v0

    instance-of v0, v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getLoadState()Lcom/chad/library/adapter4/loadState/LoadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->l:Z

    new-instance v1, Lcom/sunia/HTREnginev2/jln;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jln;-><init>(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeLoadMore()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final invokeFailRetry()V
    .locals 1

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$Loading;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->h:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;->onFailRetry()V

    :cond_0
    return-void
.end method

.method public final invokeLoadMore()V
    .locals 1

    sget-object v0, Lcom/chad/library/adapter4/loadState/LoadState$Loading;->INSTANCE:Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->setLoadState(Lcom/chad/library/adapter4/loadState/LoadState;)V

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->h:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;->onLoad()V

    :cond_0
    return-void
.end method

.method public final isAutoLoadMore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i:Z

    return p0
.end method

.method public final isLoadEndDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->g:Z

    return p0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i()V

    return-void
.end method

.method public final setAutoLoadMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i:Z

    return-void
.end method

.method public final setOnLoadMoreListener(Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;)Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;",
            ")",
            "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter<",
            "TVH;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->h:Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;

    return-object p0
.end method

.method public final setPreloadSize(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->j:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            TrailingLoadStateAdapter ->\n            [isLoadEndDisplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [isAutoLoadMore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [preloadSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],\n            [loadState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/LoadStateAdapter;->getLoadState()Lcom/chad/library/adapter4/loadState/LoadState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
