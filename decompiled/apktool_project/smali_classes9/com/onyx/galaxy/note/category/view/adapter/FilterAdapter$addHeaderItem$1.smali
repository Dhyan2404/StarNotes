.class public final Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->p()V
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
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->e(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->f(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->g(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getViewModel$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSideExpand()V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_homepage_0001"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/event/StatisticLoginPageShowEvent;

    sget-object v1, Lcom/onyx/android/sdk/data/LoginTriggerFrom;->HOME_AVATAR:Lcom/onyx/android/sdk/data/LoginTriggerFrom;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/event/StatisticLoginPageShowEvent;-><init>(Lcom/onyx/android/sdk/data/LoginTriggerFrom;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static final h(Landroid/view/View;)V
    .locals 2

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToDataRepository$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;ILcom/onyx/galaxy/note/category/data/FilterInfo;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;ILcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 12
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/FilterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    .line 3
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p2, "ivExpand"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/blg;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/blg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 4
    iget-object v6, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    const-string p2, "ivUserIcon"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    new-instance v9, Lcom/sunia/HTREnginev2/clg;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/clg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p3, "ivSetting"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/sunia/HTREnginev2/dlg;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/dlg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 6
    iget-object p3, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivNotifyUnread:Landroid/view/View;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getUnreadCount$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 7
    new-instance p3, Lcom/onyx/galaxy/note/category/action/LoadUserAvatarAction;

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivUserIcon:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivUserRole:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivUserRole"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0, p2}, Lcom/onyx/galaxy/note/category/action/LoadUserAvatarAction;-><init>(Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/ImageView;)V

    .line 8
    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    .line 10
    invoke-static {p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$setDisposable$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 11
    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->ivLibrary:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string p0, "ivLibrary"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/elg;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/elg;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addHeaderItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterHeaderItemViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemFilterHeaderBinding;)V

    return-object p0
.end method
