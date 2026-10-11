.class public final Lcom/sunia/HTREnginev2/ggp;
.super Lcom/sunia/HTREnginev2/pgp;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic c:Lcom/google/android/gms/location/FusedLocationProviderClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ggp;->c:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ggp;->b:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/pgp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/location/zzaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/pgp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ggp;->c:Lcom/google/android/gms/location/FusedLocationProviderClient;

    new-instance v1, Lcom/sunia/HTREnginev2/igp;

    invoke-direct {v1, v0, p2}, Lcom/sunia/HTREnginev2/igp;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :try_start_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/ggp;->b:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/location/zzaz;->zzH(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/internal/location/zzai;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method
