.class public final Lcom/sunia/HTREnginev2/dop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzax;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzax;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dop;->e:Lcom/google/android/gms/measurement/internal/zzax;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzk()Lcom/sunia/HTREnginev2/hlp;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dop;->e:Lcom/google/android/gms/measurement/internal/zzax;

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/hlp;->e(Lcom/google/android/gms/measurement/internal/zzax;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Setting DMA consent(FE)"

    iget-object v2, p0, Lcom/sunia/HTREnginev2/dop;->e:Lcom/google/android/gms/measurement/internal/zzax;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xjp;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzls;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xjp;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzls;->zzaj()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/xjp;->zzo()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/dop;->f:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dop;->e:Lcom/google/android/gms/measurement/internal/zzax;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzax;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
