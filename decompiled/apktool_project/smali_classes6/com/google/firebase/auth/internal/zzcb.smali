.class public final Lcom/google/firebase/auth/internal/zzcb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/firebase/auth/internal/zzcb;


# instance fields
.field public final a:Lcom/google/firebase/auth/internal/zzbi;

.field public final b:Lcom/google/firebase/auth/internal/zzau;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzcb;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzcb;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzcb;->c:Lcom/google/firebase/auth/internal/zzcb;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbi;->zzc()Lcom/google/firebase/auth/internal/zzbi;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/auth/internal/zzau;->zza()Lcom/google/firebase/auth/internal/zzau;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/internal/zzcb;-><init>(Lcom/google/firebase/auth/internal/zzbi;Lcom/google/firebase/auth/internal/zzau;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/zzbi;Lcom/google/firebase/auth/internal/zzau;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzcb;->a:Lcom/google/firebase/auth/internal/zzbi;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzcb;->b:Lcom/google/firebase/auth/internal/zzau;

    return-void
.end method

.method public static zzc()Lcom/google/firebase/auth/internal/zzcb;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/zzcb;->c:Lcom/google/firebase/auth/internal/zzcb;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzcb;->a:Lcom/google/firebase/auth/internal/zzbi;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzbi;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Landroid/content/Context;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzcb;->a:Lcom/google/firebase/auth/internal/zzbi;

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/internal/zzbi;->zza(Landroid/content/Context;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzcb;->a:Lcom/google/firebase/auth/internal/zzbi;

    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z
    .locals 0
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

    .line 4
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzcb;->b:Lcom/google/firebase/auth/internal/zzau;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z

    move-result p0

    return p0
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z
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
            ")Z"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzcb;->b:Lcom/google/firebase/auth/internal/zzau;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/auth/internal/zzau;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result p0

    return p0
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzcb;->a:Lcom/google/firebase/auth/internal/zzbi;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzbi;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
