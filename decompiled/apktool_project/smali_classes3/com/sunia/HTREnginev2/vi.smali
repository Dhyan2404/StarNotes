.class public Lcom/sunia/HTREnginev2/vi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/vi$b;,
        Lcom/sunia/HTREnginev2/vi$c;,
        Lcom/sunia/HTREnginev2/vi$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/biometric/auth/AuthPromptHost;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/BiometricPrompt;
    .locals 2
    .param p0    # Landroidx/biometric/auth/AuthPromptHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/auth/AuthPromptCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/vi$c;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/vi$c;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-static {p2, v0}, Lcom/sunia/HTREnginev2/vi;->c(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/lifecycle/ViewModelProvider;)Lcom/sunia/HTREnginev2/vi$b;

    move-result-object p2

    new-instance v0, Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-static {p2, v1}, Lcom/sunia/HTREnginev2/vi;->c(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/lifecycle/ViewModelProvider;)Lcom/sunia/HTREnginev2/vi$b;

    move-result-object p2

    new-instance v0, Landroidx/biometric/BiometricPrompt;

    invoke-virtual {p0}, Landroidx/biometric/auth/AuthPromptHost;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    :goto_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AuthPromptHost must contain a FragmentActivity or an attached Fragment."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/auth/AuthPrompt;
    .locals 0
    .param p0    # Landroidx/biometric/auth/AuthPromptHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/biometric/auth/AuthPromptCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p3, p4}, Lcom/sunia/HTREnginev2/vi;->a(Landroidx/biometric/auth/AuthPromptHost;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/BiometricPrompt;

    move-result-object p0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    :goto_0
    new-instance p1, Lcom/sunia/HTREnginev2/vi$a;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/vi$a;-><init>(Landroidx/biometric/BiometricPrompt;)V

    return-object p1
.end method

.method public static c(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/lifecycle/ViewModelProvider;)Lcom/sunia/HTREnginev2/vi$b;
    .locals 2
    .param p0    # Landroidx/biometric/auth/AuthPromptCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/ViewModelProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/vi$b;

    const-class v1, Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Landroidx/biometric/BiometricViewModel;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/vi$b;-><init>(Landroidx/biometric/auth/AuthPromptCallback;Landroidx/biometric/BiometricViewModel;)V

    return-object v0
.end method
