.class public final Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "onResume",
        "n0",
        "",
        "event",
        "m0",
        "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;",
        "d1",
        "Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;",
        "e1",
        "Lkotlin/Lazy;",
        "l0",
        "()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;",
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
.field public d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment$passwordViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment$passwordViewModel$2;-><init>(Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->e1:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$handleEvent(Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->m0(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    return-object p0
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/onyx/galaxy/note/account/event/VerifySuccessEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->reset()V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Lcom/onyx/galaxy/note/account/event/HidePasswordEvent;

    const-string v1, "passwordEdit"

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->hidePasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_invisible:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->moveCursorToEnd(Landroid/widget/EditText;)V

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lcom/onyx/galaxy/note/account/event/ShowPasswordEvent;

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_6
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->hidePasswordButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->icon_visible:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->moveCursorToEnd(Landroid/widget/EditText;)V

    goto :goto_3

    :cond_8
    instance-of p1, p1, Lcom/onyx/galaxy/note/account/event/CloseKeyBoardEvent;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_9
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->usernameEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v2, p0

    :goto_2
    iget-object p0, v2, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->passwordEdit:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final n0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment$initLayout$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment$initLayout$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->l0()Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;->setPasswordViewModel(Lcom/onyx/galaxy/note/usercenter/viewmodel/AccountVerifyPasswordViewModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->n0()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

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

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onResume()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyPasswordFragment;->d1:Lcom/onyx/galaxy/note/databinding/LayoutAccountVerifyPasswordBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
