.class public final Lcom/sunia/HTREnginev2/dep;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/gep;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/gep;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dep;->a:Lcom/sunia/HTREnginev2/gep;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbd(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dep;->a:Lcom/sunia/HTREnginev2/gep;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/gep;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dep;->a:Lcom/sunia/HTREnginev2/gep;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/gep;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbe(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/dep;->a:Lcom/sunia/HTREnginev2/gep;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
