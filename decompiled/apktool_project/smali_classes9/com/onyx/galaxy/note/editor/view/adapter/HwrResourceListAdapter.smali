.class public final Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ&\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0002H\u0002R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;",
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
        "binding",
        "model",
        "n",
        "r",
        "q",
        "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;",
        "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;",
        "viewModel",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V",
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
.field public final r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->p(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->o(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->download(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->isResourceDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->selectLang(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->setSelectingLang(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->download(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method


# virtual methods
.method public final n(Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 12

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->downloadIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "downloadIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/obi;

    invoke-direct {v3, p0, p2}, Lcom/sunia/HTREnginev2/obi;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    const-string p1, "getRoot(...)"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    new-instance v9, Lcom/sunia/HTREnginev2/pbi;

    invoke-direct {v9, p0, p2}, Lcom/sunia/HTREnginev2/pbi;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    const-string v0, "getBinding(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->n(Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r(Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public final q(Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_corner:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_top_corner:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_bottom_corner:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white:I

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final r(Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 7

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getLang()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getSelectedLang()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {v1, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->isResourceDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Z

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->r:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    invoke-virtual {v2, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->isResourceDownloading(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Z

    move-result v2

    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->langText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->langText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->selectedIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    invoke-static {v3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->loadingIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;->downloadIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->q(Lcom/onyx/galaxy/note/databinding/ItemHwrResourceBinding;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method
