.class public final Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTagTreeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,324:1\n256#2,2:325\n256#2,2:327\n256#2,2:329\n256#2,2:331\n256#2,2:333\n256#2,2:335\n288#3,2:337\n*S KotlinDebug\n*F\n+ 1 NoteTagTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener\n*L\n279#1:325,2\n281#1:327,2\n283#1:329,2\n289#1:331,2\n290#1:333,2\n291#1:335,2\n303#1:337,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\r\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J4\u0010\u0010\u001a\u00020\u000f2\u0010\u0010\u000b\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n2\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002J$\u0010\u0005\u001a\u00020\u00062\u0010\u0010\u0011\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\"\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00142\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\nH\u0002J,\u0010\u0017\u001a\u00020\u00062\u0010\u0010\u000b\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n2\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\nH\u0002J\u0018\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J,\u0010\u001a\u001a\u00020\u00062\u0010\u0010\u000b\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n2\u0010\u0010\u000c\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\nH\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0014H\u0002R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001b\u0010$\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u001f\u001a\u0004\u0008#\u0010!R\u001e\u0010\'\u001a\u000c\u0012\u0004\u0012\u00020\t0\u0008j\u0002`\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "itemView",
        "Landroid/view/DragEvent;",
        "e",
        "",
        "onDrag",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "originTreeNode",
        "targetTreeNode",
        "",
        "dragState",
        "",
        "k",
        "treeNode",
        "",
        "content",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "originModel",
        "j",
        "d",
        "f",
        "n",
        "c",
        "b",
        "originNoteModel",
        "m",
        "",
        "Lkotlin/Lazy;",
        "g",
        "()F",
        "bottomYPercent",
        "i",
        "topYPercent",
        "h",
        "()Lcom/onyx/android/sdk/base/data/TreeNode;",
        "rootNode",
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
        "SMAP\nNoteTagTreeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTagTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,324:1\n256#2,2:325\n256#2,2:327\n256#2,2:329\n256#2,2:331\n256#2,2:333\n256#2,2:335\n288#3,2:337\n*S KotlinDebug\n*F\n+ 1 NoteTagTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener\n*L\n279#1:325,2\n281#1:327,2\n283#1:329,2\n289#1:331,2\n290#1:333,2\n291#1:335,2\n303#1:337,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DRAG_AFTER:I = 0x3

.field public static final DRAG_BEFORE:I = 0x1

.field public static final DRAG_IN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "NoteTagTreeDragListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->Companion:Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$bottomYPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$bottomYPercent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->e:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$topYPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$topYPercent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->l(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;)V

    return-void
.end method

.method public static final synthetic access$getRootNode(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->h()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->h()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$handleDropFromTag$1$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$handleDropFromTag$1$1;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    return p0
.end method

.method public final c(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz v1, :cond_2

    move v1, p1

    goto :goto_1

    :cond_2
    move v1, p2

    :goto_1
    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    return p1
.end method

.method public final d(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x6

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->checkTagContentRepeat(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p2, Lcom/onyx/galaxy/note/R$string;->move_tag_conflicted:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_0
    return p0
.end method

.method public final f(Landroid/view/View;I)V
    .locals 5

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v4, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :goto_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public final i()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final j(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsTagAddEvent;

    sget-object v2, Lcom/onyx/android/sdk/data/TagAddFrom;->DRAG:Lcom/onyx/android/sdk/data/TagAddFrom;

    sget-object v3, Lcom/onyx/android/sdk/data/TagAddType;->NOTE:Lcom/onyx/android/sdk/data/TagAddType;

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/event/StatisticsTagAddEvent;-><init>(Lcom/onyx/android/sdk/data/TagAddFrom;Lcom/onyx/android/sdk/data/TagAddType;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/action/UpdateNoteAction;-><init>(Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$handleDropFromList$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$handleDropFromList$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$handleDropFromList$2;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener$handleDropFromList$2;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-static {p2, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->setOrderIndex(F)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->isParent(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v3

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->isSibling(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eq p3, v1, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->e(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->moveAfter(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    goto :goto_1

    :cond_2
    if-nez v3, :cond_4

    invoke-virtual {p0, p2, v0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->e(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->moveTo(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    new-instance v3, Lcom/onyx/galaxy/note/category/action/UpdateTagExpandStatusAction;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/onyx/galaxy/note/category/action/UpdateTagExpandStatusAction;-><init>(Ljava/util/List;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->e(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->moveBefore(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    :cond_7
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->h()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBeanList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lcom/onyx/galaxy/note/category/action/DragMoveTagAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, p2, p3, v2}, Lcom/onyx/galaxy/note/category/action/DragMoveTagAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/z2k;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/z2k;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "trigger_from"

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v0, "drag_galaxy_note_add_0001"

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 2

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->n(Landroid/view/View;)V

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "NoteListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "NotePageListAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    const-string v4, "NoteTagTreeDragListener"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteTagBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTagNodeKt.NoteTagNode }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->g()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->i()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v8

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v9

    const-string v10, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel"

    if-eq v9, v3, :cond_16

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v9, v12, :cond_10

    if-eq v9, v11, :cond_9

    const/4 v6, 0x5

    if-eq v9, v6, :cond_6

    const/4 p2, 0x6

    if-eq v9, p2, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->n(Landroid/view/View;)V

    return v3

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p2, v4}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->d(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, v12}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f(Landroid/view/View;I)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p0, p1, v12}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f(Landroid/view/View;I)V

    :cond_8
    return v3

    :cond_9
    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, v0, v4}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->d(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v9

    cmpg-float v7, v9, v7

    if-gtz v7, :cond_a

    move v6, v3

    goto :goto_3

    :cond_a
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v7

    cmpl-float v6, v7, v6

    if-ltz v6, :cond_b

    move v6, v11

    goto :goto_3

    :cond_b
    move v6, v12

    :goto_3
    if-ne v6, v11, :cond_c

    if-eqz v8, :cond_c

    return v2

    :cond_c
    if-ne v6, v12, :cond_d

    if-nez v5, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0, v0, v4, v6}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->k(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p2, v4}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->j(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    :cond_f
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->n(Landroid/view/View;)V

    return v3

    :cond_10
    if-eqz v0, :cond_14

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, v0, v4}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->d(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_11

    invoke-virtual {p0, p1, v3}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f(Landroid/view/View;I)V

    goto :goto_4

    :cond_11
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result p2

    cmpl-float p2, p2, v6

    if-ltz p2, :cond_12

    if-nez v8, :cond_12

    invoke-virtual {p0, p1, v11}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f(Landroid/view/View;I)V

    goto :goto_4

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {p0, p1, v12}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f(Landroid/view/View;I)V

    goto :goto_4

    :cond_13
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->n(Landroid/view/View;)V

    :cond_14
    :goto_4
    if-eqz v1, :cond_15

    invoke-virtual {p0, p1, v12}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->f(Landroid/view/View;I)V

    :cond_15
    return v3

    :cond_16
    if-eqz v0, :cond_17

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, v4}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->c(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result p0

    return p0

    :cond_17
    if-eqz v1, :cond_18

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteTagTreeDragListener;->b(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p0

    return p0

    :cond_18
    return v2
.end method
