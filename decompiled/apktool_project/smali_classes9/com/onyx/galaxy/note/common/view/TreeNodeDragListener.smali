.class public abstract Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnDragListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTreeNodeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeNodeDragListener.kt\ncom/onyx/galaxy/note/common/view/TreeNodeDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,294:1\n1549#2:295\n1620#2,3:296\n256#3,2:299\n*S KotlinDebug\n*F\n+ 1 TreeNodeDragListener.kt\ncom/onyx/galaxy/note/common/view/TreeNodeDragListener\n*L\n256#1:295\n256#1:296,3\n290#1:299,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010!\n\u0002\u0008\u000e\u0008&\u0018\u0000 A*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001AB\u0007\u00a2\u0006\u0004\u0008?\u0010@J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J,\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH&J\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u0019\u0010\u0018JB\u0010\u001d\u001a\u00020\u00102\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bH&J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0016\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\"\u001a\u00020!H\u0014J,\u0010$\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020!2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0014J\u0018\u0010%\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\u000cH\u0014J0\u0010(\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000eH\u0014JL\u0010)\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\r\u001a\u00020\u000c2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000eH\u0014J\u0018\u0010*\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!H\u0016J,\u0010+\u001a\u00020\u00102\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J \u0010,\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020!2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000eH\u0014J\u0018\u0010-\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u0007H\u0014J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0010\u0010/\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020!H\u0002J$\u00100\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0002J$\u00101\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0002J$\u00102\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0002J\u001c\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u0000042\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u00000\tH\u0002J \u00108\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u000cH\u0002R\u001b\u0010<\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u00109\u001a\u0004\u0008:\u0010;R\u001b\u0010>\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00109\u001a\u0004\u0008=\u0010;\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;",
        "",
        "T",
        "Landroid/view/View$OnDragListener;",
        "item",
        "getItemUniqueKey",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "",
        "dragState",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "originTreeNode",
        "targetTreeNode",
        "",
        "canDragIn",
        "",
        "index",
        "",
        "setOrderIndex",
        "(Ljava/lang/Object;F)V",
        "getOrderIndex",
        "(Ljava/lang/Object;)F",
        "originItem",
        "targetItem",
        "updateParentIdByTargetUniqueKey",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "updateParentIdByTargetParentId",
        "targetPos",
        "",
        "list",
        "onItemUpdated",
        "Landroid/view/View;",
        "itemView",
        "getTargetTreeNode",
        "Landroid/view/DragEvent;",
        "event",
        "getOriginTreeNode",
        "onDragStarted",
        "onDragEntered",
        "beforeThreshold",
        "afterThreshold",
        "onDragLocation",
        "onDragDrop",
        "onDrag",
        "handleDrop",
        "getDragState",
        "dragItemView",
        "resetItemView",
        "f",
        "c",
        "e",
        "d",
        "treeNode",
        "",
        "g",
        "viewId",
        "visible",
        "h",
        "Lkotlin/Lazy;",
        "a",
        "()F",
        "bottomYPercent",
        "b",
        "topYPercent",
        "<init>",
        "()V",
        "Companion",
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
        "SMAP\nTreeNodeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeNodeDragListener.kt\ncom/onyx/galaxy/note/common/view/TreeNodeDragListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,294:1\n1549#2:295\n1620#2,3:296\n256#3,2:299\n*S KotlinDebug\n*F\n+ 1 TreeNodeDragListener.kt\ncom/onyx/galaxy/note/common/view/TreeNodeDragListener\n*L\n256#1:295\n256#1:296,3\n290#1:299,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_AFTER:I = 0x3

.field public static final DRAG_BEFORE:I = 0x1

.field public static final DRAG_IN:I = 0x2


# instance fields
.field public final e:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->Companion:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$bottomYPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$bottomYPercent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->e:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$topYPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$topYPercent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->f:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final b()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)I"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$handleMoveIn$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$handleMoveIn$1;-><init>(Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/onyx/android/sdk/base/data/Tree;->reParent(Lcom/onyx/android/sdk/base/data/Tree;ILkotlin/jvm/functions/Function2;)V

    return p0
.end method

.method public abstract canDragIn(ILcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)Z
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public final d(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/Tree;->setLevel(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->updateParentIdByTargetParentId(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/Tree;->setParent(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    move v4, v3

    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getItemUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getItemUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    if-eq v4, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    if-ne v3, p0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v3
.end method

.method public dragItemView(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->h(Landroid/view/View;IZ)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    if-ne p2, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->h(Landroid/view/View;IZ)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->h(Landroid/view/View;IZ)V

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/Tree;->setLevel(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->updateParentIdByTargetParentId(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/Tree;->setParent(Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-ltz v2, :cond_3

    move v3, v1

    :goto_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getItemUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getItemUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    if-eq v3, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public final f(Landroid/view/DragEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/android/sdk/base/data/Tree;

    return p0
.end method

.method public final g(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/OrderListUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/OrderListUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$reorder$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$reorder$1;-><init>(Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;)V

    new-instance v2, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$reorder$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$reorder$2;-><init>(Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/base/utils/OrderListUtils;->reorderIndexChecked(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDragState(Landroid/view/DragEvent;FF)I
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p0

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public abstract getItemUniqueKey(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getOrderIndex(Ljava/lang/Object;)F
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public getOriginTreeNode(Landroid/view/DragEvent;)Lcom/onyx/android/sdk/base/data/Tree;
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            ")",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.Tree<T of com.onyx.galaxy.note.common.view.TreeNodeDragListener>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/Tree;

    return-object p0
.end method

.method public getTargetTreeNode(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Tree;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "itemView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.Tree<T of com.onyx.galaxy.note.common.view.TreeNodeDragListener>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/Tree;

    return-object p0
.end method

.method public final h(Landroid/view/View;IZ)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public handleDrop(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;I)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "originTreeNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetTreeNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->setOrderIndex(Ljava/lang/Object;F)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->d(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->g(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->c(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->g(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->e(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Tree;->getParent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->g(Lcom/onyx/android/sdk/base/data/Tree;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->onItemUpdated(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;IILjava/util/List;)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v3, "itemView"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "event"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->resetItemView(Landroid/view/View;)V

    return v5

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->f(Landroid/view/DragEvent;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->resetItemView(Landroid/view/View;)V

    return v4

    :cond_1
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getOriginTreeNode(Landroid/view/DragEvent;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getTargetTreeNode(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->a()F

    move-result v8

    mul-float/2addr v8, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->b()F

    move-result v9

    mul-float/2addr v9, v3

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$onDrag$canDragIn$1;

    invoke-direct {v3, p0, v7}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener$onDrag$canDragIn$1;-><init>(Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;Lcom/onyx/android/sdk/base/data/Tree;)V

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/base/data/Tree;->hasChild(Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p2, v9, v8}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getDragState(Landroid/view/DragEvent;FF)I

    move-result v3

    invoke-virtual {p0, v3, v6, v7}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->canDragIn(ILcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v10

    if-eq v10, v4, :cond_7

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    const/4 v1, 0x5

    if-eq v10, v1, :cond_4

    const/4 v1, 0x6

    if-eq v10, v1, :cond_3

    return v5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->resetItemView(Landroid/view/View;)V

    return v4

    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->onDragEntered(Landroid/view/View;Z)Z

    move-result v0

    return v0

    :cond_5
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v4, v6

    move-object v5, v7

    move v6, v9

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->onDragDrop(Landroid/view/DragEvent;Landroid/view/View;ZLcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;FF)Z

    move-result v0

    return v0

    :cond_6
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->onDragLocation(Landroid/view/DragEvent;Landroid/view/View;ZFF)Z

    move-result v0

    return v0

    :cond_7
    invoke-virtual {p0, p2, v6, v7}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->onDragStarted(Landroid/view/DragEvent;Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)Z

    move-result v0

    return v0
.end method

.method public onDragDrop(Landroid/view/DragEvent;Landroid/view/View;ZLcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;FF)Z
    .locals 1
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            "Landroid/view/View;",
            "Z",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;FF)Z"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originTreeNode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetTreeNode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p6, p7}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getDragState(Landroid/view/DragEvent;FF)I

    move-result p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->handleDrop(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;I)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->resetItemView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDragEntered(Landroid/view/View;Z)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->dragItemView(Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDragLocation(Landroid/view/DragEvent;Landroid/view/View;ZFF)Z
    .locals 1
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->resetItemView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->getDragState(Landroid/view/DragEvent;FF)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->dragItemView(Landroid/view/View;I)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDragStarted(Landroid/view/DragEvent;Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;)Z
    .locals 0
    .param p1    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;)Z"
        }
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "originTreeNode"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "targetTreeNode"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public abstract onItemUpdated(Lcom/onyx/android/sdk/base/data/Tree;Lcom/onyx/android/sdk/base/data/Tree;IILjava/util/List;)V
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "TT;>;II",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public resetItemView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->h(Landroid/view/View;IZ)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->h(Landroid/view/View;IZ)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;->h(Landroid/view/View;IZ)V

    return-void
.end method

.method public abstract setOrderIndex(Ljava/lang/Object;F)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract updateParentIdByTargetParentId(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract updateParentIdByTargetUniqueKey(Ljava/lang/Object;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method
