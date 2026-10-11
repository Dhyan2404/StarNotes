.class public final synthetic Lcom/sunia/HTREnginev2/xrp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/lgp;


# instance fields
.field public final a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field public final b:Lcom/sunia/HTREnginev2/pgp;

.field public final c:Lcom/google/android/gms/location/LocationCallback;

.field public final d:Lcom/sunia/HTREnginev2/lgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/sunia/HTREnginev2/pgp;Lcom/google/android/gms/location/LocationCallback;Lcom/sunia/HTREnginev2/lgp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xrp;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xrp;->b:Lcom/sunia/HTREnginev2/pgp;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xrp;->c:Lcom/google/android/gms/location/LocationCallback;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/xrp;->d:Lcom/sunia/HTREnginev2/lgp;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xrp;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xrp;->b:Lcom/sunia/HTREnginev2/pgp;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/xrp;->c:Lcom/google/android/gms/location/LocationCallback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xrp;->d:Lcom/sunia/HTREnginev2/lgp;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sunia/HTREnginev2/pgp;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/lgp;->zza()V

    :cond_0
    return-void
.end method
