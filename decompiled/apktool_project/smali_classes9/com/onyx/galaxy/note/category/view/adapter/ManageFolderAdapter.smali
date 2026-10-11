.class public final Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/base/data/TreeNode<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;",
        ">;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter<",
        "Lcom/onyx/android/sdk/base/data/TreeNode<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManageFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n256#2,2:175\n1855#3,2:177\n1549#3:179\n1620#3,3:180\n*S KotlinDebug\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter\n*L\n94#1:175,2\n123#1:177,2\n152#1:179\n152#1:180,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \'2\u001c\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u00000\u00012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u0006:\u0002\'(B\u000f\u0012\u0006\u0010$\u001a\u00020\u001f\u00a2\u0006\u0004\u0008%\u0010&J$\u0010\r\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0014J2\u0010\u0012\u001a\u00020\u00112\n\u0010\u000e\u001a\u00060\u0005R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000b2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u0004H\u0014J \u0010\u0016\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00040\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\u0011J\u0006\u0010\u001a\u001a\u00020\u0011J\u001a\u0010\u001c\u001a\u00020\u00112\u0010\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\u001a\u0010\u001d\u001a\u00020\u00112\u0010\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0003J\u001a\u0010\u001e\u001a\u00020\u00112\u0010\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002R\u0017\u0010$\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragAdapter;",
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
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "viewHolder",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "getDragItem",
        "pos",
        "collapseCascadeOnDrag",
        "initList",
        "submitTreeList",
        "node",
        "p",
        "q",
        "u",
        "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;",
        "r",
        "Lcom/onyx/galaxy/note/common/data/ManageFolderContext;",
        "getManageFolderContext",
        "()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;",
        "manageFolderContext",
        "<init>",
        "(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V",
        "Companion",
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
        "SMAP\nManageFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n256#2,2:175\n1855#3,2:177\n1549#3:179\n1620#3,3:180\n*S KotlinDebug\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter\n*L\n94#1:175,2\n123#1:177,2\n152#1:179\n152#1:180,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final s:F = 0.9f

.field public static final t:F = 1.0f

.field public static final u:J = 0x64L


# instance fields
.field public final r:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/common/data/ManageFolderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manageFolderContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    return-void
.end method

.method public static final synthetic access$removeNode(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->u(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->r(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->s(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->t(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->v(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->p(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->q(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->p(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final v(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->submitTreeList()V

    return-void
.end method


# virtual methods
.method public final collapseCascadeOnDrag(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getDragItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "viewHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;

    return-object p1
.end method

.method public final getManageFolderContext()Lcom/onyx/galaxy/note/common/data/ManageFolderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    return-object p0
.end method

.method public final initList()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->submitTreeList()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;

    check-cast p3, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;ILcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;ILcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;
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
            "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;",
            "I",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_down:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$dimen;->tree_node_item_indent:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    mul-int/2addr v1, v3

    .line 6
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    .line 7
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;->getBinding()Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;

    move-result-object v3

    .line 8
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->ivNoteTreeFolderBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getIconColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->ivNoteTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v6, "ivNoteTreeExpand"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 11
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v2, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->ivNoteTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->ivNoteTreeExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v2, Lcom/sunia/HTREnginev2/k7j;

    invoke-direct {v2, p0, p3}, Lcom/sunia/HTREnginev2/k7j;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 16
    iget-object v4, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    .line 17
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 18
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 19
    iget-object v0, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->tvRemove:Landroid/widget/TextView;

    new-instance v1, Lcom/sunia/HTREnginev2/l7j;

    invoke-direct {v1, p0, p3}, Lcom/sunia/HTREnginev2/l7j;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, v3, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->clsContent:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/m7j;

    invoke-direct {v1, p0, p3}, Lcom/sunia/HTREnginev2/m7j;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->tag_key_pos:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;
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
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final p(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->toggleExpand()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->submitTreeList()V

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$a;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final submitTreeList()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$submitTreeList$treeList$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$submitTreeList$treeList$1;

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

.method public final u(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;->r:Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$removeNode$parentNode$1;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$removeNode$parentNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->setExpand(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->removeChild(Lcom/onyx/android/sdk/base/data/TreeNode;)Lcom/onyx/android/sdk/base/data/TreeNode;

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/j7j;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/j7j;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
