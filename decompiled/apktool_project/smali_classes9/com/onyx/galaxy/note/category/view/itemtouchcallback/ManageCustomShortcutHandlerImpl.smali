.class public Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;
.super Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0012\u0010\u000e\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\u0010\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;",
        "",
        "position",
        "",
        "canDrag",
        "fromPosition",
        "toPosition",
        "canSwap",
        "",
        "swap",
        "canMerge",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "onStartDrag",
        "performMerge",
        "onStopDrag",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "a",
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;",
        "adapter",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V",
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
.field public final a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    return-void
.end method


# virtual methods
.method public canDrag(I)Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getItemType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->supportShortcutType(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Z

    move-result p0

    return p0
.end method

.method public canMerge(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSwap(II)Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->Companion:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;->getSECTION_TITLE_LEFT()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->onViewHolderStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;->onViewHolderEndDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public swap(II)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->a:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->move(II)V

    return-void
.end method
