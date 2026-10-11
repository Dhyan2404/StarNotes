.class public final Lcom/onyx/galaxy/note/NoteApp;
.super Lcom/onyx/galaxy/note/Hilt_NoteApp;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/NoteApp$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0004\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/NoteApp;",
        "Landroid/app/Application;",
        "",
        "onCreate",
        "initSdkWithAgreement",
        "onTerminate",
        "i",
        "h",
        "m",
        "n",
        "f",
        "p",
        "k",
        "c",
        "b",
        "g",
        "j",
        "e",
        "l",
        "o",
        "Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;",
        "Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;",
        "themeChangeReceiver",
        "Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;",
        "Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;",
        "appStatusChangeListener",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/NoteApp$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static i:Lcom/onyx/galaxy/note/NoteApp;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field public g:Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/NoteApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/NoteApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/NoteApp;->Companion:Lcom/onyx/galaxy/note/NoteApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/NoteApp;Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/NoteApp;->d(Lcom/onyx/galaxy/note/NoteApp;Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onyx/galaxy/note/NoteApp;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/NoteApp;->i:Lcom/onyx/galaxy/note/NoteApp;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/onyx/galaxy/note/NoteApp;)V
    .locals 0

    sput-object p0, Lcom/onyx/galaxy/note/NoteApp;->i:Lcom/onyx/galaxy/note/NoteApp;

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/NoteApp;Lcom/onyx/android/sdk/data/account/AccountDataBundle;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object p0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->Companion:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;->debounceFetch()V

    return-void
.end method

.method public final c()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadOnyxAccountObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/NoteApp$initAccount$1;->INSTANCE:Lcom/onyx/galaxy/note/NoteApp$initAccount$1;

    new-instance v3, Lcom/sunia/HTREnginev2/kuj;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/kuj;-><init>(Lcom/onyx/galaxy/note/NoteApp;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->loadRecentLoginAccountList()V

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/lifecycler/AppActivityLifecycleDispatcher;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/utils/lifecycler/AppActivityLifecycleDispatcher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v2, "key_is_system_theme_night"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    new-instance v0, Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/NoteApp;->g:Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/NoteApp;->h:Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->registerAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V

    return-void
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/InitCloudStorageAction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final h()V
    .locals 3

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-wide/16 v0, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/NoteApp$a;->e:Lcom/onyx/galaxy/note/NoteApp$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final i()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/action/InitGlobalConfigAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final initSdkWithAgreement()V
    .locals 6

    sget-object p0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->isUserAgreementPassed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p0, Lcom/onyx/galaxy/note/common/action/ThirdPartySdkInitAction;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/ThirdPartySdkInitAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    sget-object p0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->installDefaultResource()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->INSTANCE:Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/HwrSdkInitializer;->initialize()V

    return-void
.end method

.method public final k()V
    .locals 6

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;->isDebuggable()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/DebugAction;-><init>(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/common/callback/OrientationListener;->INSTANCE:Lcom/onyx/galaxy/note/common/callback/OrientationListener;

    invoke-virtual {p0, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final m()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->Companion:Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;->init(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;->setReportTimeMs(I)V

    return-void
.end method

.method public final n()V
    .locals 3

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$color;->color_split_screen_receiver_hint:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/config/EditorThemeConfig;->setSplitScreenReceiverHintColor(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->f()V

    sget-object p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/textbox/widget/TextBoxThemeUtils;

    sget-object v0, Lcom/onyx/galaxy/note/NoteApp$initTheme$1;->INSTANCE:Lcom/onyx/galaxy/note/NoteApp$initTheme$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxThemeUtils;->setTextBoxSwitchCallback(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;

    sget-object v0, Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteUniversalColorCallbackImpl;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils;->setUniversalColorCallback(Lcom/onyx/android/sdk/universal/theme/UniversalThemeUtils$UniversalColorCallback;)V

    return-void
.end method

.method public final o()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/receiver/SystemLanguageReceiver;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/receiver/SystemLanguageReceiver;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/receiver/SystemLanguageReceiver;->register(Landroid/content/Context;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/receiver/DebugBroadCastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Lcom/onyx/galaxy/note/Hilt_NoteApp;->onCreate()V

    sput-object p0, Lcom/onyx/galaxy/note/NoteApp;->i:Lcom/onyx/galaxy/note/NoteApp;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->m()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->INSTANCE:Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/debug/PerformanceWatcher;->beginAppCreate()V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->i()V

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->init()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->k()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Lcom/onyx/galaxy/note/NoteApp$b;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/NoteApp$b;-><init>(Lcom/onyx/android/sdk/base/utils/Debug;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/rxjava3/functions/Consumer;)V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->initCouchbase()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->c()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->g()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->j()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->n()V

    sget-object v0, Lcom/onyx/galaxy/note/common/crash/CrashHandler;->INSTANCE:Lcom/onyx/galaxy/note/common/crash/CrashHandler;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/crash/CrashHandler;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->e()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->l()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->initSdkWithAgreement()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/LanguageManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LanguageManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/LanguageManager;->applyAppLanguage(Landroid/content/Context;)V

    new-instance v1, Lcom/onyx/galaxy/note/common/action/LogLaunchAction;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/common/action/LogLaunchAction;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/NoteApp;->h()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/NoteApp;->g:Lcom/onyx/galaxy/note/receiver/ThemeChangeReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/NoteApp;->h:Lcom/onyx/galaxy/note/receiver/AppStatusChangeListener;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/blankj/utilcode/util/AppUtils;->unregisterAppStatusChangedListener(Lcom/blankj/utilcode/util/Utils$OnAppStatusChangedListener;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/action/NetworkChangeAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
