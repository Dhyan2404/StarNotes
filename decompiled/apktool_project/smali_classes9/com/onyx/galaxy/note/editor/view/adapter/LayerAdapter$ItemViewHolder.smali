.class public final Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;
.super Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem<",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00040\u0003B\u0019\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\u001a\u0010\r\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016R\u0017\u0010\u0012\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "",
        "isCurrentlyActive",
        "",
        "showDragState",
        "getData",
        "show",
        "showMergePreview",
        "I",
        "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
        "binding",
        "J",
        "Z",
        "lastActive",
        "Landroid/view/ViewGroup;",
        "parent",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;)V",
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
.field public final I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public J:Z

.field public final synthetic K:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;
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
            "Landroid/view/ViewGroup;",
            "Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binding"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->K:Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;

    .line 2
    invoke-direct {p0, p3}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x0

    .line 5
    invoke-static {p3, p2, p4}, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    move-result-object p3

    const-string p4, "inflate(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    return-object p0
.end method

.method public getData()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->getModel()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->getData()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public showDragState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->Companion:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;->setItemViewAlpha(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->J:Z

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->J:Z

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->contentContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->contentLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->bg_layer_start_drag:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->contentLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->bg_layer:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public showMergePreview(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->flyImage:Landroid/widget/FrameLayout;

    sget p2, Lcom/onyx/galaxy/note/R$drawable;->bg_layer_image_merge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->contentLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->bg_layer_merge:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->contentLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    sget p2, Lcom/onyx/galaxy/note/R$drawable;->bg_layer:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/LayerAdapter$ItemViewHolder;->I:Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemLayerBinding;->flyImage:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
