.class public final Lcom/sunia/HTREnginev2/dip;
.super Lcom/google/android/gms/internal/play_billing/zzah;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;

.field public final b:Lcom/sunia/HTREnginev2/fjp;

.field public final c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzah;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dip;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dip;->b:Lcom/sunia/HTREnginev2/fjp;

    iput p3, p0, Lcom/sunia/HTREnginev2/dip;->c:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xe

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/dip;->b:Lcom/sunia/HTREnginev2/fjp;

    sget-object v1, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x43

    invoke-static {v2, v0, v1}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    iget v2, p0, Lcom/sunia/HTREnginev2/dip;->c:I

    invoke-interface {p1, v0, v2}, Lcom/sunia/HTREnginev2/fjp;->f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dip;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;

    invoke-interface {p0, v1}, Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;->onAlternativeBillingOnlyAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    const-string v1, "BillingClient"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlternativeBillingOnlyAvailableAsync() failed. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dip;->b:Lcom/sunia/HTREnginev2/fjp;

    const/16 v2, 0x17

    invoke-static {v2, v0, p1}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    iget v2, p0, Lcom/sunia/HTREnginev2/dip;->c:I

    invoke-interface {v1, v0, v2}, Lcom/sunia/HTREnginev2/fjp;->f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    :cond_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/dip;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;

    invoke-interface {p0, p1}, Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;->onAlternativeBillingOnlyAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
