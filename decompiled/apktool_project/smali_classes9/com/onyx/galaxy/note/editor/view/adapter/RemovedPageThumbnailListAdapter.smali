.class public Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter<",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageThumbnailListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageThumbnailListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,270:1\n1855#2,2:271\n256#3,2:273\n*S KotlinDebug\n*F\n+ 1 PageThumbnailListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter\n*L\n207#1:271,2\n234#1:273,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\u0008\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014J&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\nH\u0014J\u0014\u0010\u0012\u001a\u00020\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "position",
        "",
        "item",
        "onCreateViewHolder",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "scalePageDisplayRectF",
        "list",
        "",
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
        "SMAP\nPageThumbnailListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageThumbnailListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,270:1\n1855#2,2:271\n256#3,2:273\n*S KotlinDebug\n*F\n+ 1 PageThumbnailListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter\n*L\n207#1:271,2\n234#1:273,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->setCheckView(Landroid/view/View;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    const-string v0, "checkbox"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;->isSelectionMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 5
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->removedDate:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->removed_date_colon:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_2()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getUpdatedAt()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->restorePos:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/galaxy/note/R$string;->restore_pos_colon:I

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageIndex()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->image:Landroid/widget/ImageView;

    const-string v0, "image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->image:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->card:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_2

    const/16 v0, 0x50

    .line 11
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string v0, "getRoot(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    .line 13
    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isLandscape(Landroid/graphics/RectF;)Z

    move-result p0

    const/4 v1, -0x2

    const-string v2, "imageContainer"

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_146:I

    invoke-virtual {p2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    .line 17
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->imageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_146:I

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->image:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    .line 20
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    .line 21
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->override(II)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    .line 22
    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->toObjectCacheKey()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, p3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->dontAnimate()Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    .line 24
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 25
    sget p0, Lcom/onyx/android/sdk/device/R$dimen;->dp_130:I

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p0

    .line 26
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p3, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/universal/editor/data/PageDataModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/RemovedPageThumbnailListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
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
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteRemovedPageThumbnailBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public final scalePageDisplayRectF(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->note_item_overview_width:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_item_overview_width:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageByOrientation(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_0
    return-void
.end method
