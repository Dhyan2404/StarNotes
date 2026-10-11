.class public final Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShortcutItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem<",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016R\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/DragTouchCallback$DragItem;",
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "holder",
        "",
        "show",
        "",
        "showMergePreview",
        "isCurrentlyActive",
        "showDragState",
        "getData",
        "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;",
        "H",
        "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;",
        "getViewBinding",
        "()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;",
        "viewBinding",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;)V",
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
.field public final H:Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic I:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->I:Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->H:Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    return-void
.end method


# virtual methods
.method public getData()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.galaxy.note.editor.data.CustomShortcutBarBean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    return-object p0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->getData()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object p0

    return-object p0
.end method

.method public final getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter$ShortcutItemViewHolder;->H:Lcom/onyx/galaxy/note/databinding/ItemCustomShortcutBarBinding;

    return-object p0
.end method

.method public showDragState(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showMergePreview(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
