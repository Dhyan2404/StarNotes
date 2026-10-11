.class public final Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;
.super Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter<",
        "Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;",
        "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;",
        "Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;",
        "()V",
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
        "LeadingLoadStateVH",
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
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;-><init>()V

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

    sget p0, Lcom/chad/library/adapter4/R$layout;->brvah_leading_load_more:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/loadState/LoadState;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;Lcom/chad/library/adapter4/loadState/LoadState;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;Lcom/chad/library/adapter4/loadState/LoadState;)V
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;
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
    instance-of p0, p2, Lcom/chad/library/adapter4/loadState/LoadState$Loading;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;->getLoadingProgress()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;->getLoadingProgress()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;Lcom/chad/library/adapter4/loadState/LoadState;)Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;
    .locals 1
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

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "loadState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p2}, Lcom/chad/library/adapter4/loadState/leading/DefaultLeadingLoadStateAdapter$LeadingLoadStateVH;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
