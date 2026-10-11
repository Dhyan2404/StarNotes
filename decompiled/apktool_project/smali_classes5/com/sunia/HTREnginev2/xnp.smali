.class public final Lcom/sunia/HTREnginev2/xnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/zqp;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xnp;->a:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "auto"

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xnp;->a:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/xnp;->a:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
