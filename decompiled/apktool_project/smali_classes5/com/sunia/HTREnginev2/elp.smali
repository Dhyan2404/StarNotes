.class public abstract Lcom/sunia/HTREnginev2/elp;
.super Lcom/sunia/HTREnginev2/xjp;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/xjp;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/d;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->g()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/elp;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzu()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/elp;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzv()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/elp;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/elp;->zzz()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/elp;->a:Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzw()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/elp;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/elp;->zzx()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->zzu:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/elp;->a:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zzx()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public abstract zzz()Z
.end method
