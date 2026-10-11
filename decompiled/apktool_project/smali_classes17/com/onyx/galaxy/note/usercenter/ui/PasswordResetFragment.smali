.class public final Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u000f\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "r0",
        "m0",
        "n0",
        "p0",
        "q0",
        "s0",
        "Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;",
        "e1",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;",
        "passwordViewModel",
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
.field public d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

.field public final e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    return-void
.end method

.method public static final synthetic access$changeNewPasswordVisibility(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->p0()V

    return-void
.end method

.method public static final synthetic access$changeOldPasswordVisibility(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->q0()V

    return-void
.end method

.method public static final synthetic access$onPasswordReset(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->s0()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->o0(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final o0(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;Landroid/view/View;)V
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


# virtual methods
.method public final m0()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->getEvents()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$addFragmentEvents$1;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$a;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final n0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->backButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/yyk;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yyk;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff8f

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

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->setPasswordViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->n0()V

    return-void
.end method

.method public final p0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->isNewPasswordVisible()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->newPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showNewPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_visible:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->newPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showNewPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_invisible:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public final q0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->isConfirmPasswordVisible()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->confirmPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showConfirmPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_visible:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->confirmPasswordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->d1:Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentPasswordResetBinding;->showConfirmPasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_invisible:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public final r0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragmentArgs;->fromBundle(Landroid/os/Bundle;)Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragmentArgs;

    move-result-object v0

    const-string v1, "fromBundle(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragmentArgs;->getPurpose()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPurpose(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->setPurpose(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragmentArgs;->getSocialAccount()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSocialAccount(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->setSocialAccount(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragmentArgs;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->setToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final s0()V
    .locals 4

    const-string v0, "password_recover"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/usercenter/ui/PasswordResetFragment;->e1:Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/usercenter/viewmodel/PasswordResetViewModel;->getPurpose()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/onyx/galaxy/note/account/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_login_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_tip_password_reset_success:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void
.end method
