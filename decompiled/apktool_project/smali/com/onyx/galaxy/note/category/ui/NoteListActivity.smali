.class public final Lcom/onyx/galaxy/note/category/ui/NoteListActivity;
.super Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/action/theme/IThemeRecreate;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/NoteListActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u0080\u00012\u00020\u00012\u00020\u0002:\u0002\u0080\u0001B\u0007\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0002J\u0008\u0010\u000e\u001a\u00020\u0003H\u0002J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0013\u001a\u00020\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0003H\u0002J\u0008\u0010\u0019\u001a\u00020\u0003H\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002J\u0008\u0010\u001b\u001a\u00020\u0003H\u0002J\u0008\u0010\u001c\u001a\u00020\u0003H\u0002J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0012\u0010\u001e\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0008\u0010\u001f\u001a\u00020\u0003H\u0014J\u0008\u0010 \u001a\u00020\u0003H\u0016J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000fH\u0015J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010$\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020%H\u0007J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\'H\u0007J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020)H\u0007J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020+H\u0007J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020-H\u0007J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020/H\u0007J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\n\u001a\u000201H\u0007J\u0010\u00104\u001a\u00020\u00032\u0006\u0010\n\u001a\u000203H\u0007J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\n\u001a\u000205H\u0007J\u0010\u00108\u001a\u00020\u00032\u0006\u0010\n\u001a\u000207H\u0007J\u0008\u00109\u001a\u00020\u0003H\u0016R\u001b\u0010?\u001a\u00020:8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001b\u0010D\u001a\u00020@8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008A\u0010<\u001a\u0004\u0008B\u0010CR\u001b\u0010I\u001a\u00020E8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008F\u0010<\u001a\u0004\u0008G\u0010HR\u001b\u0010N\u001a\u00020J8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008K\u0010<\u001a\u0004\u0008L\u0010MR\u001b\u0010S\u001a\u00020O8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u0010<\u001a\u0004\u0008Q\u0010RR\u0014\u0010W\u001a\u00020T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010VR\u0014\u0010Y\u001a\u00020T8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008X\u0010VR\'\u0010`\u001a\u0015\u0012\u000c\u0012\n \\*\u0004\u0018\u00010[0[0Z\u00a2\u0006\u0002\u0008]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u001b\u0010e\u001a\u00020a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010<\u001a\u0004\u0008c\u0010dR\u001a\u0010j\u001a\u0008\u0012\u0004\u0012\u00020g0f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010r\u001a\u00020o8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\"\u0010t\u001a\u00020s8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR\u001c\u0010}\u001a\u0008\u0012\u0004\u0012\u00020\u000f0z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;",
        "Lcom/onyx/galaxy/note/editor/action/theme/IThemeRecreate;",
        "",
        "i0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "K",
        "Z",
        "",
        "event",
        "S",
        "X",
        "Y",
        "W",
        "Landroid/content/Intent;",
        "intent",
        "d0",
        "T",
        "b0",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "j0",
        "V",
        "h0",
        "J",
        "L",
        "e0",
        "f0",
        "g0",
        "onCreate",
        "onDestroy",
        "recreate",
        "onNewIntent",
        "onConfigurationChanged",
        "Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;",
        "onAccountExpired",
        "Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;",
        "onCloudStorageRefreshTokenFailedEvent",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "onNetworkChanged",
        "Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;",
        "onAccountConfigurationChange",
        "Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;",
        "onAccountChange",
        "Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;",
        "onVipRoleChange",
        "Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;",
        "onMessageReload",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertCancelEvent;",
        "onDocConvertCancelEvent",
        "Lcom/onyx/android/sdk/data/account/event/PurchaseUpdateEvent;",
        "onPurchaseUpdateEvent",
        "Lcom/onyx/galaxy/note/category/event/ShowJoinVipDialogEvent;",
        "onShowJoinVipDialogEvent",
        "Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;",
        "onMemberChargeEvent",
        "themeRecreate",
        "Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;",
        "A0",
        "Lkotlin/Lazy;",
        "M",
        "()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "B0",
        "R",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "C0",
        "P",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "noteQuotaViewModel",
        "Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;",
        "D0",
        "O",
        "()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;",
        "messageViewModel",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "E0",
        "Q",
        "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "notificationViewModel",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "F0",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "G0",
        "userLevelDisposables",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "H0",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "backButtonClickSource",
        "Landroidx/activity/OnBackPressedCallback;",
        "I0",
        "N",
        "()Landroidx/activity/OnBackPressedCallback;",
        "mBackPressedCallback",
        "Landroidx/core/util/Consumer;",
        "Landroidx/core/app/MultiWindowModeChangedInfo;",
        "J0",
        "Landroidx/core/util/Consumer;",
        "multiWindowModeChangedConsumer",
        "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
        "K0",
        "Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;",
        "parseIntentAction",
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "L0",
        "Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;",
        "progressEventHandler",
        "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
        "appUpdateDetect",
        "Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
        "getAppUpdateDetect",
        "()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;",
        "setAppUpdateDetect",
        "(Lcom/onyx/galaxy/note/update/IAppUpdateDetect;)V",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "M0",
        "Lcom/onyx/android/sdk/base/rx/RxFilter;",
        "parseIntentFilter",
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
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/NoteListActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final N0:F = 0.6f

.field public static final O0:F = 1.5f


# instance fields
.field public final A0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final H0:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J0:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public L0:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

.field public M0:Lcom/onyx/android/sdk/base/rx/RxFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/rx/RxFilter<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public appUpdateDetect:Lcom/onyx/galaxy/note/update/IAppUpdateDetect;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->A0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->B0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$noteQuotaViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$noteQuotaViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->C0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$messageViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$messageViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->D0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$notificationViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$notificationViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->E0:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->F0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->G0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->H0:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$mBackPressedCallback$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$mBackPressedCallback$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->I0:Lkotlin/Lazy;

    new-instance v0, Lcom/sunia/HTREnginev2/iwj;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/iwj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->J0:Landroidx/core/util/Consumer;

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M0:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-void
.end method

.method public static synthetic G(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Landroidx/core/app/MultiWindowModeChangedInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->c0(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Landroidx/core/app/MultiWindowModeChangedInfo;)V

    return-void
.end method

.method public static synthetic H(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->U(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    return-void
.end method

.method public static synthetic I(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->a0(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final U(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public static final a0(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const-string v0, "drawerLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/base/extension/DrawerLayoutKt;->openOrClose(Landroidx/drawerlayout/widget/DrawerLayout;ZZ)V

    return-void
.end method

.method public static final synthetic access$getBackButtonClickSource$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->H0:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->F0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getMultiWindowModeChangedConsumer$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Landroidx/core/util/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->J0:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public static final synthetic access$getNoteQuotaViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParseIntentFilter$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/android/sdk/base/rx/RxFilter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M0:Lcom/onyx/android/sdk/base/rx/RxFilter;

    return-object p0
.end method

.method public static final synthetic access$getProgressEventHandler$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->L0:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleNoteQuotaViewModelEvent(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->S(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$handleParseIntent(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->T(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$initNavigate(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Y()V

    return-void
.end method

.method public static final synthetic access$setProgressEventHandler$p(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->L0:Lcom/onyx/galaxy/note/editor/handler/ProgressEventHandler;

    return-void
.end method

.method public static final c0(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Landroidx/core/app/MultiWindowModeChangedInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSideExpand()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/core/app/MultiWindowModeChangedInfo;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->checkIn()V

    return-void
.end method

.method public final K(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->getAppUpdateDetect()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/onyx/galaxy/note/update/IAppUpdateDetect;->checkUpdate(Landroid/app/Activity;)V

    return-void
.end method

.method public final L()V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction;->Companion:Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/FetchAccountConfigurationsAction$Companion;->debounceFetch()V

    return-void
.end method

.method public final M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->A0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    return-object p0
.end method

.method public final N()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->I0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public final O()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->D0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    return-object p0
.end method

.method public final P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->C0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    return-object p0
.end method

.method public final Q()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->E0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    return-object p0
.end method

.method public final R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->B0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final S(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "ShowLeftQuota"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "noteQuotaBinding"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->noteQuotaBinding:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->showLeftQuotaDialog(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V

    goto :goto_0

    :cond_0
    const-string v0, "QuotaChanged"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->noteQuotaBinding:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->updateLeftQuotaDialog(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final T(Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->isDisposed()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->validIntent(Landroid/content/Intent;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->setIntent(Landroid/content/Intent;)V

    :goto_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;->setDefaultSelection(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Lcom/sunia/HTREnginev2/kwj;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/kwj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_5
    return-void
.end method

.method public final V()V
    .locals 8

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getBackgroundFtsIndexEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->G0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;-><init>()V

    sget-object v1, Lcom/onyx/galaxy/note/utils/SearchActions;->INSTANCE:Lcom/onyx/galaxy/note/utils/SearchActions;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/utils/SearchActions;->getCorrespondingSearchTypes(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->setSearchTypes(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getFtsIndexArgs()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;->setUnloadPage(Z)V

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->setBackgroundSearch(Z)V

    new-instance v1, Lcom/onyx/galaxy/note/category/data/SearchScope;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/SearchScope;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v3, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/action/SearchNoteByScopeAction;-><init>(Lcom/onyx/galaxy/note/category/data/SearchScope;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$a;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$a;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$b;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$b;-><init>(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string v0, "flatMap(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->G0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final W()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final X()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->N()Landroidx/activity/OnBackPressedCallback;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initBackDebounce$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final Y()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$id;->container_right:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$navigation;->note_container:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->fragment_search_note:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/onyx/galaxy/note/R$id;->fragment_note_list_container:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;)V

    return-void
.end method

.method public final Z()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;

    invoke-direct {v1, p0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->slideLayout:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->toggleSlideWithoutAnimation(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowDrawerMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerMenu:Landroidx/fragment/app/FragmentContainerView;

    new-instance v2, Lcom/sunia/HTREnginev2/jwj;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/jwj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowDrawerMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$5;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$5;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$6;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$6;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNoteUsageInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$7;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$8;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initObserver$8;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final b0()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$drawerListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$drawerListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$initSlideMenuLayout$slideLayoutListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->slideLayout:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->setSlideListener(Lcom/onyx/galaxy/note/category/view/SlideLayout$SlideLayoutListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "getConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->j0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final d0(Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/lifecycle/LiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getTagRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$parseIntent$1;

    invoke-direct {v2, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$parseIntent$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;Landroid/content/Intent;)V

    invoke-static {v0, p0, v1, v2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnceAll(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LifecycleOwner;[Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final e0()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;

    const-string v1, "account_configurations"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->invalidateSyncState(Ljava/lang/String;)V

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/SyncStateOptions;->invalidateSyncState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->O()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;->load()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Q()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->load()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->noteQuotaBinding:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    const-string v1, "noteQuotaBinding"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->checkLeftNoteQuota(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;)V

    return-void
.end method

.method public final f0()V
    .locals 3

    invoke-static {}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getTheme()Lcom/onyx/android/sdk/theme/utils/SkinType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->isFree()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/theme/utils/SkinType;->AUTO_SYSTEM:Lcom/onyx/android/sdk/theme/utils/SkinType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/theme/utils/SkinType;->getThemeType()I

    move-result p0

    sget-object v0, Lcom/onyx/galaxy/note/utils/ThemeExt;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThemeExt;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, v2}, Lcom/onyx/galaxy/note/utils/ThemeExt;->resetTheme$default(Lcom/onyx/galaxy/note/utils/ThemeExt;ILandroid/view/View;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->onProfileSignIn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->getStatisticsManager()Lcom/onyx/android/sdk/statistics/StatisticsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/statistics/StatisticsManager;->onProfileSignOff()V

    :goto_0
    return-void
.end method

.method public final getAppUpdateDetect()Lcom/onyx/galaxy/note/update/IAppUpdateDetect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->appUpdateDetect:Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appUpdateDetect"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h0()V
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "trigger_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isSideExpand()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "homepage_state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "homepages_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "toLowerCase(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "homepage_sort"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    const-string v2, "view_galaxy_homepage_0001"

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final i0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M0:Lcom/onyx/android/sdk/base/rx/RxFilter;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->parse_intent_delay_time:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$d;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity$d;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/rx/RxFilter;->subscribeThrottleFirst(JLio/reactivex/rxjava3/functions/Consumer;)V

    return-void
.end method

.method public final j0(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$integer;->slide_layout_animate_dur:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 p1, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->slideLayout:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    float-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->setAnimationDuration(J)V

    return-void
.end method

.method public final onAccountChange(Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LoginAccountChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    sget-object v0, Lcom/onyx/galaxy/note/category/event/CleanExpiredNotificationsEvent;->INSTANCE:Lcom/onyx/galaxy/note/category/event/CleanExpiredNotificationsEvent;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->setHasLeftQuotaTipped(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Q()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->setActivityRecreated(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Q()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->invalidate()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->checkIn()V

    sget-object p1, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->INSTANCE:Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/message/handler/NotificationDisplayHandler;->invalidate()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->L()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->g0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->f0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->V()V

    return-void
.end method

.method public final onAccountConfigurationChange(Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->e0()V

    return-void
.end method

.method public final onAccountExpired(Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/AccountExpiredHandler;->onAccountExpired(Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;)V

    return-void
.end method

.method public final onCloudStorageRefreshTokenFailedEvent(Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/event/CloudStorageRefreshTokenFailedEvent;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->onDriveTokenExpired(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_list_left_container_width:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getWindowDefaultWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isHalfInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->slideLayout:Lcom/onyx/galaxy/note/category/view/SlideLayout;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/view/SlideLayout;->setLeftWidth(I)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->j0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffda

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    sget-object v1, Lcom/onyx/galaxy/note/category/event/NotificationHostDestroyedEvent;->INSTANCE:Lcom/onyx/galaxy/note/category/event/NotificationHostDestroyedEvent;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->K0:Lcom/onyx/galaxy/note/category/action/import/ParseIntentAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->G0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M0:Lcom/onyx/android/sdk/base/rx/RxFilter;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxFilter;->dispose()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/category/ui/Hilt_NoteListActivity;->onDestroy()V

    return-void
.end method

.method public final onDocConvertCancelEvent(Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertCancelEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertCancelEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->R()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->cancelDocConvert()V

    return-void
.end method

.method public final onMemberChargeEvent(Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/MemberChargeEvent;->getTriggerFrom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->setFunctionFrom(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;

    invoke-direct {p1, v0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;-><init>(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onMessageReload(Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/ReloadMessageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->O()Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/message/viewmodel/MessageViewModel;->load()V

    return-void
.end method

.method public final onNetworkChanged(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
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
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->L()V

    sget-object p0, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->INSTANCE:Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/datarepository/download/DataRepositoryManager;->checkAndUpdateLocalResource()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->d0(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPurchaseUpdateEvent(Lcom/onyx/android/sdk/data/account/event/PurchaseUpdateEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/PurchaseUpdateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->L()V

    return-void
.end method

.method public final onShowJoinVipDialogEvent(Lcom/onyx/galaxy/note/category/event/ShowJoinVipDialogEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/ShowJoinVipDialogEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->P()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->M()Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ActivityNoteListBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p0

    const-string v0, "getRoot(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->showJoinVipDialog(Landroid/view/View;)V

    return-void
.end method

.method public final onVipRoleChange(Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/VipRoleChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->L()V

    return-void
.end method

.method public recreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->Q()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;->setActivityRecreated(Z)V

    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final setAppUpdateDetect(Lcom/onyx/galaxy/note/update/IAppUpdateDetect;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/update/IAppUpdateDetect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->appUpdateDetect:Lcom/onyx/galaxy/note/update/IAppUpdateDetect;

    return-void
.end method

.method public themeRecreate()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListActivity;->recreate()V

    return-void
.end method
