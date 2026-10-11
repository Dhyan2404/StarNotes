.class public final Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;",
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
        "u0",
        "o0",
        "p0",
        "v0",
        "Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "e1",
        "Lkotlin/Lazy;",
        "t0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "accountViewModel",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;",
        "f1",
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


# instance fields
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$accountViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$accountViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    return-object p0
.end method

.method public static final synthetic access$getVerifyCodeViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-object p0
.end method

.method public static final synthetic access$onAccountDestroyed(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->v0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->s0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->r0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->q0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V
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

.method public static final r0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->logoffWithPhoneEmail()V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->sendVerifyCodeWithSubscribe(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final o0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeCheckResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$addFragmentEvents$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$addFragmentEvents$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$b;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$addFragmentEvents$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$addFragmentEvents$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$b;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff92

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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;->setVerifyCodeViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->u0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->INSTANCE:Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

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

    const-class v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->p0()V

    return-void
.end method

.method public final p0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/f3j;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/f3j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/g3j;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/g3j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLogoffByPhoneBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/h3j;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h3j;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final t0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    return-object p0
.end method

.method public final u0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->t0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setVerifyType(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getAreaCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    const-class v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setVerifyCodeTag(Ljava/lang/String;)V

    return-void
.end method

.method public final v0()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$string;->user_title_logoff_success:I

    sget v3, Lcom/onyx/galaxy/note/R$string;->user_tip_logoff_thanks:I

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment$a;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/LogOffByPhoneFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
