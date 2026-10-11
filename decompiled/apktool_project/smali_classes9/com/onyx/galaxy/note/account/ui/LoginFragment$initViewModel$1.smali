.class final Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;
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
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "type",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Integer;)V"
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->invoke(Ljava/lang/Integer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 8

    const/4 v0, 0x2

    const-string v1, "binding"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 3
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$toggleShowAccount(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V

    .line 4
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5, v4}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$toggleShowPhone(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V

    .line 5
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v6, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    sget v7, Lcom/onyx/galaxy/note/R$string;->login_type_phone_title:I

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_5

    .line 7
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$toggleShowAccount(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V

    .line 8
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$toggleShowPhone(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V

    .line 9
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_4
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v6, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    sget v7, Lcom/onyx/galaxy/note/R$string;->login_type_email_title:I

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    .line 10
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    .line 11
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    .line 12
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_a

    .line 13
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5, v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$toggleShowPhone(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V

    .line 14
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5, v4}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$toggleShowAccount(Lcom/onyx/galaxy/note/account/ui/LoginFragment;Z)V

    .line 15
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->isShowPwd()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 16
    iget-object v5, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v5}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_9
    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->tvLoginType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v6, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    sget v7, Lcom/onyx/galaxy/note/R$string;->login_type_account_title:I

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_a
    :goto_4
    sget-object v5, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    invoke-static {v5, v4, v3, v0, v3}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 18
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_b
    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginPhone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_5

    .line 19
    :cond_c
    iget-object v2, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_d
    iget-object v1, v2, Lcom/onyx/galaxy/note/databinding/FragmentLoginBinding;->ivLoginPhone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "ivLoginPhone"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, v4, p1}, Lcom/onyx/galaxy/note/common/extension/BindingAdapterUtils;->setVisibility(Landroid/view/View;II)V

    .line 20
    :goto_5
    iget-object p1, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->updatePhoneLengthLimit()V

    .line 21
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/ui/LoginFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/account/ui/LoginFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/ui/LoginFragment;->access$getViewModel(Lcom/onyx/galaxy/note/account/ui/LoginFragment;)Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;

    move-result-object p0

    const-string p1, "view_galaxy_user_login_0001"

    invoke-static {p0, p1, v3, v0, v3}, Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;->reportViewOrClickEvent$default(Lcom/onyx/galaxy/note/account/viewmodel/LoginViewModel;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method
