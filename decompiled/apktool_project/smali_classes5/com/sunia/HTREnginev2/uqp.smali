.class public final Lcom/sunia/HTREnginev2/uqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/zqp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zznv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zznv;->e(Lcom/google/android/gms/measurement/internal/zznv;)Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zznv;->e(Lcom/google/android/gms/measurement/internal/zznv;)Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p0

    const-string p1, "AppId not known when logging event"

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/uqp;->a:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/wqp;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/wqp;-><init>(Lcom/sunia/HTREnginev2/uqp;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
