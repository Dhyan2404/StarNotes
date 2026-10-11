.class public final Lcom/sunia/HTREnginev2/bkp;
.super Lcom/sunia/HTREnginev2/jop;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/zzax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;ILcom/google/android/gms/internal/auth/zzax;)V
    .locals 0

    iput-object p3, p0, Lcom/sunia/HTREnginev2/bkp;->e:Lcom/google/android/gms/internal/auth/zzax;

    const/16 p1, 0x647

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/jop;-><init>(ILcom/google/android/gms/auth/api/accounttransfer/zzk;)V

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

    new-instance v0, Lcom/sunia/HTREnginev2/tjp;

    invoke-direct {v0, p0, p0}, Lcom/sunia/HTREnginev2/tjp;-><init>(Lcom/sunia/HTREnginev2/bkp;Lcom/sunia/HTREnginev2/jop;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bkp;->e:Lcom/google/android/gms/internal/auth/zzax;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/auth/zzau;->zzg(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzax;)V

    return-void
.end method
