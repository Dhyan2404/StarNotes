.class public final Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008L\u0010MJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0013\u001a\u00020\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0007J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0008\u0010\u001c\u001a\u00020\u0004H\u0003J\u0012\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0002R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(R\u001b\u0010.\u001a\u00020*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010&\u001a\u0004\u0008,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010&\u001a\u0004\u00081\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010&\u001a\u0004\u00086\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010K\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010J\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "onDestroy",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onDestroyView",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "onStart",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "event",
        "onNetworkChange",
        "t0",
        "",
        "s0",
        "u0",
        "B0",
        "w0",
        "Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;",
        "menuType",
        "C0",
        "y0",
        "",
        "allowCloudSync",
        "x0",
        "Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "o0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;",
        "e1",
        "q0",
        "()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;",
        "settingViewModel",
        "Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;",
        "f1",
        "r0",
        "()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;",
        "settingsMenuAdapter",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "g1",
        "p0",
        "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "notificationViewModel",
        "Landroidx/navigation/NavController;",
        "h1",
        "Landroidx/navigation/NavController;",
        "rightNavController",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "i1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "viewScopeDisposables",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "j1",
        "Lcom/onyx/android/sdk/device/bean/WindowModeType;",
        "lastWindowModeType",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "k1",
        "Lcom/onyx/android/sdk/device/bean/MultiWindowType;",
        "lastMultiWindowModeType",
        "l1",
        "I",
        "recreateTimerKey",
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


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h1:Landroidx/navigation/NavController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j1:Lcom/onyx/android/sdk/device/bean/WindowModeType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k1:Lcom/onyx/android/sdk/device/bean/MultiWindowType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$settingViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$settingViewModel$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$settingsMenuAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$settingsMenuAdapter$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$notificationViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$notificationViewModel$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->g1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragmentDirections;->gotoSettingsHelpAndFeedbackFragment()Landroidx/navigation/NavDirections;

    move-result-object p1

    const-string v0, "gotoSettingsHelpAndFeedbackFragment(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNotificationViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->p0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSettingViewModel(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSettingsMenuAdapter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->r0()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSettingsAdapter(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->x0(Z)V

    return-void
.end method

.method public static final synthetic access$updateRightView(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->C0(Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->A0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->z0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->v0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final v0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final B0()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->p0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->getNotifications()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$a;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$initViewModel$disposable$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$initViewModel$disposable$2;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->p0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->load()V

    return-void
.end method

.method public final C0(Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->h1:Landroidx/navigation/NavController;

    if-eqz v0, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->settings_fragment_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->h1:Landroidx/navigation/NavController;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->getNavigationAction()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    :cond_1
    return-void
.end method

.method public final o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getWindowModeType()Lcom/onyx/android/sdk/device/bean/WindowModeType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/device/DeviceFactory;->getCurrentDevice()Lcom/onyx/android/sdk/device/CommonBaseDevice;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/onyx/android/sdk/device/CommonBaseDevice;->getMultiWindowType(Landroid/app/Activity;Lcom/onyx/android/sdk/device/bean/WindowModeType;)Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->j1:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->k1:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    if-eq p1, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v2, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->l1:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$onConfigurationChanged$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$onConfigurationChanged$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    move-result v1

    iput v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->l1:I

    :cond_1
    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->j1:Lcom/onyx/android/sdk/device/bean/WindowModeType;

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->k1:Lcom/onyx/android/sdk/device/bean/MultiWindowType;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffa4

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->t0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    iget v1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->l1:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onNetworkChange(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->checkCloudSyncCondition()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onStart()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;->settingsRight:Landroidx/fragment/app/FragmentContainerView;

    const-string v1, "settingsRight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->h1:Landroidx/navigation/NavController;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->i1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->y0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->w0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->u0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->B0()V

    return-void
.end method

.method public final p0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->g1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    return-object p0
.end method

.method public final q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    return-object p0
.end method

.method public final r0()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;

    return-object p0
.end method

.method public final s0()I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const-string v1, "menuName"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final t0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->s0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->STYLUS:Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->CLOUD_BACKUP:Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->DOC:Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final u0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;->ivSettingBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/cjm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cjm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final w0()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$initObserve$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$initObserve$1;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$b;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final x0(Z)V
    .locals 2

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->values()[Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->CLOUD_SYNC:Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isAiLabEnable()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;->AI_LAB:Lcom/onyx/galaxy/note/settings/data/SettingsMenuType;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->r0()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->s0()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getSelectMenuType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final y0()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;->clSettingMenuList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;->clSettingMenuList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->r0()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->r0()Lcom/onyx/galaxy/note/settings/ui/adapter/SettingsMenuAdapter;

    move-result-object v2

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/djm;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/djm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->o0()Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSettingsBinding;->flHelpAndFeedback:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/ejm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ejm;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->checkCloudSyncCondition()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;->q0()Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/viewmodel/SettingsViewModel;->getAllowCloudSync()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$initView$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$initView$3;-><init>(Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment;)V

    new-instance p0, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$b;

    invoke-direct {p0, v2}, Lcom/onyx/galaxy/note/settings/ui/fragment/SettingsFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
