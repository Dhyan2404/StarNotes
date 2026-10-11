.class public final Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;
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
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1233:1\n277#2,2:1234\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8\n*L\n478#1:1234,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u001a\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBind",
        "",
        "",
        "payloads",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreate",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "a",
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
        "SMAP\nNotePageListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1233:1\n277#2,2:1234\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8\n*L\n478#1:1234,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;)V
    .locals 2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    const-string v0, "valueOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;->getFolderThumbnailAlphaColor(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;->getFolderThumbnailWhiteAlphaColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceBottom:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceFourthTop:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceThrTop:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceThrTop:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/NotePageBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->access$bindNoteViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivOption:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->access$isMulSelect$p(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;ILcom/onyx/galaxy/note/category/data/NotePageBean;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;
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
            "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;",
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

    .line 8
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->access$bindNoteViewHolderPayloads(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Landroid/view/View;ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$addItemTypes$8;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$LinearFolderItemViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;)V

    return-object p0
.end method
