.class public final Lcom/sunia/HTREnginev2/uop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/google/android/gms/internal/measurement/zzdo;

.field public final synthetic j:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/internal/measurement/zzdo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uop;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/uop;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/uop;->g:Lcom/google/android/gms/measurement/internal/zzo;

    iput-boolean p5, p0, Lcom/sunia/HTREnginev2/uop;->h:Z

    iput-object p6, p0, Lcom/sunia/HTREnginev2/uop;->i:Lcom/google/android/gms/internal/measurement/zzdo;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->b(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Failed to get user properties; not connected to service"

    iget-object v3, p0, Lcom/sunia/HTREnginev2/uop;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/uop;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uop;->i:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Landroid/os/Bundle;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/uop;->g:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/uop;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/uop;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sunia/HTREnginev2/uop;->h:Z

    iget-object v5, p0, Lcom/sunia/HTREnginev2/uop;->g:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->q(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uop;->i:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Failed to get user properties; remote exception"

    iget-object v4, p0, Lcom/sunia/HTREnginev2/uop;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uop;->i:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Landroid/os/Bundle;)V

    return-void

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/uop;->j:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uop;->i:Lcom/google/android/gms/internal/measurement/zzdo;

    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Landroid/os/Bundle;)V

    throw v1
.end method
