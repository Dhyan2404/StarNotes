.class public Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManageFolderHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderHandlerImpl.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n288#2,2:186\n288#2,2:188\n288#2,2:190\n288#2,2:192\n1855#2,2:194\n*S KotlinDebug\n*F\n+ 1 ManageFolderHandlerImpl.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl\n*L\n93#1:186,2\n98#1:188,2\n113#1:190,2\n148#1:192,2\n181#1:194,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u00a2\u0006\u0004\u0008 \u0010!J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J,\u0010\u0017\u001a\u00020\n2\u0010\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00142\u0010\u0010\u0016\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u0014H\u0002J\u0018\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J4\u0010\u001b\u001a\u00020\u00052\u0010\u0010\u0015\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00142\u0010\u0010\u0016\u001a\u000c\u0012\u0004\u0012\u00020\u00130\u0012j\u0002`\u00142\u0006\u0010\u001a\u001a\u00020\u0002H\u0002R\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragHandler;",
        "",
        "fromPosition",
        "toPosition",
        "",
        "onMergeData",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "onStartDrag",
        "",
        "performMerge",
        "onStopDrag",
        "swap",
        "canMerge",
        "position",
        "canDrag",
        "canSwap",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "originTreeNode",
        "targetTreeNode",
        "b",
        "c",
        "d",
        "dragState",
        "e",
        "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;",
        "a",
        "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;",
        "adapter",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;)V",
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
        "SMAP\nManageFolderHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderHandlerImpl.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n288#2,2:186\n288#2,2:188\n288#2,2:190\n288#2,2:192\n1855#2,2:194\n*S KotlinDebug\n*F\n+ 1 ManageFolderHandlerImpl.kt\ncom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl\n*L\n93#1:186,2\n98#1:188,2\n113#1:190,2\n148#1:192,2\n181#1:194,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field public final a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->Companion:Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->f(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->submitTreeList()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    const/4 p0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, p0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v1, v5

    :cond_4
    if-eqz v1, :cond_5

    move v1, p0

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    const/4 v4, 0x7

    invoke-virtual {p1, p2, v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result p1

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    if-nez v3, :cond_6

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move p0, v2

    :goto_3
    return p0
.end method

.method public final c(II)Z
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->d(II)Z

    move-result p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    move p2, p1

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v0

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    return p1
.end method

.method public canDrag(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canMerge(II)Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TreeNode;

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->b(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSwap(II)Z
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->c(II)Z

    move-result p0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->canAdopt(Lcom/onyx/android/sdk/base/data/TreeNode;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-le p1, p2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-ge p1, p2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    if-nez p0, :cond_2

    return v4

    :cond_2
    if-eqz v2, :cond_6

    if-eqz v5, :cond_3

    if-nez v3, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    :goto_2
    return v3
.end method

.method public final d(II)Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p1, p2, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    const/4 p2, 0x2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v4

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_1

    const/4 p1, 0x3

    :goto_1
    if-eqz v1, :cond_3

    if-eq p1, p2, :cond_3

    return v3

    :cond_3
    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz p1, :cond_7

    move v3, v4

    :cond_7
    return v3
.end method

.method public final e(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V
    .locals 3
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

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setOrderIndex(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getTree()Lcom/onyx/android/sdk/base/data/NewTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/NewTree;->getRoot()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->moveAfter(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->moveTo(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->moveBefore(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNodes;->loadNotSavedList(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->getManageFolderContext()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getSaveModelMap()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onMergeData(II)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TreeNode;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->e(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V

    return-void
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_tree_expand:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$id;->tag_key_pos:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->collapseCascadeOnDrag(I)V

    :cond_0
    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/s7j;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/s7j;-><init>(Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public swap(II)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v2

    const/4 v3, 0x1

    if-ge p1, p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    :cond_1
    invoke-virtual {p0, v0, v1, v3}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->e(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    const/4 v3, 0x3

    :cond_3
    invoke-virtual {p0, v0, v1, v3}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->e(Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/base/data/TreeNode;I)V

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageFolderHandlerImpl;->a:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->move(II)V

    return-void
.end method
