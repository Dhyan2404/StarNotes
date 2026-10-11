.class public final Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteFolderTreeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,308:1\n256#2,2:309\n256#2,2:311\n256#2,2:313\n256#2,2:315\n256#2,2:317\n256#2,2:319\n*S KotlinDebug\n*F\n+ 1 NoteFolderTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener\n*L\n249#1:309,2\n250#1:311,2\n251#1:313,2\n256#1:315,2\n257#1:317,2\n258#1:319,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\r\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\"\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0010\u0010\r\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000cH\u0003J4\u0010\u0013\u001a\u00020\u000e2\u0010\u0010\u0010\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000c2\u0010\u0010\r\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J$\u0010\u0017\u001a\u00020\u00062\u0010\u0010\u0014\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002J\u0018\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\"\u0010\u001a\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0010\u0010\u0019\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000cH\u0002J\"\u0010\u001b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0010\u0010\u0019\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000cH\u0002J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0008H\u0002R\u001b\u0010\"\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001b\u0010$\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001f\u001a\u0004\u0008#\u0010!R\u001e\u0010\'\u001a\u000c\u0012\u0004\u0012\u00020\u000b0\nj\u0002`\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;",
        "Landroid/view/View$OnDragListener;",
        "Landroid/view/View;",
        "itemView",
        "Landroid/view/DragEvent;",
        "e",
        "",
        "onDrag",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "originModel",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "targetTreeNode",
        "",
        "k",
        "originTreeNode",
        "",
        "dragState",
        "i",
        "treeNode",
        "",
        "name",
        "d",
        "m",
        "targetNode",
        "c",
        "b",
        "originNoteModel",
        "l",
        "",
        "Lkotlin/Lazy;",
        "f",
        "()F",
        "bottomYPercent",
        "h",
        "topYPercent",
        "g",
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
        "SMAP\nNoteFolderTreeDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteFolderTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,308:1\n256#2,2:309\n256#2,2:311\n256#2,2:313\n256#2,2:315\n256#2,2:317\n256#2,2:319\n*S KotlinDebug\n*F\n+ 1 NoteFolderTreeDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener\n*L\n249#1:309,2\n250#1:311,2\n251#1:313,2\n256#1:315,2\n257#1:317,2\n258#1:319,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NoteFolderTreeDragListener"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3


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

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->Companion:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$bottomYPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$bottomYPercent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->e:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$topYPercent$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$topYPercent$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->j(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;)V

    return-void
.end method

.method public static final synthetic access$getRootNode(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->g()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->g()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$handleDropFromFolder$1$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$handleDropFromFolder$1$1;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->setSaved(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->g()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromFolder$originTreeNode$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromFolder$originTreeNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromFolder$isAncestors$1;

    invoke-direct {v1, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromFolder$isAncestors$1;-><init>(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    const/4 v3, 0x7

    invoke-virtual {p0, p2, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    move p1, v2

    :cond_2
    return p1
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->g()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromList$originTreeNode$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromList$originTreeNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v2, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromList$isAncestors$1;

    invoke-direct {v2, p2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$acceptDragFromList$isAncestors$1;-><init>(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x6

    invoke-virtual {p0, p2, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method

.method public final d(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->checkNoteNameRepeat(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p2, Lcom/onyx/galaxy/note/R$string;->move_folder_conflicted:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_0
    return p0
.end method

.method public final e(Landroid/view/View;I)V
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

.method public final f()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->e:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final g()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public final h()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->isParent(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->isSibling(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->d(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->moveAfter(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    invoke-virtual {p0, p2, v3}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->d(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->moveTo(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    new-instance v5, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;-><init>(Ljava/util/List;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->d(Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {v1, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->moveBefore(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    :cond_7
    :goto_1
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->g()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/onyx/galaxy/note/category/action/DragMoveFolderAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/onyx/galaxy/note/category/action/DragMoveFolderAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/fwj;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/fwj;-><init>(Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/onyx/galaxy/note/category/action/MoveNoteAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$a;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->l(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
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

.method public final m(Landroid/view/View;)V
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
    .locals 16
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/DragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "e"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->m(Landroid/view/View;)V

    return v5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const-string v6, "NoteListAdapter"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    const-string v6, "NotePageListAdapter"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v7

    :goto_2
    const-string v8, "NoteFolderTreeDragListener"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v6, :cond_4

    return v5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-eqz v8, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.bean.NoteModelBean"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTreeNodeKt.NoteTreeNode }"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->g()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v10

    new-instance v11, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$onDrag$originTreeNode$1;

    invoke-direct {v11, v8}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener$onDrag$originTreeNode$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v10, v11}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v10

    const/4 v11, 0x6

    if-eqz v10, :cond_6

    invoke-virtual {v10, v9, v11}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->f()F

    move-result v13

    mul-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->h()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v15

    if-eq v15, v7, :cond_17

    const/4 v7, 0x3

    const/4 v5, 0x2

    if-eq v15, v5, :cond_12

    if-eq v15, v7, :cond_b

    const/4 v2, 0x5

    if-eq v15, v2, :cond_8

    if-eq v15, v11, :cond_7

    const/4 v2, 0x0

    return v2

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->m(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {v8}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v8}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v0, v1, v5}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->e(Landroid/view/View;I)V

    :cond_a
    const/4 v0, 0x1

    return v0

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v0, v8, v9}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->k(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    :cond_c
    if-eqz v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v13

    if-gtz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v12

    if-ltz v2, :cond_e

    move v2, v7

    goto :goto_4

    :cond_e
    move v2, v5

    :goto_4
    if-ne v2, v7, :cond_f

    if-eqz v14, :cond_f

    const/4 v3, 0x0

    return v3

    :cond_f
    const/4 v3, 0x0

    if-ne v2, v5, :cond_10

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v3

    :cond_10
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v10, v9, v2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->i(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V

    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->m(Landroid/view/View;)V

    const/4 v2, 0x1

    return v2

    :cond_12
    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v6

    cmpg-float v6, v6, v13

    if-gtz v6, :cond_13

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->e(Landroid/view/View;I)V

    goto :goto_6

    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v12

    if-ltz v2, :cond_14

    if-nez v14, :cond_14

    invoke-virtual {v0, v1, v7}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->e(Landroid/view/View;I)V

    goto :goto_5

    :cond_14
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v1, v5}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->e(Landroid/view/View;I)V

    goto :goto_5

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->m(Landroid/view/View;)V

    :goto_5
    const/4 v0, 0x1

    goto :goto_7

    :cond_16
    :goto_6
    move v0, v2

    :goto_7
    return v0

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v0, v8, v9}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->c(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v0

    return v0

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v0, v8, v9}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;->b(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method
