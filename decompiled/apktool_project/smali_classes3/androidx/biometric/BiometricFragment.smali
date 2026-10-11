.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricFragment$a;,
        Landroidx/biometric/BiometricFragment$b;,
        Landroidx/biometric/BiometricFragment$c;,
        Landroidx/biometric/BiometricFragment$d;,
        Landroidx/biometric/BiometricFragment$h;,
        Landroidx/biometric/BiometricFragment$g;,
        Landroidx/biometric/BiometricFragment$f;,
        Landroidx/biometric/BiometricFragment$e;
    }
.end annotation


# static fields
.field public static final e1:Ljava/lang/String; = "BiometricFragment"

.field public static final f1:Ljava/lang/String; = "host_activity"

.field public static final g1:Ljava/lang/String; = "has_fingerprint"

.field public static final h1:Ljava/lang/String; = "has_face"

.field public static final i1:Ljava/lang/String; = "has_iris"

.field public static final j1:I = 0x0

.field public static final k1:I = 0x1

.field public static final l1:I = 0x2

.field public static final m1:I = 0x3

.field public static final n1:Ljava/lang/String; = "androidx.biometric.FingerprintDialogFragment"

.field public static final o1:I = 0x1f4

.field public static final p1:I = 0x7d0

.field public static final q1:I = 0x258

.field public static final r1:I = 0x1


# instance fields
.field public c1:Landroidx/biometric/BiometricViewModel;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d1:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    return-void
.end method

.method private synthetic Q0(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->h1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->L(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    :cond_0
    return-void
.end method

.method private synthetic R0(Lcom/sunia/HTREnginev2/nr;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/nr;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/nr;->c()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->e1(ILjava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->I(Lcom/sunia/HTREnginev2/nr;)V

    :cond_0
    return-void
.end method

.method private synthetic S0(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->g1(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->I(Lcom/sunia/HTREnginev2/nr;)V

    :cond_0
    return-void
.end method

.method private synthetic T0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->f1()V

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->J(Z)V

    :cond_0
    return-void
.end method

.method private synthetic U0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->O0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->j1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->i1()V

    :goto_0
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->a0(Z)V

    :cond_1
    return-void
.end method

.method private synthetic V0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->y0(I)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->U(Z)V

    :cond_0
    return-void
.end method

.method private synthetic W0(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic X0(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->k()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic Y0()V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->k()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method private synthetic Z0(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->k()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method private synthetic a1()V
    .locals 1

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricViewModel;->V(Z)V

    return-void
.end method

.method public static c1(Landroid/os/Handler;Landroidx/biometric/BiometricViewModel;ZZZZ)Landroidx/biometric/BiometricFragment;
    .locals 2
    .param p0    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/biometric/BiometricViewModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object p0, v0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    iput-object p1, v0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const-string p0, "host_activity"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "has_fingerprint"

    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "has_face"

    invoke-virtual {v1, p0, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "has_iris"

    invoke-virtual {v1, p0, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static d1(Z)Landroidx/biometric/BiometricFragment;
    .locals 3

    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "host_activity"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic k0(Landroidx/biometric/BiometricFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->V0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l0(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->Q0(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public static synthetic m0(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->Z0(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public static synthetic n0(Landroidx/biometric/BiometricFragment;Lcom/sunia/HTREnginev2/nr;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->R0(Lcom/sunia/HTREnginev2/nr;)V

    return-void
.end method

.method public static synthetic o0(Landroidx/biometric/BiometricFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->U0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p0(Landroidx/biometric/BiometricFragment;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->S0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic q0(Landroidx/biometric/BiometricFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/biometric/BiometricFragment;->T0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r0(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->Y0()V

    return-void
.end method

.method public static synthetic s0(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Landroidx/biometric/BiometricFragment;->a1()V

    return-void
.end method

.method public static synthetic t0(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->W0(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic u0(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->X0(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static z0(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0xb

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A0()V
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->O(Landroidx/fragment/app/FragmentActivity;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->h()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/tr;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tr;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->f()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ur;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ur;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/vr;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vr;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->w()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/wr;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wr;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->E()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/xr;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xr;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->B()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/yr;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yr;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final B0()V
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->d0(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    :goto_0
    return-void
.end method

.method public final C0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/biometric/d;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d0

    :goto_0
    return p0
.end method

.method public D0()Landroidx/biometric/BiometricViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    return-object p0
.end method

.method public final E0(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->G()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricViewModel;->e0(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance p1, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;I)V

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->n1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    goto :goto_1

    :cond_1
    sget p1, Landroidx/biometric/R$string;->generic_error_user_canceled:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final F0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/srk;->a(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "has_face"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final G0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/srk;->b(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "has_fingerprint"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final H0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/srk;->c(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "has_iris"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final I0()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final J0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->m()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroidx/biometric/d;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final K0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final L0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "host_activity"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final M0()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/d;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->d()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/b;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/biometric/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricViewModel;->e0(Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final N0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->G0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->H0()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->O0()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricManager;->canAuthenticate(I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public O0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final P0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->K0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b1()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/kui;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget v0, Landroidx/biometric/R$string;->generic_error_no_keyguard:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->v()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->u()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->n()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {v0, v1, v2}, Landroidx/biometric/BiometricFragment$a;->a(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    sget v0, Landroidx/biometric/R$string;->generic_error_no_device_credential:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricViewModel;->R(Z)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->P0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->B0()V

    :cond_4
    const/high16 v1, 0x8080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public dismiss()V
    .locals 4

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->B0()V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->d0(Z)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->z()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/d;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->T(Z)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/BiometricFragment$g;

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$g;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public e1(ILjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroidx/biometric/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->P0()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/biometric/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->i()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->l1(ILjava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->r1(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    new-instance v1, Lcom/sunia/HTREnginev2/or;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/or;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->C0()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->V(Z)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    :goto_4
    return-void
.end method

.method public f1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroidx/biometric/R$string;->fingerprint_not_recognized:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->r1(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->m1()V

    return-void
.end method

.method public g1(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->P0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->r1(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public h1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->n1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public i1()V
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->t()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/biometric/BiometricFragment;->y0(I)V

    return-void
.end method

.method public j1()V
    .locals 0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->b1()V

    return-void
.end method

.method public k1(ILjava/lang/CharSequence;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->l1(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    return-void
.end method

.method public final l1(ILjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->z()Z

    move-result v0

    const-string v1, "BiometricFragment"

    if-eqz v0, :cond_0

    const-string p0, "Error not sent to client. User is confirming their device credential."

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->x()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Error not sent to client. Client is not awaiting a result."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->M(Z)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/rr;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/rr;-><init>(Landroidx/biometric/BiometricFragment;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m1()V
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BiometricFragment"

    const-string v0, "Failure not sent to client. Client is not awaiting a result."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pr;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pr;-><init>(Landroidx/biometric/BiometricFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->o1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->dismiss()V

    return-void
.end method

.method public final o1(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2
    .param p1    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BiometricFragment"

    const-string p1, "Success not sent to client. Client is not awaiting a result."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->M(Z)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/sr;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/sr;-><init>(Landroidx/biometric/BiometricFragment;Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/biometric/BiometricViewModel;->R(Z)V

    invoke-virtual {p0, p2}, Landroidx/biometric/BiometricFragment;->E0(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->L0()Z

    move-result p1

    invoke-static {p0, p1}, Landroidx/biometric/BiometricPrompt;->e(Landroidx/fragment/app/Fragment;Z)Landroidx/biometric/BiometricViewModel;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->A0()V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->d()I

    move-result v0

    invoke-static {v0}, Landroidx/biometric/b;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->Z(Z)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    new-instance v1, Landroidx/biometric/BiometricFragment$h;

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricFragment$h;-><init>(Landroidx/biometric/BiometricViewModel;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public final p1()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/BiometricFragment$b;->d(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->v()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->u()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->n()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$b;->h(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$b;->g(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v0, v3}, Landroidx/biometric/BiometricFragment$b;->e(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->t()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->s()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroidx/biometric/BiometricFragment$b;->f(Landroid/hardware/biometrics/BiometricPrompt$Builder;Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->y()Z

    move-result v2

    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$c;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v2}, Landroidx/biometric/BiometricViewModel;->d()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_4

    invoke-static {v0, v2}, Landroidx/biometric/BiometricFragment$d;->a(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroidx/biometric/b;->d(I)Z

    move-result v1

    invoke-static {v0, v1}, Landroidx/biometric/BiometricFragment$c;->b(Landroid/hardware/biometrics/BiometricPrompt$Builder;Z)V

    :goto_0
    invoke-static {v0}, Landroidx/biometric/BiometricFragment$b;->c(Landroid/hardware/biometrics/BiometricPrompt$Builder;)Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/biometric/BiometricFragment;->w0(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V

    return-void
.end method

.method public final q1()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    invoke-static {v1}, Landroidx/biometric/BiometricFragment;->z0(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v2}, Landroidx/biometric/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->V(Z)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v2}, Landroidx/biometric/d;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    new-instance v3, Lcom/sunia/HTREnginev2/qr;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/qr;-><init>(Landroidx/biometric/BiometricFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->L0()Z

    move-result v2

    invoke-static {v2}, Landroidx/biometric/FingerprintDialogFragment;->v0(Z)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "androidx.biometric.FingerprintDialogFragment"

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/biometric/BiometricViewModel;->N(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/biometric/BiometricFragment;->x0(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public final r1(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->Y(I)V

    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricViewModel;->W(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public s1()V
    .locals 2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->F()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "BiometricFragment"

    const-string v0, "Not showing biometric prompt. Context is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->d0(Z)V

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricViewModel;->M(Z)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->M0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->b1()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->P0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->q1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->p1()V

    :cond_3
    :goto_0
    return-void
.end method

.method public v0(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 2
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->c0(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    invoke-static {p1, p2}, Landroidx/biometric/b;->c(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-static {}, Landroidx/biometric/c;->a()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->S(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->S(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->O0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    sget p2, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->b0(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->b0(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->N0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/biometric/BiometricViewModel;->M(Z)V

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->b1()V

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p1}, Landroidx/biometric/BiometricViewModel;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/biometric/BiometricFragment;->d1:Landroid/os/Handler;

    new-instance p2, Landroidx/biometric/BiometricFragment$f;

    invoke-direct {p2, p0}, Landroidx/biometric/BiometricFragment$f;-><init>(Landroidx/biometric/BiometricFragment;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->s1()V

    :goto_2
    return-void
.end method

.method public w0(Landroid/hardware/biometrics/BiometricPrompt;Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/hardware/biometrics/BiometricPrompt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->m()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/c;->d(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v1}, Landroidx/biometric/BiometricViewModel;->j()Lcom/sunia/HTREnginev2/end;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/end;->b()Landroid/os/CancellationSignal;

    move-result-object v1

    new-instance v2, Landroidx/biometric/BiometricFragment$e;

    invoke-direct {v2}, Landroidx/biometric/BiometricFragment$e;-><init>()V

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v3}, Landroidx/biometric/BiometricViewModel;->e()Landroidx/biometric/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/biometric/a;->a()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v3

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1, v1, v2, v3}, Landroidx/biometric/BiometricFragment$b;->b(Landroid/hardware/biometrics/BiometricPrompt;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    :cond_0
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/biometric/BiometricFragment$b;->a(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "BiometricFragment"

    const-string v1, "Got NPE while authenticating with biometric prompt."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_1

    sget p1, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public x0(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->m()Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object v0

    invoke-static {v0}, Landroidx/biometric/c;->e(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->j()Lcom/sunia/HTREnginev2/end;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/end;->c()Landroidx/core/os/CancellationSignal;

    move-result-object v4

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->e()Landroidx/biometric/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/a;->b()Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BiometricFragment"

    const-string v1, "Got NPE while authenticating with fingerprint."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-static {p2, p1}, Landroidx/biometric/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/biometric/BiometricFragment;->k1(ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public y0(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0}, Landroidx/biometric/BiometricViewModel;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->P0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {v0, p1}, Landroidx/biometric/BiometricViewModel;->N(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroidx/biometric/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/biometric/BiometricFragment;->l1(ILjava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->c1:Landroidx/biometric/BiometricViewModel;

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->j()Lcom/sunia/HTREnginev2/end;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/end;->a()V

    return-void
.end method
