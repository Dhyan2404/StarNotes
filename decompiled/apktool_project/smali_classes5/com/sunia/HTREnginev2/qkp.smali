.class public final Lcom/sunia/HTREnginev2/qkp;
.super Lcom/sunia/HTREnginev2/jop;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;ILcom/google/android/gms/internal/auth/zzaq;)V
    .locals 0

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qkp;->e:Lcom/google/android/gms/internal/auth/zzaq;

    const/16 p1, 0x648

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

    new-instance v0, Lcom/sunia/HTREnginev2/ckp;

    invoke-direct {v0, p0, p0}, Lcom/sunia/HTREnginev2/ckp;-><init>(Lcom/sunia/HTREnginev2/qkp;Lcom/sunia/HTREnginev2/jop;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qkp;->e:Lcom/google/android/gms/internal/auth/zzaq;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/auth/zzau;->zzd(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzaq;)V

    return-void
.end method
