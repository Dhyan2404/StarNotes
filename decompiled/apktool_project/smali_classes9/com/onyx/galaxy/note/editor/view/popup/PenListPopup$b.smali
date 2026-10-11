.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic u:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->u:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;-><init>()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->o(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;ILcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->p(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;ILcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static final o(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "<anonymous parameter 0>"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$onPenBoxItemClick(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;ILcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "<anonymous parameter 0>"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$showPenBoxActionPopup(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public n(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V
    .locals 10
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->custom_pen_box:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$a;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->u:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-direct {v1, v4}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V

    const-wide/16 v5, 0x0

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->u:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    new-instance v7, Lcom/sunia/HTREnginev2/y1l;

    invoke-direct {v7, v4, p3}, Lcom/sunia/HTREnginev2/y1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->u:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    new-instance v5, Lcom/sunia/HTREnginev2/z1l;

    invoke-direct {v5, v4, p2}, Lcom/sunia/HTREnginev2/z1l;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;I)V

    invoke-virtual {v1, v5}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getPenList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    invoke-virtual {v4, p3}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->name:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->penList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->u:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    invoke-static {v5}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)Lcom/onyx/galaxy/note/databinding/PopupPenListBinding;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->penList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->Companion:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPencilBox()Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->getSelectedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->ivSelect:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isSelectionMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->ivSelect:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->isItemSelected(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ge p2, p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {p3, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->n(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$b;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

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
            "Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;",
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

    .line 3
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemPenBoxBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method
