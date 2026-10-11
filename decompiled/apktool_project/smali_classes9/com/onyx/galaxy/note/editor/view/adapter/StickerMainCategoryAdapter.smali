.class public final Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u00a2\u0006\u0004\u0008&\u0010\'J\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0014J \u0010\u000e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0014J\"\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0014J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0002R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010 R \u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u001f0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;",
        "",
        "position",
        "",
        "list",
        "getItemViewType",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "item",
        "",
        "onBindViewHolder",
        "updateStickerList",
        "p",
        "o",
        "s",
        "",
        "uniqueId",
        "",
        "u",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "r",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "",
        "J",
        "highlightDuration",
        "",
        "t",
        "Ljava/util/Map;",
        "lastHighlightTime",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V",
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
.field public final r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:J

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->highlight_duration:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->s:J

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->t:Ljava/util/Map;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->r(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->q(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->t(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->s(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->s(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemViewType(ILjava/util/List;)I
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)I"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final o(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget p2, Lcom/onyx/galaxy/note/R$layout;->layout_placeholder_sticker:I

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setTipsLayout(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->updateSubCategoryList()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->updateSubCategoryStickerList()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->addNewCategoryEvent()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->addImportEvent()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->updateEmptyLayout()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;ILcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;ILcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->setMainCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedSubCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->setSubCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->isPlaceholder()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->o(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;
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

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-direct {p2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;)V

    return-object p2
.end method

.method public final p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget v1, Lcom/onyx/galaxy/note/R$layout;->layout_placeholder_sticker_offline:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setTipsLayout(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->subCategoryListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->headerView:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/yym;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/yym;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/zym;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/zym;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->u(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setHighlight(Z)V

    :cond_0
    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->t:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/sunia/HTREnginev2/azm;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/azm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    iget-wide v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->s:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryAdapter;->s:J

    cmp-long p0, v3, p0

    if-gez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final updateStickerList(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    instance-of p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->updateSubCategoryStickerList()V

    :cond_1
    return-void
.end method
