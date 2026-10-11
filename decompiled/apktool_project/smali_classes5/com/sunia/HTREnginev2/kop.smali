.class public final Lcom/sunia/HTREnginev2/kop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzje;

.field public final synthetic f:J

.field public final synthetic g:Z

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/zzje;

.field public final synthetic i:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZLcom/google/android/gms/measurement/internal/zzje;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    iput-wide p3, p0, Lcom/sunia/HTREnginev2/kop;->f:J

    iput-boolean p5, p0, Lcom/sunia/HTREnginev2/kop;->g:Z

    iput-object p6, p0, Lcom/sunia/HTREnginev2/kop;->h:Lcom/google/android/gms/measurement/internal/zzje;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kop;->i:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kop;->i:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->j(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/kop;->i:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/kop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/kop;->f:J

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/sunia/HTREnginev2/kop;->g:Z

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzjq;->m(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;JZZ)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kop;->i:Lcom/google/android/gms/measurement/internal/zzjq;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kop;->e:Lcom/google/android/gms/measurement/internal/zzje;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kop;->h:Lcom/google/android/gms/measurement/internal/zzje;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzjq;->n(Lcom/google/android/gms/measurement/internal/zzjq;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzje;)V

    return-void
.end method
