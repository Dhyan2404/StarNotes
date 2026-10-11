.class public final Lcom/sunia/HTREnginev2/pmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzon;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pmp;->e:Lcom/google/android/gms/measurement/internal/zzon;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/pmp;->f:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->h0()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pmp;->e:Lcom/google/android/gms/measurement/internal/zzon;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pmp;->e:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pmp;->f:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zznv;->A(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/pmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/pmp;->e:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pmp;->f:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zznv;->s(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method
