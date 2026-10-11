.class public final Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;
.super Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction<",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;",
        "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "f",
        "Ljava/util/List;",
        "subCategories",
        "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Ljava/util/List;)V",
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
.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subCategories"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;-><init>(Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;->f:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$showSelectDialog(Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction$a;-><init>(Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;-><init>()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;->f:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction;->f:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;->setSelectedCategory(Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;)V

    new-instance v2, Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_300:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;->setMaxHeight(F)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_420:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    new-instance v3, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBaseAction;->getBundle$note_overseasRelease()Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/sticker/StickerUiBundle;->getActivityContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/onyx/galaxy/note/R$string;->sticker_move_category_title:I

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setView(Landroid/view/View;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v2, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction$showSelectDialog$1;

    invoke-direct {v2, v0, v1}, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction$showSelectDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/galaxy/note/editor/view/adapter/StickerCategorySelectAdapter;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction$showSelectDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/ui/sticker/SelectSubCategoryAction$showSelectDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-object v0
.end method
