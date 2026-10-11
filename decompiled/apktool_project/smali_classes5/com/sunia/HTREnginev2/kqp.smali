.class public abstract Lcom/sunia/HTREnginev2/kqp;
.super Lcom/sunia/HTREnginev2/lqp;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/lqp;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lqp;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->k0()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/kqp;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzal()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/kqp;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzam()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/kqp;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/kqp;->zzc()Z

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lqp;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->j0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/kqp;->a:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract zzc()Z
.end method
