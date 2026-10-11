.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
        "payloads",
        "",
        "",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;->onBind(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;->onBind(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;

    invoke-virtual {v0, p3}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 5
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getWidth()F

    move-result v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->sizeToValue(F)F

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/FloatKt;->keepFloat(FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;->value:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->access$bindHolder(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;",
            "I",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;->access$bindHolderPayloads(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$BasePenItemHolder;ILcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter$addItemTypes$2;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenItemVerticalHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemPenBoxPenBinding;)V

    return-object p0
.end method
