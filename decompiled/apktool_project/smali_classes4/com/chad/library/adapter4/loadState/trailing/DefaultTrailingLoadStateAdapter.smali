.class public final Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;
.super Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter<",
        "Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0010B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;",
        "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;",
        "Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;",
        "isLoadEndDisplay",
        "",
        "(Z)V",
        "getStateViewType",
        "",
        "loadState",
        "Lcom/chad/library/adapter4/loadState/LoadState;",
        "onBindViewHolder",
        "",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "TrailingLoadStateVH",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;-><init>(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;-><init>(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;->n(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;->m(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final m(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeFailRetry()V

    return-void
.end method

.method public static final n(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeLoadMore()V

    return-void
.end method


# virtual methods
.method public getStateViewType(Lcom/chad/library/adapter4/loadState/LoadState;)I
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "loadState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/chad/library/adapter4/R$layout;->brvah_trailing_load_more:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/loadState/LoadState;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;Lcom/chad/library/adapter4/loadState/LoadState;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;Lcom/chad/library/adapter4/loadState/LoadState;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chad/library/adapter4/loadState/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "loadState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, p2, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/chad/library/adapter4/loadState/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadCompleteView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadFailView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadEndView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadCompleteView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadFailView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadEndView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    instance-of p0, p2, Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    if-eqz p0, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadCompleteView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadFailView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadEndView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_2
    instance-of p0, p2, Lcom/chad/library/adapter4/loadState/LoadState$Error;

    if-eqz p0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadCompleteView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadFailView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadEndView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 22
    :cond_3
    instance-of p0, p2, Lcom/chad/library/adapter4/loadState/LoadState$None;

    if-eqz p0, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadCompleteView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadFailView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadEndView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/chad/library/adapter4/loadState/LoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, v0}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {p2}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadFailView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/f1f;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/f1f;-><init>(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p2}, Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter$TrailingLoadStateVH;->getLoadCompleteView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/g1f;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/g1f;-><init>(Lcom/chad/library/adapter4/loadState/trailing/DefaultTrailingLoadStateAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
