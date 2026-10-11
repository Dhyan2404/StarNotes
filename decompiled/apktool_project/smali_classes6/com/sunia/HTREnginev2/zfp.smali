.class public final Lcom/sunia/HTREnginev2/zfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/internal/zzai;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzai;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zfp;->a:Lcom/google/firebase/auth/internal/zzai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/zfp;->a:Lcom/google/firebase/auth/internal/zzai;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzai;->zza(Lcom/google/firebase/auth/internal/zzai;)Lcom/google/firebase/auth/zzf;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    new-instance v0, Lcom/google/firebase/auth/internal/zzw;

    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/zzac;

    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzu;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zfp;->a:Lcom/google/firebase/auth/internal/zzai;

    invoke-static {p0}, Lcom/google/firebase/auth/internal/zzai;->zza(Lcom/google/firebase/auth/internal/zzai;)Lcom/google/firebase/auth/zzf;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/google/firebase/auth/internal/zzw;-><init>(Lcom/google/firebase/auth/internal/zzac;Lcom/google/firebase/auth/internal/zzu;Lcom/google/firebase/auth/zzf;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zfp;->a:Lcom/google/firebase/auth/internal/zzai;

    invoke-static {p0}, Lcom/google/firebase/auth/internal/zzai;->zza(Lcom/google/firebase/auth/internal/zzai;)Lcom/google/firebase/auth/zzf;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
