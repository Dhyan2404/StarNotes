.class public final Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001/B\u000f\u0012\u0006\u0010!\u001a\u00020\u001c\u00a2\u0006\u0004\u0008-\u0010.J(\u0010\n\u001a\u00020\t2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0006H\u0014J\u000e\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0014J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0008\u001a\u00020\u0002H\u0002R\u0017\u0010!\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010\'\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010*\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010&\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "",
        "size",
        "setTextSize",
        "Landroid/util/Size;",
        "setMinSelectSize",
        "times",
        "setMaxSelectSizeTimes",
        "setCurrentSize",
        "",
        "l",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "u",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "v",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "selectSize",
        "w",
        "F",
        "textSize",
        "x",
        "Landroid/util/Size;",
        "minSize",
        "y",
        "maxTimes",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "ItemViewHolder",
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
.field public final u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:F

.field public x:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y:F


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->v:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->sp_14:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->w:F

    new-instance p1, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->x:Landroid/util/Size;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->y:F

    return-void
.end method


# virtual methods
.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->u:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->isCustom()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->x:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->x:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->m(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)Z
    .locals 4

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->y:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->x:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->y:F

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->x:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->y:F

    mul-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
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

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->w:F

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSizeFormatName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->ivSelect:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->v:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    if-ne p3, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p2, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->l(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;->itemContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->l(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 6
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
            "Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter$ItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemPageMarginSizeBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final setCurrentSize(Landroid/util/Size;)V
    .locals 3
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->v:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/onyx/android/sdk/base/extension/SizeKt;->areApproximatelyEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->v:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    :cond_1
    return-void
.end method

.method public final setMaxSelectSizeTimes(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->y:F

    return-void
.end method

.method public final setMinSelectSize(Landroid/util/Size;)V
    .locals 1
    .param p1    # Landroid/util/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->x:Landroid/util/Size;

    return-void
.end method

.method public final setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/PageMarginSizeAdapter;->w:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
