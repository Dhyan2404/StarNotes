.class public final Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n256#2,2:795\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1\n*L\n417#1:793,2\n418#1:795,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u001a\u0010\u0014\u001a\u00020\u00082\u0010\u0010\u0013\u001a\u000c\u0012\u0004\u0012\u00020\u00110\u0010j\u0002`\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0005H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBind",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreate",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "noteTreeNode",
        "f",
        "level",
        "c",
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
        "SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n256#2,2:795\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1\n*L\n417#1:793,2\n418#1:795,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->e(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->d(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;Lcom/onyx/android/sdk/base/data/TreeNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$noteTreeNode"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->f(Lcom/onyx/android/sdk/base/data/TreeNode;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$id"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getViewModel$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoFolder(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    mul-int/2addr p1, p0

    return p1
.end method

.method public final f(Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->hasChild()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->setExpand(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result p1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;-><init>(Ljava/util/List;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/event/ExpandParentFolderEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;ILcom/onyx/galaxy/note/category/data/FilterInfo;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;ILcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 18
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/FilterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "holder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteFolderFilterInfo"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NoteFolderFilterInfo;

    .line 3
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NoteFolderFilterInfo;->getNoteTreeNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    .line 5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->getExpand()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_down:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_0
    iget-object v4, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    invoke-static {v4, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9
    :goto_0
    iget-object v6, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-static {v6}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getSelectId$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    sget v6, Lcom/onyx/android/sdk/skin/R$color;->theme_primary_color_01:I

    invoke-static {v6}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v6

    goto :goto_1

    .line 11
    :cond_1
    sget v6, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v6}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v6

    .line 12
    :goto_1
    iget-object v7, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-static {v7}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getSelectId$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    sget v7, Lcom/onyx/android/sdk/skin/R$drawable;->select_colors_gradient_bg_no_radius:I

    goto :goto_2

    .line 14
    :cond_2
    sget v7, Lcom/onyx/galaxy/note/R$color;->transparent:I

    .line 15
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;

    move-result-object v8

    .line 16
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->ivNoteTreeFolderBottom:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getIconColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->ivFolderExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivFolderExpand"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v12

    :goto_3
    const/16 v13, 0x8

    if-eqz v11, :cond_4

    move v11, v12

    goto :goto_4

    :cond_4
    move v11, v13

    .line 19
    :goto_4
    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->tvNoteTotalCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v11, "tvNoteTotalCount"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v12, v13

    .line 21
    :goto_5
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->tvNoteTotalCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    .line 23
    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->getChildCount()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-wide/16 v12, 0x63

    invoke-static {v11, v12, v13}, Lcom/onyx/android/sdk/base/extension/LongKt;->formatReadableValue(Ljava/lang/Long;J)Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->tvNoteTotalCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    .line 26
    sget v11, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_03:I

    .line 27
    invoke-static {v11}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v11

    .line 28
    invoke-virtual {v9, v11}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    .line 29
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->ivFolderExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v9, v4}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v4, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->tvItemName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    .line 31
    iget-object v4, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->flRoot:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    invoke-virtual {v4, v7}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;->setBackgroundResource(I)V

    .line 32
    iget-object v4, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->c(I)I

    move-result v6

    .line 34
    iget-object v7, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 35
    iget-object v9, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    .line 36
    iget-object v11, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->clsContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    .line 37
    invoke-virtual {v4, v6, v7, v9, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 38
    iget-object v12, v8, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->ivFolderExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    new-instance v15, Lcom/sunia/HTREnginev2/hlg;

    invoke-direct {v15, v0, v5}, Lcom/sunia/HTREnginev2/hlg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 39
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    new-instance v7, Lcom/sunia/HTREnginev2/ilg;

    invoke-direct {v7, v6, v3}, Lcom/sunia/HTREnginev2/ilg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 42
    new-instance v10, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeTouchListener;

    .line 43
    iget-object v3, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 44
    iget-object v3, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-static {v3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getFolderShadowView$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;

    move-result-object v6

    .line 45
    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    .line 46
    new-instance v8, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1$onBind$3;

    iget-object v0, v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-direct {v8, v0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1$onBind$3;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    move-object v3, v10

    .line 47
    invoke-direct/range {v3 .. v8}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeTouchListener;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 48
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 49
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/drag/NoteFolderTreeDragListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteFolder$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteFolderItemViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteFolderBinding;)V

    return-object p0
.end method
