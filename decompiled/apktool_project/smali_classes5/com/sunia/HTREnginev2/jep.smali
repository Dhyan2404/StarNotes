.class public final Lcom/sunia/HTREnginev2/jep;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/kep;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/kep;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jep;->a:Lcom/sunia/HTREnginev2/kep;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbc(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jep;->a:Lcom/sunia/HTREnginev2/kep;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
