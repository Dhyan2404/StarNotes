.class public final Lcom/sunia/HTREnginev2/ipp;
.super Lcom/sunia/HTREnginev2/ehp;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Lcom/sunia/HTREnginev2/anp;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ipp;->e:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/ehp;-><init>(Lcom/sunia/HTREnginev2/anp;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ipp;->e:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string v0, "Tasks have been queued for a long time"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void
.end method
