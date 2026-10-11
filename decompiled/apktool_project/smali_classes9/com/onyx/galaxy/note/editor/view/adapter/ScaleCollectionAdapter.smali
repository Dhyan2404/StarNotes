.class public final Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Ljava/lang/Float;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002J/\u0010\u000c\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\tH\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;",
        "scale",
        "",
        "setCurrentScale",
        "holder",
        "",
        "position",
        "item",
        "onBindViewHolder",
        "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Float;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "r",
        "Ljava/lang/Float;",
        "currentScale",
        "s",
        "F",
        "getMinScale",
        "()F",
        "setMinScale",
        "(F)V",
        "minScale",
        "<init>",
        "()V",
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
.field public r:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->s:F

    return-void
.end method


# virtual methods
.method public final getMinScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->s:F

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Float;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Float;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;",
            ">;I",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 3
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->valueToPercent(F)F

    move-result p2

    float-to-int p2, p2

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->percent_format:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;->llBg:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->r:Ljava/lang/Float;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->r:Ljava/lang/Float;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;->llBg:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->s:F

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

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
            "Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;",
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
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemScaleBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public final setCurrentScale(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->r:Ljava/lang/Float;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ScaleCollectionAdapter;->s:F

    return-void
.end method
