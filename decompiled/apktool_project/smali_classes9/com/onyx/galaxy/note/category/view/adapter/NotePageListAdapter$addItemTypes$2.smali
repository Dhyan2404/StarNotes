.class public final Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1233:1\n298#2,2:1234\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2\n*L\n239#1:1234,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
        "payloads",
        "",
        "",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1233:1\n298#2,2:1234\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2\n*L\n239#1:1234,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/NotePageBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->access$bindHeaderViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;->vDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string p2, "vDivider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p3, :cond_1

    const/16 p2, 0x8

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/NotePageBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;",
            "I",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->access$bindHeaderViewHolderPayloads(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$2;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;
    .locals 0
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

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearHeaderItemViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemNoteLinearCreateDisplayBinding;)V

    return-object p0
.end method
