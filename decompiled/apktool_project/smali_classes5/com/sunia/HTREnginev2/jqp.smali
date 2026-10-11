.class public final Lcom/sunia/HTREnginev2/jqp;
.super Lcom/sunia/HTREnginev2/ehp;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zznq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznq;Lcom/sunia/HTREnginev2/anp;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jqp;->e:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/ehp;-><init>(Lcom/sunia/HTREnginev2/anp;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jqp;->e:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jqp;->e:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jqp;->e:Lcom/google/android/gms/measurement/internal/zznq;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lqp;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->l0()V

    return-void
.end method
