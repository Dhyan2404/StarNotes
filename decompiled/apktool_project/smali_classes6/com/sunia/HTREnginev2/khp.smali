.class public final Lcom/sunia/HTREnginev2/khp;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/firebase/auth/FirebaseAuth;

.field public final d:Lcom/google/firebase/auth/FirebaseUser;

.field public final synthetic e:Lcom/google/firebase/auth/internal/zzau;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzau;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/khp;->e:Lcom/google/firebase/auth/internal/zzau;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/khp;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/khp;->c:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/khp;->d:Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/khp;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p2, "FederatedAuthReceiver"

    const-string v0, "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    const-string v1, "Activity that started the web operation is no longer alive; see logcat for details"

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzau;->c(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v0, "com.google.firebase.auth.internal.OPERATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/khp;->e:Lcom/google/firebase/auth/internal/zzau;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->c:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0, p2, v1, p0, p1}, Lcom/google/firebase/auth/internal/zzau;->e(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Landroid/content/Context;)V

    return-void

    :cond_1
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/khp;->e:Lcom/google/firebase/auth/internal/zzau;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->d:Lcom/google/firebase/auth/FirebaseUser;

    invoke-static {v0, p2, v1, p0, p1}, Lcom/google/firebase/auth/internal/zzau;->f(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;Landroid/content/Context;)V

    return-void

    :cond_2
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/khp;->e:Lcom/google/firebase/auth/internal/zzau;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->d:Lcom/google/firebase/auth/FirebaseUser;

    invoke-static {v0, p2, v1, p0, p1}, Lcom/google/firebase/auth/internal/zzau;->g(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;Landroid/content/Context;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WEB_CONTEXT_CANCELED:Unknown operation received ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzal;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_4
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzcc;->zzb(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzcc;->zza(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzau;->c(Landroid/content/Context;)V

    return-void

    :cond_5
    const-string v0, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/sunia/HTREnginev2/khp;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string p2, "WEB_CONTEXT_CANCELED"

    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzal;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzau;->c(Landroid/content/Context;)V

    :cond_6
    return-void
.end method
