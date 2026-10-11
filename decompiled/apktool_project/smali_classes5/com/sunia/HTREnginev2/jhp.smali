.class public final Lcom/sunia/HTREnginev2/jhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/anp;

.field public final synthetic f:Lcom/sunia/HTREnginev2/ehp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ehp;Lcom/sunia/HTREnginev2/anp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jhp;->e:Lcom/sunia/HTREnginev2/anp;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jhp;->f:Lcom/sunia/HTREnginev2/ehp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jhp;->e:Lcom/sunia/HTREnginev2/anp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/anp;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzab;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jhp;->e:Lcom/sunia/HTREnginev2/anp;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/anp;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/jhp;->f:Lcom/sunia/HTREnginev2/ehp;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/ehp;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/jhp;->f:Lcom/sunia/HTREnginev2/ehp;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/sunia/HTREnginev2/ehp;->c(Lcom/sunia/HTREnginev2/ehp;J)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jhp;->f:Lcom/sunia/HTREnginev2/ehp;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/ehp;->d()V

    :cond_1
    return-void
.end method
