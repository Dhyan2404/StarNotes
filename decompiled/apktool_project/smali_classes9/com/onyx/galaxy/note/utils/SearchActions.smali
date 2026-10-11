.class public final Lcom/onyx/galaxy/note/utils/SearchActions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/utils/SearchActions$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActions.kt\ncom/onyx/galaxy/note/utils/SearchActions\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,146:1\n637#2:147\n*S KotlinDebug\n*F\n+ 1 SearchActions.kt\ncom/onyx/galaxy/note/utils/SearchActions\n*L\n56#1:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J \u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\t2\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004J\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u0010\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/SearchActions;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "searchType",
        "",
        "getCorrespondingSearchTypes",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "searchTypes",
        "Lio/reactivex/rxjava3/core/Observable;",
        "activateSearchEngine",
        "Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;",
        "hwrSwitchButton",
        "",
        "statisticType",
        "",
        "toggleHwrSearch",
        "Landroid/content/Context;",
        "uiContext",
        "",
        "limitCount",
        "showExceedDeviceLimitDialog",
        "h",
        "i",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "recognizer",
        "d",
        "g",
        "<init>",
        "()V",
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
        "SMAP\nSearchActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActions.kt\ncom/onyx/galaxy/note/utils/SearchActions\n+ 2 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,146:1\n637#2:147\n*S KotlinDebug\n*F\n+ 1 SearchActions.kt\ncom/onyx/galaxy/note/utils/SearchActions\n*L\n56#1:147\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/SearchActions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/SearchActions;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/utils/SearchActions;->j(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$activateEngine(Lcom/onyx/galaxy/note/utils/SearchActions;Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/SearchActions;->d(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/utils/SearchActions;->e(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/utils/SearchActions;->f(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    return-void
.end method

.method public static final e(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 1

    const-string v0, "$hwrSwitchButton"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/utils/SearchActions;->i(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hwrBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->destroyAll()V

    return-void
.end method

.method public static final j(Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "$statisticType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/SearchActions;->g(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final activateSearchEngine(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "editorBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "searchTypes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->HANDWRITING:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string p2, "hwr_search"

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V
    .locals 7

    sget-object p0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->ink_activating_beautify_sdk:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    invoke-direct {v2, v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v2, Lcom/sunia/HTREnginev2/i6m;

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/i6m;-><init>(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    invoke-virtual {p2, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/j6m;

    invoke-direct {p2, p0, v0}, Lcom/sunia/HTREnginev2/j6m;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doFinally(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    new-instance v1, Lcom/onyx/galaxy/note/utils/SearchActions$activateProVip$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/utils/SearchActions$activateProVip$1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getCorrespondingSearchTypes(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "searchType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/SearchActions$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->TEXT:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->HANDWRITING:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    filled-new-array {p0, p1}, [Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    filled-new-array {p1}, [Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    sget-object p1, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isAiSearchEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->HANDWRITING:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method public final h(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "hwr_search"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getExceedDeviceLimit()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getDeviceLimitCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/utils/SearchActions;->showExceedDeviceLimitDialog(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isRecognizerActivated(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/SearchActions;->i(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    new-instance v3, Lcom/onyx/galaxy/note/utils/SearchActions$checkAndEnableHwrSearch$1;

    invoke-direct {v3, p1, v0}, Lcom/onyx/galaxy/note/utils/SearchActions$checkAndEnableHwrSearch$1;-><init>(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 3

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;->setChecked(Z)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserHwrSearchEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserAiSearchConfirmedOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->search_hwr_opened:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final showExceedDeviceLimitDialog(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "uiContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithWarningConfirmTitleStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->ink_exceed_device_limit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFormatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageText(Ljava/lang/String;)V

    sget p1, Lcom/onyx/galaxy/note/R$string;->cancel:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setLeftButtonTitleRes(I)V

    sget p1, Lcom/onyx/galaxy/note/R$string;->confirm:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method

.method public final toggleHwrSearch(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hwrSwitchButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statisticType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserHwrSearchEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isAiSearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;->setChecked(Z)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVipRole()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/SearchActions;->h(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    new-instance p0, Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/account/action/CheckLoginStateAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/k6m;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/k6m;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
