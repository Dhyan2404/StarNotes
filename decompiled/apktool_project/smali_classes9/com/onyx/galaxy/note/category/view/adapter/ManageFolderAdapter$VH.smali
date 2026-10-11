.class public final Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem<",
        "Lcom/onyx/android/sdk/base/data/TreeNode<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManageFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,174:1\n256#2,2:175\n*S KotlinDebug\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH\n*L\n63#1:175,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u00050\u0002B\u0019\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u000c\u0012\u0004\u0012\u00020\u00040\u0003j\u0002`\u0005H\u0016J\u001a\u0010\r\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000c\u001a\u00020\u0007H\u0016R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "holder",
        "",
        "isCurrentlyActive",
        "",
        "showDragState",
        "getData",
        "show",
        "showMergePreview",
        "Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;",
        "H",
        "Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;",
        "binding",
        "Landroid/view/ViewGroup;",
        "parent",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;)V",
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
        "SMAP\nManageFolderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,174:1\n256#2,2:175\n*S KotlinDebug\n*F\n+ 1 ManageFolderAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH\n*L\n63#1:175,2\n*E\n"
    }
.end annotation


# instance fields
.field public final H:Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic I:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "binding"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;->I:Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    .line 2
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->getRoot()Lcom/aitsuki/swipe/SwipeLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 p4, 0x0

    .line 5
    invoke-static {p3, p2, p4}, Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;

    move-result-object p3

    const-string p4, "inflate(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;->H:Lcom/onyx/galaxy/note/databinding/ItemManageFolderBinding;

    return-object p0
.end method

.method public getData()Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.base.data.TreeNode<com.onyx.android.sdk.replicator.note.bean.NoteModelBean>{ com.onyx.android.sdk.replicator.note.utils.NoteTreeNodeKt.NoteTreeNode }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter$VH;->getData()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public showDragState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public showMergePreview(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "findViewById(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
