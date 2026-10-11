.class public Landroidx/biometric/BiometricViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricViewModel$d;,
        Landroidx/biometric/BiometricViewModel$b;,
        Landroidx/biometric/BiometricViewModel$c;
    }
.end annotation


# instance fields
.field public J:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public O:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public Q:Z

.field public Z:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field public k:Landroidx/biometric/BiometricPrompt$PromptInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k0:I

.field public l:Landroidx/biometric/BiometricPrompt$CryptoObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Landroidx/biometric/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Lcom/sunia/HTREnginev2/end;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public q:I

.field public q0:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public t:Z

.field public t0:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sunia/HTREnginev2/nr;",
            ">;"
        }
    .end annotation
.end field

.field public z:Landroidx/lifecycle/MutableLiveData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/biometric/BiometricViewModel;->q:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/biometric/BiometricViewModel;->Q:Z

    iput v0, p0, Landroidx/biometric/BiometricViewModel;->k0:I

    return-void
.end method

.method public static f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->u:Z

    return p0
.end method

.method public B()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->Z:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->Z:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->Z:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public C()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->Q:Z

    return p0
.end method

.method public D()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->v:Z

    return p0
.end method

.method public E()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public F()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->r:Z

    return p0
.end method

.method public G()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->w:Z

    return p0
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public I(Lcom/sunia/HTREnginev2/nr;)V
    .locals 1
    .param p1    # Lcom/sunia/HTREnginev2/nr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public J(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public K(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public L(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 1
    .param p1    # Landroidx/biometric/BiometricPrompt$AuthenticationResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public M(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->s:Z

    return-void
.end method

.method public N(I)V
    .locals 0

    iput p1, p0, Landroidx/biometric/BiometricViewModel;->q:I

    return-void
.end method

.method public O(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public P(Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public Q(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->h:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public R(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->t:Z

    return-void
.end method

.method public S(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->l:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method

.method public T(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->u:Z

    return-void
.end method

.method public U(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->Z:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->Z:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->Z:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->Q:Z

    return-void
.end method

.method public W(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->t0:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->t0:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->t0:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public X(I)V
    .locals 0

    iput p1, p0, Landroidx/biometric/BiometricViewModel;->k0:I

    return-void
.end method

.method public Y(I)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->q0:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->q0:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->q0:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public Z(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->v:Z

    return-void
.end method

.method public a0(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/biometric/BiometricViewModel;->f0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    return-void
.end method

.method public b0(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->p:Ljava/lang/CharSequence;

    return-void
.end method

.method public c0(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 0
    .param p1    # Landroidx/biometric/BiometricPrompt$PromptInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->l:Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-static {v0, p0}, Landroidx/biometric/b;->c(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d0(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->r:Z

    return-void
.end method

.method public e()Landroidx/biometric/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->m:Landroidx/biometric/a;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/a;

    new-instance v1, Landroidx/biometric/BiometricViewModel$b;

    invoke-direct {v1, p0}, Landroidx/biometric/BiometricViewModel$b;-><init>(Landroidx/biometric/BiometricViewModel;)V

    invoke-direct {v0, v1}, Landroidx/biometric/a;-><init>(Landroidx/biometric/a$d;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->m:Landroidx/biometric/a;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->m:Landroidx/biometric/a;

    return-object p0
.end method

.method public e0(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/biometric/BiometricViewModel;->w:Z

    return-void
.end method

.method public f()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sunia/HTREnginev2/nr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getClientActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->j:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public h()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/biometric/BiometricPrompt$AuthenticationResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Landroidx/biometric/BiometricViewModel;->q:I

    return p0
.end method

.method public j()Lcom/sunia/HTREnginev2/end;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->n:Lcom/sunia/HTREnginev2/end;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/end;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/end;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->n:Lcom/sunia/HTREnginev2/end;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->n:Lcom/sunia/HTREnginev2/end;

    return-object p0
.end method

.method public k()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/BiometricViewModel$a;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricViewModel$a;-><init>(Landroidx/biometric/BiometricViewModel;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->i:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method public l()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->h:Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/biometric/BiometricViewModel$c;

    invoke-direct {p0}, Landroidx/biometric/BiometricViewModel$c;-><init>()V

    :goto_0
    return-object p0
.end method

.method public m()Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->l:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-object p0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public o()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->t0:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->t0:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->t0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Landroidx/biometric/BiometricViewModel;->k0:I

    return p0
.end method

.method public q()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->q0:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->q0:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->q0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public r()I
    .locals 1

    invoke-virtual {p0}, Landroidx/biometric/BiometricViewModel;->d()I

    move-result p0

    invoke-static {p0}, Landroidx/biometric/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/biometric/b;->d(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public s()Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->o:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/biometric/BiometricViewModel$d;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricViewModel$d;-><init>(Landroidx/biometric/BiometricViewModel;)V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->o:Landroid/content/DialogInterface$OnClickListener;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public u()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public v()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public w()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    :cond_0
    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->s:Z

    return p0
.end method

.method public y()Z
    .locals 0

    iget-object p0, p0, Landroidx/biometric/BiometricViewModel;->k:Landroidx/biometric/BiometricPrompt$PromptInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$PromptInfo;->isConfirmationRequired()Z

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

.method public z()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/biometric/BiometricViewModel;->t:Z

    return p0
.end method
