.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,658:1\n277#2,2:659\n277#2,2:661\n*S KotlinDebug\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4\n*L\n264#1:659,2\n265#1:661,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J \u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;",
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
        "SMAP\nNoteListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,658:1\n277#2,2:659\n277#2,2:661\n*S KotlinDebug\n*F\n+ 1 NoteListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4\n*L\n264#1:659,2\n265#1:661,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->a:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->a:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->access$bindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;->cbSel:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    const-string p3, "cbSel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->a:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-static {p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->access$isMulSelect$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 5
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;->ivOption:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "ivOption"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->a:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->access$isMulSelect$p(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 7
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
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
            "Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;",
            "I",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
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

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->a:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->access$bindViewHolderPayloads(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$addItemTypes$4;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$LinearNotePortraitItemViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearNotePortraitBinding;)V

    return-object p0
.end method
