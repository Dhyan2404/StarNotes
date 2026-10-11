.class public final Lcom/google/firebase/auth/internal/zzau;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/google/firebase/auth/internal/zzau;


# instance fields
.field public a:Z

.field public b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzau;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromIntentExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzags;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzags;->zzc(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzags;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/auth/zzf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzags;)Lcom/google/firebase/auth/zzf;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/firebase/auth/internal/zzau;->c:Lcom/google/firebase/auth/internal/zzau;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/auth/internal/zzau;->a:Z

    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzau;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v0, Lcom/google/firebase/auth/internal/zzau;->c:Lcom/google/firebase/auth/internal/zzau;

    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzau;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    sget-object p0, Lcom/google/firebase/auth/internal/zzau;->c:Lcom/google/firebase/auth/internal/zzau;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzau;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V
    .locals 0

    const-string p0, "com.google.firebase.auth.internal.RECAPTCHA_TOKEN"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/firebase/auth/internal/zzau;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzau;->a(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/fhp;

    invoke-direct {p3, p0, p2, p4}, Lcom/sunia/HTREnginev2/fhp;-><init>(Lcom/google/firebase/auth/internal/zzau;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/zgp;

    invoke-direct {p3, p0, p2, p4}, Lcom/sunia/HTREnginev2/zgp;-><init>(Lcom/google/firebase/auth/internal/zzau;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzau;->a(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseUser;->linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/ihp;

    invoke-direct {p3, p0, p2, p4}, Lcom/sunia/HTREnginev2/ihp;-><init>(Lcom/google/firebase/auth/internal/zzau;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/dhp;

    invoke-direct {p3, p0, p2, p4}, Lcom/sunia/HTREnginev2/dhp;-><init>(Lcom/google/firebase/auth/internal/zzau;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static synthetic g(Lcom/google/firebase/auth/internal/zzau;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzau;->a(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseUser;->reauthenticateAndRetrieveData(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/thp;

    invoke-direct {p3, p0, p2, p4}, Lcom/sunia/HTREnginev2/thp;-><init>(Lcom/google/firebase/auth/internal/zzau;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/sunia/HTREnginev2/hhp;

    invoke-direct {p3, p0, p2, p4}, Lcom/sunia/HTREnginev2/hhp;-><init>(Lcom/google/firebase/auth/internal/zzau;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static zza()Lcom/google/firebase/auth/internal/zzau;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/auth/internal/zzau;->c:Lcom/google/firebase/auth/internal/zzau;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/firebase/auth/internal/zzau;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzau;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzau;->c:Lcom/google/firebase/auth/internal/zzau;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/firebase/auth/internal/zzau;->c:Lcom/google/firebase/auth/internal/zzau;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 1

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzau;->b:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzau;->a:Z

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/sunia/HTREnginev2/whp;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/whp;-><init>(Lcom/google/firebase/auth/internal/zzau;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/internal/zzau;->b(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzau;->a:Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result p0

    return p0
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")Z"
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzau;->a:Z

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/sunia/HTREnginev2/khp;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/khp;-><init>(Lcom/google/firebase/auth/internal/zzau;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/internal/zzau;->b(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzau;->a:Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
