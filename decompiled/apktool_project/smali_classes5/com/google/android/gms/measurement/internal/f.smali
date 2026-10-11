.class public final Lcom/google/android/gms/measurement/internal/f;
.super Lcom/sunia/HTREnginev2/ehp;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/sunia/HTREnginev2/anp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/ehp;-><init>(Lcom/sunia/HTREnginev2/anp;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->e:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->A(Lcom/google/android/gms/measurement/internal/zzjq;)Lcom/sunia/HTREnginev2/ehp;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/ehp;->b(J)V

    :cond_0
    return-void
.end method
