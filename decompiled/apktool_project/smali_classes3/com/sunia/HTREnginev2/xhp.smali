.class public final Lcom/sunia/HTREnginev2/xhp;
.super Lcom/google/android/gms/internal/play_billing/zzx;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

.field public final b:Lcom/sunia/HTREnginev2/fjp;

.field public final c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzx;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xhp;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xhp;->b:Lcom/sunia/HTREnginev2/fjp;

    iput p3, p0, Lcom/sunia/HTREnginev2/xhp;->c:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xhp;->b:Lcom/sunia/HTREnginev2/fjp;

    sget-object v2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x47

    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v1

    iget v3, p0, Lcom/sunia/HTREnginev2/xhp;->c:I

    invoke-interface {p1, v1, v3}, Lcom/sunia/HTREnginev2/fjp;->f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xhp;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    invoke-interface {p0, v2, v0}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void

    :cond_0
    const-string v2, "BillingClient"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xhp;->b:Lcom/sunia/HTREnginev2/fjp;

    const/16 v2, 0x17

    invoke-static {v2, v1, v4}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v1

    iget v2, p0, Lcom/sunia/HTREnginev2/xhp;->c:I

    invoke-interface {p1, v1, v2}, Lcom/sunia/HTREnginev2/fjp;->f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xhp;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    invoke-interface {p0, v4, v0}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void

    :cond_1
    const-string v3, "CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v3, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;

    invoke-direct {v3, p1}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xhp;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    invoke-interface {p0, v4, v3}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void

    :catch_0
    move-exception p1

    const-string v3, "Error when parsing invalid alternative billing only reporting details. \n Exception: "

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/xhp;->b:Lcom/sunia/HTREnginev2/fjp;

    sget-object v2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x48

    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v1

    iget v3, p0, Lcom/sunia/HTREnginev2/xhp;->c:I

    invoke-interface {p1, v1, v3}, Lcom/sunia/HTREnginev2/fjp;->f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xhp;->a:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    invoke-interface {p0, v2, v0}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void
.end method
