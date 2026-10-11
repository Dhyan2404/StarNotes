.class public final Lcom/sunia/HTREnginev2/lmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/measurement/internal/zzaj;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzo;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lmp;->e:Lcom/google/android/gms/measurement/internal/zzo;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lmp;->f:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lmp;->f:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->h0()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lmp;->f:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->a(Lcom/google/android/gms/measurement/internal/zzic;)Lcom/google/android/gms/measurement/internal/zznv;

    move-result-object v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lmp;->e:Lcom/google/android/gms/measurement/internal/zzo;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/measurement/internal/zznv;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
