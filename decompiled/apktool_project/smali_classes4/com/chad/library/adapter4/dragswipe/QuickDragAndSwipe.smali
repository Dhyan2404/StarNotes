.class public Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\"\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\\\u0010]J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000cJ\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J \u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0011H\u0016J@\u0010!\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0018\u0010#\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J@\u0010*\u001a\u00020\u00182\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010+\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u0010\u0010.\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010,J\u0010\u00101\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u00010/J\u000e\u00104\u001a\u00020\u00002\u0006\u00103\u001a\u000202J\u0010\u00105\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0011H\u0002J\u0012\u00106\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0011H\u0002R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u0014\u0010>\u001a\u00020<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010=R\u0016\u0010A\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010C\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010@R\u0016\u0010F\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER\u0016\u0010H\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010ER\u0018\u0010K\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010S\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010@R\u0016\u0010U\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010@R\u0011\u0010X\u001a\u0002028F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010WR\u0011\u0010[\u001a\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "attachToRecyclerView",
        "",
        "dragMoveFlags",
        "setDragMoveFlags",
        "getDragMoveFlags",
        "swipeMoveFlags",
        "setSwipeMoveFlags",
        "getSwipeMoveFlags",
        "",
        "isLongPressDragEnabled",
        "setLongPressDragEnabled",
        "isItemViewSwipeEnabled",
        "setItemViewSwipeEnabled",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "startDrag",
        "position",
        "startSwipe",
        "viewHolder",
        "actionState",
        "",
        "onSelectedChanged",
        "getMovementFlags",
        "target",
        "onMove",
        "fromPos",
        "toPos",
        "x",
        "y",
        "onMoved",
        "direction",
        "onSwiped",
        "Landroid/graphics/Canvas;",
        "c",
        "",
        "dX",
        "dY",
        "isCurrentlyActive",
        "onChildDraw",
        "clearView",
        "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;",
        "onItemDragListener",
        "setItemDragListener",
        "Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;",
        "onItemSwipeListener",
        "setItemSwipeListener",
        "Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;",
        "callback",
        "setDataCallback",
        "h",
        "g",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "_itemTouchHelper",
        "i",
        "Z",
        "_isLongPressDragEnabled",
        "j",
        "_isItemViewSwipeEnabled",
        "k",
        "I",
        "_dragMoveFlags",
        "l",
        "_swipeMoveFlags",
        "m",
        "Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;",
        "mOnItemDragListener",
        "n",
        "Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;",
        "mOnItemSwipeListener",
        "o",
        "Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;",
        "_dataCallback",
        "p",
        "isDrag",
        "q",
        "isSwipe",
        "getDataCallback",
        "()Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;",
        "dataCallback",
        "getItemTouchHelper",
        "()Landroidx/recyclerview/widget/ItemTouchHelper;",
        "itemTouchHelper",
        "<init>",
        "()V",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->i:Z

    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->j:Z

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    iget-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->n:Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;->onItemSwipeEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    iput-boolean v1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->q:Z

    :cond_1
    iget-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->m:Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    iput-boolean v1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->p:Z

    :cond_3
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getDataCallback()Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->o:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please set _adapterImpl"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDragMoveFlags()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->k:I

    return p0
.end method

.method public final getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    :cond_0
    iget p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->k:I

    iget p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->l:I

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final getSwipeMoveFlags()I
    .locals 0

    iget p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->l:I

    return p0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p1, Lcom/chad/library/adapter4/viewholder/StateLayoutVH;

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->j:Z

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->i:Z

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    const/4 p2, 0x1

    if-ne p6, p2, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->n:Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;->onItemSwipeMoving(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    :cond_0
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "recyclerView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "viewHolder"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p3

    const/4 p5, -0x1

    if-eq p1, p5, :cond_2

    if-ne p3, p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->o:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

    if-eqz p5, :cond_1

    invoke-interface {p5, p1, p3}, Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;->dataMove(II)V

    :cond_1
    iget-object p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->m:Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2, p1, p4, p3}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;->onItemDragMoving(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->p:Z

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->m:Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->q:Z

    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->n:Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;->onItemSwipeStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->o:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;->dataRemoveAt(I)V

    :cond_1
    iget-object p0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->n:Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, v0}, Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;->onItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :cond_2
    return-void
.end method

.method public final setDataCallback(Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .param p1    # Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->o:Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;

    return-object p0
.end method

.method public final setDragMoveFlags(I)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->k:I

    return-object p0
.end method

.method public final setItemDragListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->m:Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;

    return-object p0
.end method

.method public final setItemSwipeListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0
    .param p1    # Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->n:Lcom/chad/library/adapter4/dragswipe/listener/OnItemSwipeListener;

    return-object p0
.end method

.method public final setItemViewSwipeEnabled(Z)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->j:Z

    return-object p0
.end method

.method public final setLongPressDragEnabled(Z)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->i:Z

    return-object p0
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setSwipeMoveFlags(I)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->l:I

    return-object p0
.end method

.method public startDrag(I)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "recyclerView?.findViewHo\u2026(position) ?: return this"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object p0
.end method

.method public startSwipe(I)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "recyclerView?.findViewHo\u2026(position) ?: return this"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->h:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object p0
.end method
