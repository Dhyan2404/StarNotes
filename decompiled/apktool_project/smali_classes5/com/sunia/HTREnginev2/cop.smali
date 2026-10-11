.class public final Lcom/sunia/HTREnginev2/cop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzje;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Z

.field public final synthetic i:Lcom/google/android/gms/measurement/internal/zzje;

.field public final synthetic j:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JJZLcom/google/android/gms/measurement/internal/zzje;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/cop;->f:J

    iput-wide p5, p0, Lcom/sunia/HTREnginev2/cop;->g:J

    iput-boolean p7, p0, Lcom/sunia/HTREnginev2/cop;->h:Z

    iput-object p8, p0, Lcom/sunia/HTREnginev2/cop;->i:Lcom/google/android/gms/measurement/internal/zzje;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cop;->j:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cop;->j:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->j(Lcom/google/android/gms/measurement/internal/zzje;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cop;->j:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cop;->j:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-wide v1, p0, Lcom/sunia/HTREnginev2/cop;->f:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->f(JZ)V

    :cond_1
    iget-object v4, p0, Lcom/sunia/HTREnginev2/cop;->j:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/cop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    iget-wide v6, p0, Lcom/sunia/HTREnginev2/cop;->g:J

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/sunia/HTREnginev2/cop;->h:Z

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzjq;->m(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZZ)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cop;->j:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cop;->i:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzjq;->n(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzje;)V

    return-void
.end method
