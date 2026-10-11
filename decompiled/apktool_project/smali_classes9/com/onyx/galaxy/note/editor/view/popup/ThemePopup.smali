.class public final Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010\u0016\u001a\u00020\u0010\u00a2\u0006\u0004\u0008+\u0010,J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u001c\u0010\u000c\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\tH\u0002J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\"\u0010\u0016\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "dismiss",
        "m",
        "Lcom/onyx/android/sdk/theme/SkinBean;",
        "themeBean",
        "q",
        "l",
        "",
        "eventId",
        "styleName",
        "o",
        "skinBean",
        "k",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;",
        "r",
        "Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;)V",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;",
        "s",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;",
        "getAdapter",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;",
        "setAdapter",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;)V",
        "adapter",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->m()V

    const/4 p1, 0x0

    const/4 p2, 0x2

    const-string p3, "view_galaxy_docsSetting_changeTheme_0002"

    invoke-static {p0, p3, p1, p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$checkThemePermission(Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;Lcom/onyx/android/sdk/theme/SkinBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->k(Lcom/onyx/android/sdk/theme/SkinBean;)V

    return-void
.end method

.method public static final synthetic access$setTheme(Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;Lcom/onyx/android/sdk/theme/SkinBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q(Lcom/onyx/android/sdk/theme/SkinBean;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_docsSetting_changeTheme_0002"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final getAdapter()Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    return-object p0
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/theme/SkinBean;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/SkinBean;->getThemeStyle()Lcom/onyx/android/sdk/theme/utils/ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeStyle;->isVipStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVIPPermanent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q(Lcom/onyx/android/sdk/theme/SkinBean;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->n(Lcom/onyx/android/sdk/theme/SkinBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DisplayActionsKt;->display$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;->rlThemeList:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->theme_popup_span_count:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;->rlThemeList:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;->setSelectTheme(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    sget-object v1, Lcom/onyx/android/sdk/theme/utils/SkinType;->Companion:Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;->getDisplayList$default(Lcom/onyx/android/sdk/theme/utils/SkinType$Companion;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;->setCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/theme/SkinBean;)V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noteEditor_OtherSetting_prostyle_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/SkinBean;->getThemeType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->setFunctionFrom(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;-><init>(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p0, "App_style_name"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p2, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/theme/SkinBean;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/SkinBean;->getThemeType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;->setSelectTheme(I)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/ThemeExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/SkinBean;->getThemeType()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/galaxy/note/utils/ThemeExt;->resetTheme(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->l()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/SkinBean;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_galaxy_docsSetting_changeTheme_0003"

    invoke-virtual {p0, v2, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->o(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsAppThemeEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/theme/SkinBean;->getTitle()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/event/StatisticsAppThemeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getStatusBarHideOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/ActivityExtKt;->updateFullScreenStyle(Z)V

    return-void
.end method

.method public final setAdapter(Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->s:Lcom/onyx/galaxy/note/editor/view/adapter/ThemeAdapter;

    return-void
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->r:Lcom/onyx/galaxy/note/databinding/PopupThemeBinding;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ThemePopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method
