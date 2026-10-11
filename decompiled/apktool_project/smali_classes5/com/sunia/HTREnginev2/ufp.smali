.class public final synthetic Lcom/sunia/HTREnginev2/ufp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field public final b:Lcom/sunia/HTREnginev2/pgp;

.field public final c:Lcom/google/android/gms/location/LocationCallback;

.field public final d:Lcom/sunia/HTREnginev2/lgp;

.field public final e:Lcom/google/android/gms/internal/location/zzba;

.field public final f:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/sunia/HTREnginev2/pgp;Lcom/google/android/gms/location/LocationCallback;Lcom/sunia/HTREnginev2/lgp;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ufp;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ufp;->b:Lcom/sunia/HTREnginev2/pgp;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ufp;->c:Lcom/google/android/gms/location/LocationCallback;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ufp;->d:Lcom/sunia/HTREnginev2/lgp;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/ufp;->e:Lcom/google/android/gms/internal/location/zzba;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/ufp;->f:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ufp;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ufp;->b:Lcom/sunia/HTREnginev2/pgp;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ufp;->c:Lcom/google/android/gms/location/LocationCallback;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/ufp;->d:Lcom/sunia/HTREnginev2/lgp;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/ufp;->e:Lcom/google/android/gms/internal/location/zzba;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/ufp;->f:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/location/zzaz;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/location/FusedLocationProviderClient;->d(Lcom/sunia/HTREnginev2/pgp;Lcom/google/android/gms/location/LocationCallback;Lcom/sunia/HTREnginev2/lgp;Lcom/google/android/gms/internal/location/zzba;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/location/zzaz;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
