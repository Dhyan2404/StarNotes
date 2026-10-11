.class public final Lcom/sunia/HTREnginev2/kmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzbf;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic g:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kmp;->e:Lcom/google/android/gms/measurement/internal/zzbf;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kmp;->f:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kmp;->e:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/kmp;->f:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kmp;->g:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kmp;->f:Lcom/google/android/gms/measurement/internal/zzo;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/measurement/internal/zzic;->i(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method
