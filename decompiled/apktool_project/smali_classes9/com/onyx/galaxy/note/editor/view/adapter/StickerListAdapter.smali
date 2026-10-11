.class public final Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,90:1\n256#2,2:91\n256#2,2:93\n*S KotlinDebug\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter\n*L\n57#1:91,2\n58#1:93,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B#\u0008\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\u0010\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00020\u000f0\u0017j\u0002`\u0018\u00a2\u0006\u0004\u0008#\u0010$J&\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0014J(\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\tH\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u001b\u001a\u000c\u0012\u0004\u0012\u00020\u000f0\u0017j\u0002`\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001d\u001a\u00020\u001c8\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;",
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
        "n",
        "o",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "r",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "s",
        "Lkotlin/jvm/functions/Function0;",
        "onItemSelectedStateChange",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "mainCategory",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "getMainCategory$note_overseasRelease",
        "()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "setMainCategory$note_overseasRelease",
        "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lkotlin/jvm/functions/Function0;)V",
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
        "SMAP\nStickerListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,90:1\n256#2,2:91\n256#2,2:93\n*S KotlinDebug\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter\n*L\n57#1:91,2\n58#1:93,2\n*E\n"
    }
.end annotation


# instance fields
.field public mainCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

.field public final r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemSelectedStateChange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->s:Lkotlin/jvm/functions/Function0;

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/xym;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/xym;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->m(Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->n(I)V

    return-void
.end method


# virtual methods
.method public final getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->mainCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mainCategory"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->isInSelectionMode(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->toggleSelection(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->s:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sticker_material_add_id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToStickerMaterialCenter()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->o()V

    new-instance p1, Lcom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedSubCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarStickerEvent;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarStickerEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ")V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->isInSelectionMode(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Z

    move-result p2

    .line 3
    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker_material_add_id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->rlySticker:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    const-string v2, "rlySticker"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 5
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->flyAdd:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v2, "flyAdd"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 7
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->flyAdd:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->ivAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->image:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "image"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V

    invoke-static {p3, v0, v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->loadInto(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function0;)V

    .line 11
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->r:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->isStickerSelected(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Z

    move-result p0

    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p3

    check-cast p3, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-static {p3, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 13
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

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
            "Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;",
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

    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemStickerBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setMainCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->mainCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method
