.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$a;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$a;->r:Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public l(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ")V"
        }
    .end annotation

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;->iconView:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    const-string p2, "iconView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v0, v1, p2}, Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt$DefaultImpls;->setViewSelect$default(Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;ZZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/FloatKt;->keepFloat(FI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;->value:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$a;->l(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenListPopup$a;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

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
            "Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;",
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
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemPopupPenBoxPenBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method
