.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;
.super Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 T2\u00020\u00012\u00020\u0002:\u0001TB\u0007\u00a2\u0006\u0004\u0008R\u0010SJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u001a\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0014J\u0008\u0010\u0010\u001a\u00020\u000eH\u0014J\u0008\u0010\u0011\u001a\u00020\u000eH\u0014J\u0008\u0010\u0012\u001a\u00020\u000eH\u0014J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0017H\u0007J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0012\u0010\u001f\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u001cH\u0016J\"\u0010$\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u00032\u0008\u0010#\u001a\u0004\u0018\u00010\"H\u0014J\u0008\u0010%\u001a\u00020\u000eH\u0002J\u0008\u0010&\u001a\u00020\u000eH\u0002J\u0008\u0010\'\u001a\u00020\u000eH\u0002R\u001b\u0010-\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010:\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00107R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\'\u0010H\u001a\u0015\u0012\u000c\u0012\n D*\u0004\u0018\u00010\t0\t0C\u00a2\u0006\u0002\u0008E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010*\u001a\u0004\u0008K\u0010LR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008O\u0010P\u00a8\u0006U"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;",
        "Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;",
        "",
        "getNavigationResId",
        "Landroid/os/Bundle;",
        "getStartDestinationArgs",
        "Landroid/view/KeyEvent;",
        "event",
        "",
        "dispatchKeyEvent",
        "keyCode",
        "onKeyDown",
        "savedInstanceState",
        "",
        "onCreate",
        "onResume",
        "onPause",
        "onDestroy",
        "Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;",
        "onEditFocusEvent",
        "Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;",
        "onSideBarAreaEvent",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "onSystemThemeChangedEvent",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Landroid/view/MotionEvent;",
        "ev",
        "dispatchTouchEvent",
        "onGenericMotionEvent",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "H",
        "K",
        "G",
        "Lcom/onyx/android/sdk/device/IDevice;",
        "w0",
        "Lkotlin/Lazy;",
        "I",
        "()Lcom/onyx/android/sdk/device/IDevice;",
        "deviceOpt",
        "x0",
        "Z",
        "isStylusPressed",
        "Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;",
        "y0",
        "Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;",
        "stylusPenHelper",
        "Landroid/graphics/Rect;",
        "z0",
        "Landroid/graphics/Rect;",
        "editAreaRect",
        "A0",
        "sideBarAreaRect",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "B0",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "type",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "C0",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "D0",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "backButtonClickSource",
        "Landroidx/activity/OnBackPressedCallback;",
        "E0",
        "J",
        "()Landroidx/activity/OnBackPressedCallback;",
        "mBackPressedCallback",
        "Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;",
        "F0",
        "Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;",
        "screenBroadcastReceiver",
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
.field public static final Companion:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A0:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B0:Lcom/onyx/galaxy/note/editor/data/SlideBarType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final C0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D0:Lio/reactivex/rxjava3/subjects/PublishSubject;
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

.field public final E0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F0:Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x0:Z

.field public final y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z0:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$deviceOpt$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$deviceOpt$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->w0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->I()Lcom/onyx/android/sdk/device/IDevice;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$stylusPenHelper$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$stylusPenHelper$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;-><init>(Landroid/app/Activity;Lorg/greenrobot/eventbus/EventBus;Lcom/onyx/android/sdk/device/IDevice;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->C0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->D0:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$mBackPressedCallback$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$mBackPressedCallback$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->E0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->F0:Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;

    return-void
.end method

.method public static synthetic F(ILcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->L(ILcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V

    return-void
.end method

.method public static final L(ILcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V
    .locals 2

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerEvent;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;->getDocumentList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerEvent;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBackButtonClickSource$p(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->D0:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->C0:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$isStylusPressed$p(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->x0:Z

    return p0
.end method


# virtual methods
.method public final G()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->B0:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->A0:Landroid/graphics/Rect;

    return-void
.end method

.method public final H()V
    .locals 1

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/action/FetchScaleCollectionQuotasAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final I()Lcom/onyx/android/sdk/device/IDevice;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->w0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/device/IDevice;

    return-object p0
.end method

.method public final J()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->E0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->J()Landroidx/activity/OnBackPressedCallback;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$initBackDebounce$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$initBackDebounce$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->handleStylusEvent(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    sget-object v1, Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;->INSTANCE:Lcom/onyx/android/sdk/universal/common/events/OutsideTouchedEvent;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isUpAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isCancelAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityUpOrCancelEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ActivityUpOrCancelEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->I()Lcom/onyx/android/sdk/device/IDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/device/IDevice;->isPressed(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->x0:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->releaseTouchStatus()V

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->z0:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->touchDownOutside(Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->z0:Landroid/graphics/Rect;

    return v2

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->A0:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/RectKt;->touchDownOutside(Landroid/graphics/Rect;Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->B0:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    if-eqz v0, :cond_7

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/event/CloseSideBarEvent;-><init>(Lcom/onyx/galaxy/note/editor/data/SlideBarType;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->G()V

    return v2

    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getNavigationResId()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/R$navigation;->scribble_navigation:I

    return p0
.end method

.method public getStartDestinationArgs()Landroid/os/Bundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p0, 0x7d9

    if-ne p1, p0, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-direct {p0, p3}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;-><init>(Landroid/content/Intent;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/sunia/HTREnginev2/e1k;

    invoke-direct {p3, p1, p0}, Lcom/sunia/HTREnginev2/e1k;-><init>(ILcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnComplete(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffb2

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->unRegisterStylusEngine()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->unRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->F0:Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/receiver/ScreenBroadcastReceiver;->unRegisterScreenActionReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final onEditFocusEvent(Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;->getEditRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->z0:Landroid/graphics/Rect;

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 p0, 0x9

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p1

    and-int/lit16 p1, p1, 0x1000

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScaleEvent;-><init>(F)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/FunctionMouseScrollEvent;-><init>(F)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    :goto_1
    return v0

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onPause()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->unRegisterStylusReceiver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;->onResume()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->y0:Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/QuicklyFunctionHelper;->registerStylusReceiver()V

    return-void
.end method

.method public final onSideBarAreaEvent(Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->getType()Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->B0:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SideBarAreaEvent;->getAreaRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->A0:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->G()V

    :goto_0
    return-void
.end method

.method public final onSystemThemeChangedEvent(Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshUI(Landroid/content/Context;)V

    return-void
.end method
