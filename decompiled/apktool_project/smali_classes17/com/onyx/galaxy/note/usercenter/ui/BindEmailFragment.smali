.class public final Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBindEmailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindEmailFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindEmailFragment\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,183:1\n214#2:184\n214#2:185\n*S KotlinDebug\n*F\n+ 1 BindEmailFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindEmailFragment\n*L\n137#1:184\n157#1:185\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0002J\u0008\u0010\u0018\u001a\u00020\u0004H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;",
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
        "Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;",
        "event",
        "onVerifyCodeWaitTimeUpdate",
        "x0",
        "p0",
        "w0",
        "q0",
        "v0",
        "A0",
        "z0",
        "y0",
        "Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;",
        "e1",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;",
        "verifyCodeViewModel",
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
        "SMAP\nBindEmailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindEmailFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindEmailFragment\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,183:1\n214#2:184\n214#2:185\n*S KotlinDebug\n*F\n+ 1 BindEmailFragment.kt\ncom/onyx/galaxy/note/usercenter/ui/BindEmailFragment\n*L\n137#1:184\n157#1:185\n*E\n"
    }
.end annotation


# instance fields
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

.field public final e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    return-object p0
.end method

.method public static final synthetic access$getVerifyCodeViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-object p0
.end method

.method public static final synthetic access$onFragmentTaskCompleted(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->z0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->u0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->s0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->t0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->r0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final r0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static final t0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->isRebindMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->A0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->v0()V

    :goto_0
    return-void
.end method

.method public static final u0(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->sendVerifyCodeWithSubscribe(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;-><init>()V

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;->setAccountType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getOldSocialAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;->setOldAccount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getOldVerifyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;->setOldVerifiedCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;->setNewAccount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;->setNewVerifiedCode(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/AreaCodeUtil;->getPrefixedAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;->setNewAreaCode(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$b;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$rebindSocialAccount$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$rebindSocialAccount$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnError(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff9a

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->setVerifyCodeViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez p0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    const-class v1, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSimpleName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->release(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public final onVerifyCodeWaitTimeUpdate(Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeWaitTime()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;->getLeftTime()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->w0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->q0()V

    return-void
.end method

.method public final p0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$addFragmentEvents$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$addFragmentEvents$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final q0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->emailEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/xq;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xq;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->skipButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/yq;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/yq;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/zq;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/zq;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/ar;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ar;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final v0()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;-><init>()V

    const-string v1, "email"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;->setBoundAccountType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;->setVerifiedAccount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;->setCode(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/BindPhoneOrEmailAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/data/account/action/BindPhoneOrEmailAction;-><init>(Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$a;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$bindSocialAccount$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment$bindSocialAccount$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doOnError(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final w0()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getPurpose()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bind_email_after_login"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez v0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez p0, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_0
    iget-object p0, v4, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->skipButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_2

    :cond_2
    const-string v1, "bind_email_before_verify"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;

    if-nez p0, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, p0

    :goto_1
    iget-object p0, v4, Lcom/onyx/galaxy/note/databinding/FragmentBindEmailBinding;->skipButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final x0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;->fromBundle(Landroid/os/Bundle;)Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;

    move-result-object v0

    const-string v1, "fromBundle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;->getPurpose()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPurpose(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setPurpose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setVerifyType(I)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;->getOldSocialAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getOldSocialAccount(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setOldSocialAccount(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentArgs;->getOldVerifyCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getOldVerifyCode(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setOldVerifyCode(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const-class v0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setVerifyCodeTag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final y0()V
    .locals 2

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-static {}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragmentDirections;->bindEmailToAccountCenter()Landroidx/navigation/NavDirections;

    move-result-object v0

    const-string v1, "bindEmailToAccountCenter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method

.method public final z0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getPurpose()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bind_email_before_verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v1, "rebind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/BindEmailFragment;->y0()V

    goto :goto_0

    :sswitch_3
    const-string v1, "bind_email_after_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5bdc045f -> :sswitch_3
        -0x37ba1f10 -> :sswitch_2
        0x2e243d -> :sswitch_1
        0x43b176d4 -> :sswitch_0
    .end sparse-switch
.end method
