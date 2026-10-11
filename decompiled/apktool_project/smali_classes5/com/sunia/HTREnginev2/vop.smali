.class public final Lcom/sunia/HTREnginev2/vop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzon;

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Lcom/google/android/gms/measurement/internal/zzo;ZLcom/google/android/gms/measurement/internal/zzon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vop;->e:Lcom/google/android/gms/measurement/internal/zzo;

    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/vop;->f:Z

    iput-object p4, p0, Lcom/sunia/HTREnginev2/vop;->g:Lcom/google/android/gms/measurement/internal/zzon;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vop;->h:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vop;->h:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzls;->b(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vop;->h:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string v0, "Discarding data. Failed to set user property"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/vop;->e:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vop;->h:Lcom/google/android/gms/measurement/internal/zzls;

    iget-boolean v2, p0, Lcom/sunia/HTREnginev2/vop;->f:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sunia/HTREnginev2/vop;->g:Lcom/google/android/gms/measurement/internal/zzon;

    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/vop;->e:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzls;->c(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzo;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vop;->h:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzls;->q(Lcom/google/android/gms/measurement/internal/zzls;)V

    return-void
.end method
