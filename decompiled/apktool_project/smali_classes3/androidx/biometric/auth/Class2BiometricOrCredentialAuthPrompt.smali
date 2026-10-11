.class public Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt$Builder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/biometric/BiometricPrompt$PromptInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isConfirmationRequired()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->isConfirmationRequired()Z

    move-result p0

    return p0
.end method

.method public startAuthentication(Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/auth/AuthPrompt;
    .locals 1
    .param p1    # Landroidx/biometric/auth/AuthPromptHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/auth/AuthPromptCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0, p2}, Lcom/sunia/HTREnginev2/vi;->b(Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/auth/AuthPrompt;

    move-result-object p0

    return-object p0
.end method

.method public startAuthentication(Landroidx/biometric/auth/AuthPromptHost;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/auth/AuthPrompt;
    .locals 1
    .param p1    # Landroidx/biometric/auth/AuthPromptHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/biometric/auth/AuthPromptCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Landroidx/biometric/auth/Class2BiometricOrCredentialAuthPrompt;->a:Landroidx/biometric/BiometricPrompt$PromptInfo;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, p3}, Lcom/sunia/HTREnginev2/vi;->b(Landroidx/biometric/auth/AuthPromptHost;Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;Ljava/util/concurrent/Executor;Landroidx/biometric/auth/AuthPromptCallback;)Landroidx/biometric/auth/AuthPrompt;

    move-result-object p0

    return-object p0
.end method
