.class public final Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\"\u001a\u00020\u001b\u0012\u0006\u0010(\u001a\u00020#\u00a2\u0006\u0004\u0008:\u0010;J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0006\u0010\u0008\u001a\u00020\u0006J\"\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u000fH\u0007J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010\u0014\u001a\u00020\u0006H\u0003J\u001c\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000cH\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u001a\u001a\u00020\u0006H\u0002R\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0017\u0010(\u001a\u00020#8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001b\u00103\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010+\u001a\u0004\u00081\u00102R\u0018\u00106\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u00105R\u0016\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u00107R\u0011\u00108\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u00088\u00109\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;",
        "Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onInterceptTouchEvent",
        "",
        "onOrientationChanged",
        "dismiss",
        "Landroid/graphics/Rect;",
        "limitRect",
        "isLeftSide",
        "Landroid/os/Bundle;",
        "bundle",
        "show",
        "Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;",
        "onEnableCounterSettingInputEvent",
        "",
        "page",
        "m",
        "h",
        "Landroidx/navigation/NavDestination;",
        "destination",
        "arguments",
        "o",
        "n",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "Landroid/view/View;",
        "b",
        "Landroid/view/View;",
        "getAnchorView",
        "()Landroid/view/View;",
        "anchorView",
        "Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;",
        "c",
        "Lkotlin/Lazy;",
        "f",
        "()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;",
        "binding",
        "Landroidx/navigation/fragment/NavHostFragment;",
        "d",
        "g",
        "()Landroidx/navigation/fragment/NavHostFragment;",
        "navHostFragment",
        "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;",
        "Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;",
        "window",
        "Z",
        "isShowing",
        "()Z",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V",
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
.field public a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->b:Landroid/view/View;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$navHostFragment$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$navHostFragment$2;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->d:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->h()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->i(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/navigation/NavController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->j(Landroidx/navigation/NavController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->l(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Landroidx/navigation/NavController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->k(Landroidx/navigation/NavController;Landroid/view/View;)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->dismiss()V

    return-void
.end method

.method public static final j(Landroidx/navigation/NavController;Landroid/view/View;)V
    .locals 0

    const-string p1, "$navController"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method public static final k(Landroidx/navigation/NavController;Landroid/view/View;)V
    .locals 2

    const-string p1, "$navController"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/onyx/galaxy/note/R$id;->fragment_alarm_setting:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/extension/FragmentKt;->navigateWithAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->g()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    sget v1, Lcom/onyx/galaxy/note/R$id;->fragment_counter_setting_home:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->back:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    xor-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->ivAlarmSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->o(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->n(Landroidx/navigation/NavDestination;)V

    return-void
.end method

.method public static synthetic show$default(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->show(Landroid/graphics/Rect;ZLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public afterDrag()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->afterDrag(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public beforeDrag()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->beforeDrag(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->g()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->g()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->navTimerHostFragmentMain:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->g()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->fragment_counter_setting_home:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->dismiss()V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/action/counter/EnsureCounterDataAction;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->c:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    return-object p0
.end method

.method public final g()Landroidx/navigation/fragment/NavHostFragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    return-object p0
.end method

.method public final getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->b:Landroid/view/View;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final h()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/yee;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yee;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->g()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->back:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v2, Lcom/sunia/HTREnginev2/zee;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/zee;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->ivAlarmSetting:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v2, Lcom/sunia/HTREnginev2/afe;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/afe;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sunia/HTREnginev2/bfe;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bfe;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e()V

    return-void
.end method

.method public final isShowing()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->isShowing()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final m(ILandroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->g()Landroidx/navigation/fragment/NavHostFragment;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$navigation;->timer_setting_graph:I

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->setGraph(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/onyx/galaxy/note/R$navigation;->timer_setting_graph:I

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->setGraph(I)V

    :goto_0
    return-void
.end method

.method public final n(Landroidx/navigation/NavDestination;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_edit_counter_setting:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->rlNavigationBar:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->dividerNavigation:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final o(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_count_down_history:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    sget p1, Lcom/onyx/galaxy/note/R$string;->count_down_history_record:I

    goto :goto_7

    :cond_2
    :goto_1
    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_count_up_history:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    sget p1, Lcom/onyx/galaxy/note/R$string;->count_up_history_record:I

    goto :goto_7

    :cond_4
    :goto_2
    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_my_count_down_task:I

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6

    sget p1, Lcom/onyx/galaxy/note/R$string;->counter_my_count_down_task:I

    goto :goto_7

    :cond_6
    :goto_3
    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_alarm_setting:I

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_8

    sget p1, Lcom/onyx/galaxy/note/R$string;->counter_alarm_setting:I

    goto :goto_7

    :cond_8
    :goto_4
    sget v0, Lcom/onyx/galaxy/note/R$id;->fragment_edit_counter_setting:I

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    sget p1, Lcom/onyx/galaxy/note/R$string;->counter_edit_task:I

    goto :goto_7

    :cond_b
    :goto_5
    sget p1, Lcom/onyx/galaxy/note/R$string;->counter_add_task:I

    goto :goto_7

    :cond_c
    :goto_6
    sget p1, Lcom/onyx/galaxy/note/R$string;->shortcut_bar_timer:I

    :goto_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f()Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupCounterSettingBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onConfigurationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public final onEnableCounterSettingInputEvent(Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/EnableCounterSettingInputEvent;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setSoftInputMode(I)Lcom/hjq/window/EasyWindow;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setSoftInputMode(I)Lcom/hjq/window/EasyWindow;

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hjq/window/EasyWindow;->setOutsideTouchable(Z)Lcom/hjq/window/EasyWindow;

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->update()V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOrientationChanged()V
    .locals 7

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onOrientationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->dismiss()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getLimitRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f:Z

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->show$default(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onWindowDismiss()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onWindowDismiss(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public onWindowLocationChanged()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onWindowLocationChanged(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    return-void
.end method

.method public onWindowShow()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate$DefaultImpls;->onWindowShow(Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final show(Landroid/graphics/Rect;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "limitRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->f:Z

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->activity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;-><init>(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/view/window/IMovingDelegate;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$show$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow$show$1;-><init>(Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->setupWindow(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->updateLimitRect(Landroid/graphics/Rect;)V

    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x800003

    goto :goto_0

    :cond_1
    const v0, 0x800005

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    :goto_1
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->e:Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/window/DraggableWindow;->getWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->b:Landroid/view/View;

    invoke-virtual {p2, v2, v0, p1, v1}, Lcom/hjq/window/EasyWindow;->showAsDropDown(Landroid/view/View;III)V

    :cond_3
    sget-object p1, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p1, p3}, Lcom/onyx/galaxy/note/utils/CounterUtils;->parseTargetPage(Landroid/os/Bundle;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->m(ILandroid/os/Bundle;)V

    return-void
.end method
