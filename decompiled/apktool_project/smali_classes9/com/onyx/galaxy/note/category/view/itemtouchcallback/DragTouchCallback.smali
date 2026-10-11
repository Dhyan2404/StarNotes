.class public final Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;,
        Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;,
        Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;,
        Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;,
        Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$SimpleDragHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragTouchCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragTouchCallback.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010#\n\u0002\u0008\u0012\u0018\u0000 O*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0005OPQRSB;\u0012\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u000001\u0012\u0006\u00106\u001a\u000204\u0012\u0008\u0008\u0002\u00108\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u00109\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010:\u001a\u00020\u0003\u00a2\u0006\u0004\u0008M\u0010NJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J(\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J0\u0010\u0017\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00132\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0018\u001a\u00020\nH\u0016J \u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0016J@\u0010!\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\nH\u0016J\u0018\u0010#\u001a\u00020\u00192\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\nH\u0016J@\u0010)\u001a\u00020\u00192\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\n2\u0006\u0010(\u001a\u00020\u0003H\u0016J\u0018\u0010*\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010+\u001a\u00020\u0019H\u0002J\u0010\u0010,\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0008H\u0002J\u0018\u0010-\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0002J\u0008\u0010.\u001a\u00020\u0019H\u0002J\u001a\u00100\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00082\u0006\u0010/\u001a\u00020\u0003H\u0002R\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u0000018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u00102R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u00105R\u0014\u00108\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u00107R\u0014\u00109\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u00107R\u0014\u0010:\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00107R\"\u0010A\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001a\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00080B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u001a\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u00080B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010DR\u0018\u0010J\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0018\u0010L\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010I\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;",
        "T",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;",
        "",
        "isLongPressDragEnabled",
        "isItemViewSwipeEnabled",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "",
        "getMovementFlags",
        "animationType",
        "",
        "animateDx",
        "animateDy",
        "",
        "getAnimationDuration",
        "selected",
        "",
        "dropTargets",
        "curX",
        "curY",
        "chooseDropTarget",
        "actionState",
        "",
        "onSelectedChanged",
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
        "dX",
        "dY",
        "isCurrentlyActive",
        "onChildDraw",
        "clearView",
        "j",
        "g",
        "i",
        "h",
        "show",
        "k",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
        "dragAdapter",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;",
        "dragHandler",
        "Z",
        "isLongPressDrag",
        "vertical",
        "horizontal",
        "l",
        "F",
        "getWinnerScoreThreshold",
        "()F",
        "setWinnerScoreThreshold",
        "(F)V",
        "winnerScoreThreshold",
        "",
        "m",
        "Ljava/util/Set;",
        "winnerSetX",
        "n",
        "winnerSetY",
        "o",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mergeSelected",
        "p",
        "mergeTarget",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V",
        "Companion",
        "DragAdapter",
        "DragHandler",
        "DragItem",
        "SimpleDragHandler",
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
        "SMAP\nDragTouchCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragTouchCallback.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_WINNER_SCORE_THRESHOLD:F = 0.15f

.field public static final DRAGGING_ALPHA:F = 0.9f

.field public static final NORMAL_ALPHA:F = 1.0f


# instance fields
.field public final g:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public l:F

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->Companion:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
            "TT;>;",
            "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;",
            "ZZZ)V"
        }
    .end annotation

    const-string v0, "dragAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->g:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    .line 5
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->i:Z

    .line 6
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->j:Z

    .line 7
    iput-boolean p5, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->k:Z

    const p1, 0x3e19999a    # 0.15f

    .line 8
    iput p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->l:F

    .line 9
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    .line 10
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;-><init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;ZZZ)V

    return-void
.end method


# virtual methods
.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "selected"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dropTargets"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v3, p3, v3

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v4, p4, v4

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->l:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->l:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, p3, v7

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, p4, v8

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_c

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-gez v8, :cond_2

    iget-object v15, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v15, p4

    neg-int v11, v5

    if-gt v11, v15, :cond_0

    if-gt v15, v5, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v11, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-interface {v11, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-lez v15, :cond_2

    iget-object v11, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v14, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    if-ge v11, v14, :cond_2

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v5, :cond_2

    move v5, v11

    move-object v10, v13

    :cond_2
    :goto_2
    if-lez v8, :cond_5

    iget-object v11, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v4

    neg-int v14, v5

    if-gt v14, v11, :cond_3

    if-gt v11, v5, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_4

    iget-object v11, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v14, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-gez v11, :cond_5

    iget-object v14, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    iget-object v15, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    if-le v14, v15, :cond_5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v5, :cond_5

    move v5, v11

    move-object v10, v13

    :cond_5
    :goto_4
    if-lez v7, :cond_8

    iget-object v11, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v3

    neg-int v14, v6

    if-gt v14, v11, :cond_6

    if-gt v11, v6, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_7

    iget-object v11, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v14, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-gez v11, :cond_8

    iget-object v14, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    iget-object v15, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    if-le v14, v15, :cond_8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_8

    move v6, v11

    move-object v10, v13

    :cond_8
    :goto_6
    if-gez v7, :cond_b

    iget-object v11, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v11, p3

    neg-int v14, v6

    if-gt v14, v11, :cond_9

    if-gt v11, v6, :cond_9

    const/4 v14, 0x1

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_a

    iget-object v11, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    iget-object v14, v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-lez v11, :cond_b

    iget-object v14, v13, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    iget-object v15, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ge v14, v15, :cond_b

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_b

    move v6, v11

    move-object v10, v13

    :cond_b
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-object v10
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

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->g:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;

    invoke-interface {p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;->getDragItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, p2, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;->showDragState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->j()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-interface {p0, p2, v0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->onStopDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->j:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->j:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h()V

    :goto_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->m:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->n:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide p0

    return-wide p0
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

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->canDrag(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->j:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->k:Z

    if-eqz p0, :cond_2

    or-int/lit8 p1, p1, 0xc

    goto :goto_1

    :cond_1
    move p1, p2

    :cond_2
    :goto_1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public final getWinnerScoreThreshold()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->l:F

    return p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_1
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-interface {v2, v0, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->canMerge(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_1
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    :cond_2
    return-void
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->i:Z

    return p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->o:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->p:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    :cond_2
    if-ltz v0, :cond_4

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-interface {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->onMergeData(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->g:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;->getDragItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;->showMergePreview(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    :cond_0
    return-void
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 1
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->g:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;

    invoke-interface {p0, p3}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;->getDragItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;

    move-result-object p0

    invoke-interface {p0, p3, p7}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;->showDragState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
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

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->canSwap(II)Z

    move-result p0

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

    move-result p2

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-interface {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->swap(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->h:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setWinnerScoreThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback;->l:F

    return-void
.end method
