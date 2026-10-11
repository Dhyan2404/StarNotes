.class public final Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;,
        Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0016\u0017B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0014J\"\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;",
        "binding",
        "pageData",
        "l",
        "<init>",
        "()V",
        "UniversalShapePageData",
        "VH",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final l(Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;)V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    iget-object v2, p1, Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v4, Lcom/onyx/galaxy/note/R$integer;->universal_popup_type_column_count:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v0, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;->getSecondaryAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/FixedSpacingItemDecoration;

    invoke-direct {p1, v1, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/FixedSpacingItemDecoration;-><init>(II)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;->getSecondaryAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeTypeAdapter;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;->getUniversalShapeTypeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;

    check-cast p3, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;ILcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;ILcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter;->l(Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$UniversalShapePageData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/UniversalShapeViewPagerAdapter$VH;-><init>(Lcom/onyx/galaxy/note/databinding/ItemUniversalShapeViewPagerBinding;)V

    return-object p0
.end method
