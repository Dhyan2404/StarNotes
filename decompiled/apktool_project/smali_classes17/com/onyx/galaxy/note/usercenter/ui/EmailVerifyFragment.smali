.class public final Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;",
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
        "v0",
        "o0",
        "p0",
        "t0",
        "w0",
        "Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;",
        "e1",
        "Lkotlin/Lazy;",
        "u0",
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
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

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

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$accountViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$accountViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-void
.end method

.method public static final synthetic access$doNextByPurpose(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->t0()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    return-object p0
.end method

.method public static final synthetic access$getVerifyCodeViewModel$p(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    return-object p0
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->r0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->q0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->s0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V
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

.method public static final r0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->sendVerifyCodeWithSubscribe(Landroid/app/Activity;)V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->checkVerifyResult()V

    return-void
.end method


# virtual methods
.method public final o0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeSendStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$a;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCodeCheckResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$addFragmentEvents$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$a;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff98

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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->setVerifyCodeViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

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

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureUnRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    const-class v1, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getSimpleName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/account/data/VerifyCodeBundle;->release(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroy()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->p0()V

    return-void
.end method

.method public final p0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v3, Lcom/sunia/HTREnginev2/bof;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/bof;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->verifyCodeButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/cof;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/cof;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentEmailVerifyBinding;->nextButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/dof;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dof;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final t0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getPurpose()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password_reset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->w0()V

    :cond_0
    return-void
.end method

.method public final u0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    return-object p0
.end method

.method public final v0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->u0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountCenterViewModel;->getCurrentAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragmentArgs;->fromBundle(Landroid/os/Bundle;)Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragmentArgs;->getPurpose()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getPurpose(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setPurpose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setVerifyType(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    const-class v0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->setVerifyCodeTag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w0()V
    .locals 4

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getPurpose()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getSocialAccount()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getVerifyCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragment;->f1:Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/VerifyCodeViewModel;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, v3, p0}, Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragmentDirections;->emailVerifyToPasswordReset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/usercenter/ui/EmailVerifyFragmentDirections$EmailVerifyToPasswordReset;

    move-result-object p0

    const-string v1, "emailVerifyToPasswordReset(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDirections;)V

    return-void
.end method
