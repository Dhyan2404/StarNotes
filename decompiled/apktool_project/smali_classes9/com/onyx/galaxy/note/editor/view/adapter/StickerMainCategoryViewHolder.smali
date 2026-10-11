.class public final Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;
.super Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerMainCategoryViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n350#2,7:319\n766#2:326\n857#2,2:327\n1549#2:329\n1620#2,3:330\n*S KotlinDebug\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder\n*L\n300#1:319,7\n214#1:326\n214#1:327,2\n215#1:329\n215#1:330,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u00a2\u0006\u0004\u00081\u00102J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J,\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0002J\u0008\u0010\u000f\u001a\u00020\u0003H\u0002J\u0008\u0010\u0010\u001a\u00020\u0003H\u0002J\u0006\u0010\u0011\u001a\u00020\u0003J\u0006\u0010\u0012\u001a\u00020\u0003J\u0006\u0010\u0013\u001a\u00020\u0003J\u0006\u0010\u0014\u001a\u00020\u0003J\u0006\u0010\u0015\u001a\u00020\u0003R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u001e\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\"\u0010\t\u001a\u00020\u00088\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010\n\u001a\u00020\u00088\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\'\u001a\u0004\u0008,\u0010)\"\u0004\u0008-\u0010+R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010\u000c\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;",
        "",
        "a0",
        "",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
        "list",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "mainCategory",
        "subCategory",
        "Y",
        "Z",
        "c0",
        "b0",
        "P",
        "e0",
        "updateSubCategoryList",
        "updateSubCategoryStickerList",
        "updateEmptyLayout",
        "addImportEvent",
        "addNewCategoryEvent",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "I",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "J",
        "Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;",
        "getBinding$note_overseasRelease",
        "()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;",
        "K",
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;",
        "subCategoryAdapter",
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;",
        "L",
        "Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;",
        "stickerListAdapter",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "getMainCategory$note_overseasRelease",
        "()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "setMainCategory$note_overseasRelease",
        "(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V",
        "getSubCategory$note_overseasRelease",
        "setSubCategory$note_overseasRelease",
        "",
        "M",
        "isStickerEmpty",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;)V",
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
        "SMAP\nStickerMainCategoryViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n350#2,7:319\n766#2:326\n857#2,2:327\n1549#2:329\n1620#2,3:330\n*S KotlinDebug\n*F\n+ 1 StickerMainCategoryViewHolder.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder\n*L\n300#1:319,7\n214#1:326\n214#1:327,2\n215#1:329\n215#1:330,3\n*E\n"
    }
.end annotation


# instance fields
.field public final I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

.field public L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

.field public M:Z

.field public mainCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

.field public subCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->c0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->b0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->addImportEvent()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->P()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->addNewCategoryEvent()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->a0()V

    return-void
.end method

.method public static synthetic G(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->S(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->W(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->V(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->X(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->T(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->Q(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic M(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->d0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->U(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->R(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static final Q(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->toggleSelectAll(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez p1, :cond_0

    const-string p1, "stickerListAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->e0()V

    return-void
.end method

.method public static final R(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedStickers(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-static {v2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->isNormalSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez v3, :cond_2

    const-string v3, "stickerListAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/onyx/galaxy/note/ui/sticker/InsertStickersToNoteAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$a;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final S(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedItems(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/MoveSubCategoryAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$b;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final T(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedItems(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/DeleteStickersAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$c;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final U(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->exitSelectionMode(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez p1, :cond_0

    const-string p1, "stickerListAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->e0()V

    return-void
.end method

.method public static final V(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->enterSelectionMode(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez p1, :cond_0

    const-string p1, "stickerListAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->e0()V

    return-void
.end method

.method public static final W(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_IMPORT_STICKER_FUNCTION_NAME()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_IMPORT_STICKER_INTENT_NAME()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestImagePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$d;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final X(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getSubCategory()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getSubCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    new-instance v0, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/AddSubCategoryAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$e;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$e;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final synthetic access$adjustStickerList(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->Y(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    return-object p0
.end method

.method public static final synthetic access$getStickerListAdapter$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getSubCategoryAdapter$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->K:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    return-object p0
.end method

.method public static final synthetic access$setStickerEmpty$p(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->M:Z

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->e0()V

    return-void
.end method

.method public static final d0(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToStickerMaterialCenter()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/dzm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dzm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectCheckBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/ezm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ezm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->insertButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/fzm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fzm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->moveButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/gzm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gzm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/hzm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hzm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->finishButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/izm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/izm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Y(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->Z()Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/List;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final Z()Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;->setType(I)V

    const-string v0, "sticker_material_add_id"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a0()V
    .locals 2

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_02:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->updateTitleColor(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->sp_12:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->updateTitleSize(F)V

    return-void
.end method

.method public final addImportEvent()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/czm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/czm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final addNewCategoryEvent()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/bzm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bzm;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b0()V
    .locals 6

    new-instance v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initStickerGridView$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initStickerGridView$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v3, v2, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/onyx/galaxy/note/R$integer;->item_sticker_col:I

    invoke-virtual {v1, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-direct {v4, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez p0, :cond_0

    const-string p0, "stickerListAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final c0()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$initSubCategoryListView$3;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->K:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->subCategoryListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->subCategoryListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->K:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    if-nez p0, :cond_0

    const-string p0, "subCategoryAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final e0()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->moveButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->moveButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->categoryAddButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->importButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->moveButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->isInSelectionMode(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->buttonGroup:Landroid/widget/LinearLayout;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectionLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    const/4 v1, 0x0

    const-string v2, "stickerListAdapter"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    invoke-static {v6}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerModelKt;->isNormalSticker(Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    :goto_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getSelectedItems(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectCheckBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-lez v0, :cond_6

    move v7, v5

    goto :goto_4

    :cond_6
    move v7, v4

    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->selectCheckBox:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {v6, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->insertButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->moveButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->moveButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->M:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->M:Z

    xor-int/2addr p0, v5

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    return-object p0
.end method

.method public final getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->mainCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mainCategory"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSubCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->subCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "subCategory"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setMainCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->mainCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method

.method public final setSubCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->subCategory:Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    return-void
.end method

.method public final updateEmptyLayout()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget v2, Lcom/onyx/galaxy/note/R$id;->tv_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->empty_view_sticker_title:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->sp_12:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_sub_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->empty_view_template_sub_title:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/jzm;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/jzm;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget v3, Lcom/onyx/galaxy/note/R$id;->tv_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->note_empty_view_sticker_title:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->sp_14:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->stickerEmptyTipView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_sub_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateSubCategoryList()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->K:Lcom/onyx/galaxy/note/editor/view/adapter/StickerSubCategoryAdapter;

    if-nez v0, :cond_0

    const-string v0, "subCategoryAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getSubCategory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;->getSubCategory()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->J:Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStickerCategoryMainBinding;->subCategoryListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final updateSubCategoryStickerList()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->L:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    if-nez v0, :cond_0

    const-string v0, "stickerListAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->setMainCategory$note_overseasRelease(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    new-instance v0, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->I:Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getMainCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;->getSubCategory$note_overseasRelease()Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/ui/sticker/LoadStickerListAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder$g;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerMainCategoryViewHolder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
