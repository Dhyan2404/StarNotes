.class final Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/account/ui/LoginFragment;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "isShow",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->getLoginType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    .line 5
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    .line 8
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 11
    :goto_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v3}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_7
    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tiePwdOrVerification:Lcom/onyx/android/sdk/theme/widgets/TintEditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 12
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$2;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v1, p0

    :goto_3
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->btnTogglePwdVisible:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
