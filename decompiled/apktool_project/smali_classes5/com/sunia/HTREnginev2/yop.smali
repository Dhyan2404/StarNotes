.class public final Lcom/sunia/HTREnginev2/yop;
.super Lcom/google/android/gms/internal/auth/zzan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/xpp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/xpp;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yop;->a:Lcom/sunia/HTREnginev2/xpp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzan;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yop;->a:Lcom/sunia/HTREnginev2/xpp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jop;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yop;->a:Lcom/sunia/HTREnginev2/xpp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jop;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
