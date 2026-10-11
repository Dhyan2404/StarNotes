.class public abstract Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "TT;TVH;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseSelectableQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSelectableQuickAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 BaseSelectableQuickAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter\n*L\n106#1:118,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005:\u00013B\u0007\u00a2\u0006\u0004\u00081\u00102J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u000b\u001a\u00020\nJ\u0015\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0006J\u0015\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u000eJ\u0014\u0010\u001b\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019J\u0014\u0010\u001c\u001a\u00020\u00062\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019J\u0014\u0010\u001e\u001a\u00020\u00062\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019R\u0016\u0010!\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R(\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R*\u00100\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010*8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010+\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;",
        "",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "",
        "toggleSelectionMode",
        "enterSelectionMode",
        "quitSelectionMode",
        "",
        "isSelectionMode",
        "item",
        "toggleSelectItem",
        "(Ljava/lang/Object;)V",
        "isAllItemSelected",
        "toggleSelectAll",
        "all",
        "selectAll",
        "clearSelectedItems",
        "t",
        "isItemSelected",
        "(Ljava/lang/Object;)Z",
        "model",
        "onItemClick",
        "",
        "list",
        "onItemSelected",
        "remove",
        "items",
        "notifyItemsChanged",
        "r",
        "Z",
        "selectionMode",
        "",
        "s",
        "Ljava/util/List;",
        "getSelectedItems",
        "()Ljava/util/List;",
        "setSelectedItems",
        "(Ljava/util/List;)V",
        "selectedItems",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "getListener",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "setListener",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V",
        "listener",
        "<init>",
        "()V",
        "ItemSelectionListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseSelectableQuickAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSelectableQuickAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 BaseSelectableQuickAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter\n*L\n106#1:118,2\n*E\n"
    }
.end annotation


# instance fields
.field public r:Z

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final clearSelectedItems()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final enterSelectionMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->r:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getListener()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->t:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    return-object p0
.end method

.method public final getSelectedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    return-object p0
.end method

.method public final isAllItemSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isItemSelected(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isSelectionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->r:Z

    return p0
.end method

.method public final notifyItemsChanged(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->itemIndexOfFirst(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onItemClick(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->toggleSelectItem(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->onItemSelected(Ljava/util/List;)V

    return-void
.end method

.method public final onItemSelected(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->t:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;->onItemSelected(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final quitSelectionMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->r:Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final remove(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final selectAll(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->t:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    return-void
.end method

.method public final setSelectedItems(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    return-void
.end method

.method public final toggleSelectAll()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->selectAll(Z)V

    return-void
.end method

.method public final toggleSelectItem(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->s:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final toggleSelectionMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->quitSelectionMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter;->enterSelectionMode()V

    :goto_0
    return-void
.end method
