.class public final Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/base/data/TreeNode<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n256#2,2:181\n277#2,2:183\n1855#3:185\n288#3,2:186\n1856#3:188\n288#3,2:189\n766#3:191\n857#3,2:192\n1855#3,2:194\n*S KotlinDebug\n*F\n+ 1 SelectTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter\n*L\n78#1:181,2\n92#1:183,2\n122#1:185\n123#1:186,2\n122#1:188\n135#1:189,2\n140#1:191\n140#1:192,2\n144#1:194,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\n\u0018\u00002\u001c\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u00000\u0001:\u0001)B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\'\u0010(J$\u0010\u000c\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0014J2\u0010\u0011\u001a\u00020\u00102\n\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\n2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J\u0006\u0010\u0012\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0010J\u001a\u0010\u0016\u001a\u00020\u00152\u0010\u0010\u0014\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002J\u001a\u0010\u0017\u001a\u00020\u00102\u0010\u0010\u000f\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\"\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\n2\u0010\u0010\u0014\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR$\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR$\u0010#\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "initList",
        "submitTreeList",
        "node",
        "",
        "n",
        "handleSelect",
        "o",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "r",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "manageTagContext",
        "s",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "oldParentNode",
        "",
        "t",
        "Ljava/util/List;",
        "opTagNodes",
        "u",
        "I",
        "opTagsMaxDepth",
        "<init>",
        "(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V",
        "VH",
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
        "SMAP\nSelectTagAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n256#2,2:181\n277#2,2:183\n1855#3:185\n288#3,2:186\n1856#3:188\n288#3,2:189\n766#3:191\n857#3,2:192\n1855#3,2:194\n*S KotlinDebug\n*F\n+ 1 SelectTagAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter\n*L\n78#1:181,2\n92#1:183,2\n122#1:185\n123#1:186,2\n122#1:188\n135#1:189,2\n140#1:191\n140#1:192,2\n144#1:194,2\n*E\n"
    }
.end annotation


# instance fields
.field public final r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/common/data/ManageTagContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manageTagContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getOldParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setSelectTagId(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->t:Ljava/util/List;

    iput v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->u:I

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;ILcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->p(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;ILcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->q(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;ILcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->o(ILcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->handleSelect(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method


# virtual methods
.method public final handleSelect(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->n(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectTagId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->setSelectTagId(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final initList()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getOldParentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v3

    :cond_2
    iput-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->s:Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->t:Ljava/util/List;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->s:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v1, v2, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getOpTagIds()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->t:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TreeNode;

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->u:I

    invoke-virtual {v1, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getMaxDepth(Lcom/onyx/android/sdk/base/data/TreeNode;)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->u:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->submitTreeList()V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/base/data/TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getOpTagIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->t:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->flatten$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v6

    :cond_4
    check-cast v5, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz v5, :cond_2

    return v3

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result p1

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->u:I

    add-int/2addr p1, p0

    const/4 p0, 0x6

    if-gt p1, p0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    :goto_0
    return v1
.end method

.method public final o(ILcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasChild()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->toggleExpand()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->submitTreeList()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;

    check-cast p3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;ILcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;ILcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;",
            "I",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->icon_tree_arrow:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectTagId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 7
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$dimen;->tree_node_item_indent:I

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    mul-int/2addr v2, v4

    .line 8
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;

    move-result-object p1

    .line 10
    iget-object v6, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v6, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->ivNoteTreeBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;->getIconColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    iget-object v6, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->ivNoteTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v7, "ivNoteTreeExpand"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 13
    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v4, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->ivNoteTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->ivNoteTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v4, Lcom/sunia/HTREnginev2/agm;

    invoke-direct {v4, p0, p2, p3}, Lcom/sunia/HTREnginev2/agm;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;ILcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 18
    iget-object v4, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    .line 19
    iget-object v6, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 20
    invoke-virtual {p2, v2, v1, v4, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 21
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 22
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->ivCheck:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivCheck"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    const/4 v5, 0x4

    .line 23
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->n(Lcom/onyx/android/sdk/base/data/TreeNode;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 25
    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    goto :goto_3

    .line 26
    :cond_4
    sget p2, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_02:I

    .line 27
    :goto_3
    invoke-static {p2}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p2

    .line 28
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    .line 29
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->ivNoteTreeFolder:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    new-instance p2, Lcom/sunia/HTREnginev2/bgm;

    invoke-direct {p2, p0, p3}, Lcom/sunia/HTREnginev2/bgm;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSelectTagBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final submitTreeList()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$submitTreeList$treeList$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/SelectTagAdapter$submitTreeList$treeList$1;

    const/4 v3, 0x0

    const-string v4, "DFS"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
