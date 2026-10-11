.class public final Lcom/sunia/HTREnginev2/epp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic f:Lcom/google/android/gms/internal/measurement/zzdo;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/internal/measurement/zzdo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/epp;->e:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/epp;->f:Lcom/google/android/gms/internal/measurement/zzdo;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzk()Lcom/sunia/HTREnginev2/hlp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/hlp;->o()Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/xjp;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->H(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzk()Lcom/sunia/HTREnginev2/hlp;

    move-result-object v2

    iget-object v2, v2, Lcom/sunia/HTREnginev2/hlp;->h:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/epp;->f:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzls;->b(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/epp;->f:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sunia/HTREnginev2/epp;->e:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/epp;->e:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzb(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/xjp;->zzm()Lcom/google/android/gms/measurement/internal/zzjq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->H(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzk()Lcom/sunia/HTREnginev2/hlp;

    move-result-object v2

    iget-object v2, v2, Lcom/sunia/HTREnginev2/hlp;->h:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhd;->zza(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzls;->q(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/epp;->f:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/epp;->f:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    return-void

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/epp;->g:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/epp;->f:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/lang/String;)V

    throw v0
.end method
