.class public final Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectionHwrViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionHwrViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n256#2,2:255\n288#3,2:257\n*S KotlinDebug\n*F\n+ 1 SelectionHwrViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel\n*L\n88#1:255,2\n214#1:257,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008G\u0010HJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013J\u0016\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u0016J\u0006\u0010\u001e\u001a\u00020\u001dJ\u0006\u0010\u001f\u001a\u00020\u0016J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nJ\u0008\u0010!\u001a\u0004\u0018\u00010\nJ\u0006\u0010#\u001a\u00020\"J\u000e\u0010%\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010&\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\nR\u001d\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00100\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010(\u001a\u0004\u0008)\u0010*R0\u00101\u001a\u0010\u0012\u000c\u0012\n ,*\u0004\u0018\u00010$0$0\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010(\u001a\u0004\u0008.\u0010*\"\u0004\u0008/\u00100R\"\u00107\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u0010;\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00102\u001a\u0004\u00089\u00104\"\u0004\u0008:\u00106R(\u0010B\u001a\u0008\u0012\u0004\u0012\u00020\n0<8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u0014\u0010F\u001a\u00020C8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010E\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;",
        "smartHwrButton",
        "",
        "g",
        "k",
        "i",
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
        "m",
        "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
        "model",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "h",
        "init",
        "clear",
        "",
        "ev",
        "postEvent",
        "Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;",
        "binding",
        "updateSmartHwr",
        "",
        "statisticType",
        "toggleSmartHwr",
        "loadFromLocal",
        "fetchFromCloud",
        "lang",
        "selectLang",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getHwrRecognizer",
        "getHwrLang",
        "download",
        "selectPrimaryResource",
        "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;",
        "getHWRArgs",
        "",
        "isResourceDownloaded",
        "isResourceDownloading",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "event",
        "kotlin.jvm.PlatformType",
        "j",
        "getLoading",
        "setLoading",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "loading",
        "Ljava/lang/String;",
        "getSelectedLang",
        "()Ljava/lang/String;",
        "setSelectedLang",
        "(Ljava/lang/String;)V",
        "selectedLang",
        "l",
        "getSelectingLang",
        "setSelectingLang",
        "selectingLang",
        "",
        "Ljava/util/List;",
        "getHwrResourceModels",
        "()Ljava/util/List;",
        "setHwrResourceModels",
        "(Ljava/util/List;)V",
        "hwrResourceModels",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "n",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "disposables",
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
        "SMAP\nSelectionHwrViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectionHwrViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n256#2,2:255\n288#3,2:257\n*S KotlinDebug\n*F\n+ 1 SelectionHwrViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel\n*L\n88#1:255,2\n214#1:257,2\n*E\n"
    }
.end annotation


# instance fields
.field public final i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->m:Ljava/util/List;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$enableSmartHwr(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->j(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/HwrResourceDownloadFinishEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/HwrResourceDownloadFinishEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/HwrResourceFetchedEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/event/HwrResourceFetchedEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final n(Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "$statisticType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/utils/Navigator;->activateProVip(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->n:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final download(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/HwrResourceDownloadFailEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/HwrResourceDownloadFailEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->hwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->h(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;

    invoke-direct {v2, v0, v1}, Lcom/onyx/android/sdk/hwr/action/HWRResourceDownloadAction;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/action/HWRBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/lgm;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/lgm;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnComplete(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final fetchFromCloud()V
    .locals 9

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$integer;->sync_timeout:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v3

    new-instance v0, Lcom/onyx/android/sdk/base/data/TimeGuard;

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/base/data/TimeGuard;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v2, "hwr_smart"

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/FetchHwrResourceListAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/kgm;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/kgm;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V

    invoke-static {v1, v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lcom/onyx/android/sdk/base/data/TimeGuard;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 10

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "hwr_smart"

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

    move-result-object p0

    const-string p1, "getContext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getDeviceLimitCount()I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;->showExceedDeviceLimitDialog(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isRecognizerActivated(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->ink_activating_beautify_sdk:I

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    sget-object v3, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    new-instance v4, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;

    invoke-direct {v4, p1, v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$1;-><init>(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$2;

    invoke-direct {v6, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$checkAndEnableSmartHwr$2;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V

    return-void
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getHWRArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getHwrLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getHwrRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->shouldEnableSegmentFeature(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;-><init>()V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setLang(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->setSegmentation(Z)V

    return-object v2
.end method

.method public final getHwrLang()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v0, "hwr"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDefaultLangByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isSmartHwrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getLastHwrLangOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final getHwrRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isSmartHwrEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "hwr_smart"

    goto :goto_0

    :cond_0
    const-string p0, "hwr"

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    return-object p0
.end method

.method public final getHwrResourceModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->m:Ljava/util/List;

    return-object p0
.end method

.method public final getLoading()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSelectedLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectingLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getEngine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setEngineType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setMd5(Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;->setChecked(Z)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserSmartHwrEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->resetLastHwrLangOption()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getHwrLang()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l:Ljava/lang/String;

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/SmartHwrDisabledEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/event/SmartHwrDisabledEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final init()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getHwrLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->loadFromLocal()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->fetchFromCloud()V

    return-void
.end method

.method public final isResourceDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->m()Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->h(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;->isResourceDownloaded(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method

.method public final isResourceDownloading(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->m()Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->h(Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;->isResourceDownloading(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method

.method public final k(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;->setChecked(Z)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserSmartHwrEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/SmartHwrEnabledEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/event/SmartHwrEnabledEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final loadFromLocal()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "hwr_smart"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/LoadHwrResourceListAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/LoadHwrResourceListAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel$a;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final m()Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getHwrRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->getResourceCheckerFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;

    return-object p0
.end method

.method public final postEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l:Ljava/lang/String;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getLastHwrLangOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/event/HwrResourceSelectedEvent;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/event/HwrResourceSelectedEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectPrimaryResource()Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->getHwrLang()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->m:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    return-object v1
.end method

.method public final setHwrResourceModels(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->m:Ljava/util/List;

    return-void
.end method

.method public final setLoading(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setSelectedLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->k:Ljava/lang/String;

    return-void
.end method

.method public final setSelectingLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->l:Ljava/lang/String;

    return-void
.end method

.method public final toggleSmartHwr(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "smartHwrButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statisticType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isSmartHwrEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->i(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVipRole()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->g(Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;)V

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

    new-instance p1, Lcom/sunia/HTREnginev2/jgm;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/jgm;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final updateSmartHwr(Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "binding"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isSmartHwrEnabled()Z

    move-result p0

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;->smartHwrButton:Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/ui/view/TextSwitchButton;->setChecked(Z)V

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogConvertToTextBinding;->langSelectLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v0, "langSelectLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
