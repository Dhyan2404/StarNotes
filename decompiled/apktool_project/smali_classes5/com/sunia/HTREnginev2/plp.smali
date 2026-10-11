.class public final Lcom/sunia/HTREnginev2/plp;
.super Lcom/sunia/HTREnginev2/xpp;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/auth/zzav;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;ILcom/google/android/gms/internal/auth/zzav;)V
    .locals 0

    iput-object p3, p0, Lcom/sunia/HTREnginev2/plp;->f:Lcom/google/android/gms/internal/auth/zzav;

    const/16 p1, 0x64a

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/xpp;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/zzau;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xpp;->e:Lcom/google/android/gms/internal/auth/zzas;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/plp;->f:Lcom/google/android/gms/internal/auth/zzav;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/auth/zzau;->zzf(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzav;)V

    return-void
.end method
