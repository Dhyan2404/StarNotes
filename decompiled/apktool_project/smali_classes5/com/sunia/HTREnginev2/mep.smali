.class public final Lcom/sunia/HTREnginev2/mep;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/oep;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/oep;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mep;->a:Lcom/sunia/HTREnginev2/oep;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mep;->a:Lcom/sunia/HTREnginev2/oep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
